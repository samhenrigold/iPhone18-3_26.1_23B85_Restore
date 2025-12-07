void *llvm::erase_if<std::vector<std::unique_ptr<mlir::Pass>>,std::logical_not<std::unique_ptr<mlir::Pass>>>(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    while (*v2)
    {
      if (++v2 == v3)
      {
        return result;
      }
    }

    if (v2 != v3)
    {
      v4 = v2 + 1;
      if (v2 + 1 != v3)
      {
        do
        {
          v5 = *v4;
          if (*v4)
          {
            *v4 = 0;
            result = *v2;
            *v2 = v5;
            if (result)
            {
              result = (*(*result + 8))(result);
            }

            ++v2;
          }

          ++v4;
        }

        while (v4 != v3);
        v3 = v1[1];
      }
    }
  }

  if (v2 != v3)
  {
    while (v3 != v2)
    {
      v6 = *--v3;
      result = v6;
      *v3 = 0;
      if (v6)
      {
        result = (*(*result + 8))(result);
      }
    }

    v1[1] = v2;
  }

  return result;
}

uint64_t mlir::detail::OpPassManagerImpl::canScheduleOn(void **a1, mlir::StringAttr *a2, void *a3)
{
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    if (!a1[1])
    {
      goto LABEL_15;
    }
  }

  else if (!*(a1 + 23))
  {
    goto LABEL_15;
  }

  if ((a1[4] & 1) == 0)
  {
    v6 = a3;
    if (v5 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    if (v5 >= 0)
    {
      v8 = *(a1 + 23);
    }

    else
    {
      v8 = a1[1];
    }

    mlir::OperationName::OperationName(&v17, v7, v8, a2);
    v9 = v17;
    if ((a1[4] & 1) == 0)
    {
      *(a1 + 32) = 1;
    }

    a1[3] = v9;
    a3 = v6;
  }

LABEL_15:
  if (a1[4])
  {
    return a1[3] == a3;
  }

  v11 = a3[2];
  if (v11 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3;
  }

  if (v11 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 0;
  }

  {
    mlir::detail::OpPassManagerImpl::canScheduleOn();
  }

  result = (*(*v12 + 32))(v12, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v13 = a1[5];
    v14 = a1[6];
    if (v13 == v14)
    {
      return 1;
    }

    else
    {
      v15 = v13 + 8;
      do
      {
        result = (*(**(v15 - 1) + 72))(*(v15 - 1), v12);
        if (result)
        {
          v16 = v15 == v14;
        }

        else
        {
          v16 = 1;
        }

        v15 += 8;
      }

      while (!v16);
    }
  }

  return result;
}

_BYTE *mlir::OpPassManager::printAsTextualPipeline(const char **this, llvm::raw_ostream *a2)
{
  v3 = *this;
  v4 = (*this)[23];
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((*this)[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    v5 = "any";
    v6 = 3;
    v7 = *(v3 + 5);
    v8 = *(v3 + 6);
    result = *(a2 + 4);
    if (*(a2 + 3) - result < 3uLL)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!*(v3 + 1))
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v4 >= 0)
  {
    v5 = *this;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = (*this)[23];
  }

  else
  {
    v6 = *(v3 + 1);
  }

  v7 = *(v3 + 5);
  v8 = *(v3 + 6);
  result = *(a2 + 4);
  if (v6 > *(a2 + 3) - result)
  {
LABEL_10:
    v10 = llvm::raw_ostream::write(a2, v5, v6);
    result = *(v10 + 4);
    if (*(v10 + 3) != result)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_15:
  if (v6)
  {
    v11 = v6;
    memcpy(result, v5, v6);
    result = (*(a2 + 4) + v11);
    *(a2 + 4) = result;
  }

  v10 = a2;
  if (*(a2 + 3) != result)
  {
LABEL_11:
    *result = 40;
    ++*(v10 + 4);
    if (v7 == v8)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = llvm::raw_ostream::write(v10, "(", 1uLL);
  if (v7 == v8)
  {
    goto LABEL_24;
  }

LABEL_19:
  v13 = *v7;
  v12 = v7 + 1;
  for (result = mlir::Pass::printAsTextualPipeline(v13, a2); v12 != v8; result = mlir::Pass::printAsTextualPipeline(v16, a2))
  {
    while (1)
    {
      v15 = *(a2 + 4);
      if (*(a2 + 3) == v15)
      {
        break;
      }

      *v15 = 44;
      ++*(a2 + 4);
      v14 = *v12++;
      result = mlir::Pass::printAsTextualPipeline(v14, a2);
      if (v12 == v8)
      {
        goto LABEL_24;
      }
    }

    llvm::raw_ostream::write(a2, ",", 1uLL);
    v16 = *v12++;
  }

LABEL_24:
  v17 = *(a2 + 4);
  if (*(a2 + 3) == v17)
  {

    return llvm::raw_ostream::write(a2, ")", 1uLL);
  }

  else
  {
    *v17 = 41;
    ++*(a2 + 4);
  }

  return result;
}

uint64_t mlir::OpPassManager::initialize(mlir::OpPassManager *this, mlir::MLIRContext *a2, unsigned int a3)
{
  v3 = *this;
  if (*(*this + 64) == a3)
  {
    return 1;
  }

  *(v3 + 64) = a3;
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v5 == v6)
  {
    return 1;
  }

  while (1)
  {
    v9 = *v5;
    v10 = *(*v5 + 8);
    {
      break;
    }

    v8 = v9;
    mlir::Pass::printAsTextualPipeline();
    v9 = v8;
    if (v10 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      goto LABEL_9;
    }

LABEL_5:
    if (((*(*v9 + 64))(v9, a2) & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (++v5 == v6)
    {
      return 1;
    }
  }

  if (v10 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
  {
    goto LABEL_5;
  }

LABEL_9:
  v11 = *(v9 + 352);
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = *(v9 + 344);
  v13 = 8 * v11;
  while ((mlir::OpPassManager::initialize(v12, a2, a3) & 1) != 0)
  {
    v12 = (v12 + 8);
    v13 -= 8;
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  return 0;
}

unint64_t mlir::OpPassManager::hash(mlir::OpPassManager *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 40);
  v2 = *(*this + 48);
  if (v1 != v2)
  {
    v3 = 0;
    v4 = 0uLL;
    while (1)
    {
      v6 = *v1;
      v7 = *(*v1 + 8);
      {
        if (v7 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
        {
          goto LABEL_7;
        }
      }

      else
      {
        mlir::OpPassManager::hash();
        v4 = 0uLL;
        if (v7 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
        {
LABEL_7:
          v8 = *(v6 + 352);
          if (v8)
          {
            v9 = *(v6 + 344);
            v10 = 8 * v8;
            do
            {
              v11 = mlir::OpPassManager::hash(v9);
              v21 = 0;
              v19 = 0u;
              v20 = 0u;
              v17 = 0u;
              v18 = 0u;
              v15 = 0u;
              v16 = 0u;
              v22 = 0xFF51AFD7ED558CCDLL;
              v13 = v3;
              v14 = v11;
              llvm::hashing::detail::hash_combine_recursive_helper::combine(&v13, 0, &v15, &v18);
              v9 = (v9 + 8);
              v10 -= 8;
            }

            while (v10);
            v4 = 0uLL;
          }

          goto LABEL_4;
        }
      }

      v21 = 0;
      v19 = v4;
      v20 = v4;
      v17 = v4;
      v18 = v4;
      v15 = v4;
      v16 = v4;
      v22 = 0xFF51AFD7ED558CCDLL;
      v13 = v3;
      v14 = v6;
      v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v13, 0, &v15, &v18);
      v4 = 0uLL;
      v3 = v5;
LABEL_4:
      if (++v1 == v2)
      {
        return v3;
      }
    }
  }

  return 0;
}

BOOL mlir::detail::OpToOpPassAdaptor::run(uint64_t a1, void ***a2, int32x2_t *a3, char a4, int a5)
{
  v100 = *MEMORY[0x1E69E9840];
  v84 = a1;
  v85 = a3;
  v83 = a2;
  v82 = a4;
  v81 = a5;
  v5 = a2[6];
  if (v5[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v80 = 257;
    mlir::Operation::emitOpError(a2, &v77, v90);
    if (v90[0])
    {
      LODWORD(threadid) = 3;
      v87 = "trying to schedule a pass on an unregistered operation";
      v88 = 54;
      v24 = &threadid;
      v25 = v91;
      if (v92 >= HIDWORD(v92))
      {
        if (v91 <= &threadid && &v91[24 * v92] > &threadid)
        {
          v72 = &threadid - v91;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v92 + 1, 24);
          v25 = v91;
          v24 = &v91[v72];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v92 + 1, 24);
          v24 = &threadid;
          v25 = v91;
        }
      }

      v26 = &v25[24 * v92];
      v27 = *v24;
      *(v26 + 2) = v24[2];
      *v26 = v27;
      LODWORD(v92) = v92 + 1;
    }

    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v90);
    if (v90[0])
    {
      mlir::InFlightDiagnostic::report(v90);
    }

    if (v99 == 1)
    {
      if (v98 != &v99)
      {
        free(v98);
      }

      v29 = v96;
      if (v96)
      {
        v30 = v97;
        v31 = v96;
        if (v97 != v96)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = v96;
        }

        v97 = v29;
        operator delete(v31);
      }

      v32 = v94;
      if (!v94)
      {
        goto LABEL_83;
      }

      v33 = v95;
      v34 = v94;
      if (v95 == v94)
      {
        goto LABEL_82;
      }

      do
      {
        v36 = *--v33;
        v35 = v36;
        *v33 = 0;
        if (v36)
        {
          MEMORY[0x1AC55A040](v35, 0x1000C8077774924);
        }
      }

      while (v33 != v32);
      goto LABEL_81;
    }
  }

  else
  {
    {
      v58 = v5;
      mlir::detail::OpToOpPassAdaptor::run();
      v5 = v58;
    }

    if ((*(*v5 + 4))(v5, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      v6 = v83;
      v7 = v84;
      if (*(*(v83 + 6) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v83 + 6);
      }

      v9 = (*(*v84 + 72))(v84, v8);
      if (v9)
      {
        v10 = v85;
        v11 = v85[9];
        v12 = *&v11 & 0xFFFFFFFFFFFFFFF8;
        if ((v11.i8[0] & 4) == 0 && v12)
        {
          do
          {
            v13 = *(v12 + 72);
            v12 = v13 & 0xFFFFFFFFFFFFFFF8;
          }

          while ((v13 & 4) == 0 && v12);
        }

        v76 = v12;
        threadid = llvm::get_threadid(v9);
        v87 = v84;
        v90[0] = &v83;
        v90[1] = &v81;
        v90[2] = &v85;
        v91 = &v82;
        v92 = &v76;
        v93[0] = &threadid;
        if (*(v84 + 120) == 1)
        {
          v14 = *(v84 + 64);
          if (v14 != *(v84 + 56))
          {
            free(v14);
            v6 = v83;
            v10 = v85;
            v12 = v76;
          }
        }

        *(v7 + 40) = v6 & 0xFFFFFFFFFFFFFFFBLL;
        *(v7 + 48) = v10;
        *(v7 + 56) = v7 + 88;
        *(v7 + 64) = v7 + 88;
        *(v7 + 72) = 2;
        *(v7 + 80) = 0;
        *(v7 + 104) = llvm::function_ref<llvm::LogicalResult ()(mlir::OpPassManager &,mlir::Operation *)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_0>;
        *(v7 + 112) = v90;
        *(v7 + 120) = 1;
        if (v12)
        {
          v15 = *v12;
          std::recursive_mutex::lock(*v12);
          v16 = *v12;
          v17 = *(*v12 + 72);
          v18 = *&v16[1].__m_.__opaque[8];
          while (v17 != v18)
          {
            v19 = *v17++;
            (*(*v19 + 32))(v19, v7, v6);
          }

          std::recursive_mutex::unlock(v15);
          v6 = v83;
        }

        v75 = 0;
        Context = mlir::Attribute::getContext((v6 + 24));
        v77 = &v84;
        v78 = &v82;
        v79 = &v75;
        v21 = v84;
        v89 = v83 & 0xFFFFFFFFFFFFFFF9;
        if (mlir::MLIRContext::hasActionHandler(Context))
        {
          mlir::MLIRContext::executeActionInternal<mlir::PassExecutionAction,mlir::Pass &>(Context, llvm::function_ref<void ()(void)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_1>, &v77, &v89, 1, v21);
          goto LABEL_101;
        }

        v22 = v84;
        v23 = *(v84 + 8);
        {
          if (v23 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
          {
LABEL_23:
            (*(**v77 + 56))();
LABEL_100:
            *v79 = (*(*v77 + 40) & 4) != 0;
LABEL_101:
            mlir::detail::NestedAnalysisMap::invalidate(v85, (v84 + 56));
            v61 = v75;
            if ((v75 & 1) == 0)
            {
              if (v82 == 1)
              {
                v62 = *(v84 + 8);
                {
                  v63 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id;
                  if (mlir::detail::PreservedAnalyses::isAll((v84 + 56)))
                  {
                    goto LABEL_105;
                  }
                }

                else
                {
                  mlir::OpPassManager::hash();
                  v63 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id;
                  if (mlir::detail::PreservedAnalyses::isAll((v84 + 56)))
                  {
LABEL_105:
                    v61 = v75;
                    v64 = v76;
                    if (!v76)
                    {
                      return (v61 & 1) == 0;
                    }

                    goto LABEL_109;
                  }
                }

                v61 = mlir::verify(v83, (v62 != v63)) ^ 1;
                v75 = v61 & 1;
                v64 = v76;
                if (!v76)
                {
                  return (v61 & 1) == 0;
                }

                goto LABEL_109;
              }

              v61 = 0;
            }

            v64 = v76;
            if (!v76)
            {
              return (v61 & 1) == 0;
            }

LABEL_109:
            v66 = v83;
            v65 = v84;
            v67 = *v64;
            std::recursive_mutex::lock(*v64);
            v69 = *(*v64)[1].__m_.__opaque;
            v68 = *&(*v64)[1].__m_.__opaque[8];
            if (v61)
            {
              while (v68 != v69)
              {
                v70 = *(v68 - 8);
                v68 -= 8;
                (*(*v70 + 48))(v70, v65, v66);
              }
            }

            else
            {
              while (v68 != v69)
              {
                v71 = *(v68 - 8);
                v68 -= 8;
                (*(*v71 + 40))(v71, v65, v66);
              }
            }

            std::recursive_mutex::unlock(v67);
            v61 = v75;
            return (v61 & 1) == 0;
          }
        }

        else
        {
          mlir::OpPassManager::hash();
          if (v23 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
          {
            goto LABEL_23;
          }
        }

        v59 = *v78;
        v60 = mlir::Attribute::getContext(((*(v22 + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
        if (mlir::MLIRContext::isMultithreadingEnabled(v60))
        {
          mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(v22, v59);
        }

        mlir::detail::OpToOpPassAdaptor::runOnOperationImpl(v22, v59);
        goto LABEL_100;
      }

      v80 = 257;
      mlir::Operation::emitOpError(v83, &v77, v90);
      if (v90[0])
      {
        LODWORD(threadid) = 3;
        v87 = "trying to schedule a pass on an unsupported operation";
        v88 = 53;
        p_threadid = &threadid;
        v48 = v91;
        if (v92 >= HIDWORD(v92))
        {
          if (v91 <= &threadid && &v91[24 * v92] > &threadid)
          {
            v74 = &threadid - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v92 + 1, 24);
            v48 = v91;
            p_threadid = &v91[v74];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v92 + 1, 24);
            p_threadid = &threadid;
            v48 = v91;
          }
        }

        v49 = &v48[24 * v92];
        v50 = *p_threadid;
        *(v49 + 2) = p_threadid[2];
        *v49 = v50;
        LODWORD(v92) = v92 + 1;
      }

      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v90);
      if (v90[0])
      {
        mlir::InFlightDiagnostic::report(v90);
      }

      if (v99 == 1)
      {
        if (v98 != &v99)
        {
          free(v98);
        }

        v51 = v96;
        if (v96)
        {
          v52 = v97;
          v53 = v96;
          if (v97 != v96)
          {
            do
            {
              v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
            }

            while (v52 != v51);
            v53 = v96;
          }

          v97 = v51;
          operator delete(v53);
        }

        v32 = v94;
        if (!v94)
        {
          goto LABEL_83;
        }

        v54 = v95;
        v34 = v94;
        if (v95 == v94)
        {
LABEL_82:
          v95 = v32;
          operator delete(v34);
LABEL_83:
          if (v91 != v93)
          {
            free(v91);
          }

          return v28;
        }

        do
        {
          v56 = *--v54;
          v55 = v56;
          *v54 = 0;
          if (v56)
          {
            MEMORY[0x1AC55A040](v55, 0x1000C8077774924);
          }
        }

        while (v54 != v32);
LABEL_81:
        v34 = v94;
        goto LABEL_82;
      }
    }

    else
    {
      v80 = 257;
      mlir::Operation::emitOpError(v83, &v77, v90);
      if (v90[0])
      {
        LODWORD(threadid) = 3;
        v87 = "trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'";
        v88 = 75;
        v37 = &threadid;
        v38 = v91;
        if (v92 >= HIDWORD(v92))
        {
          if (v91 <= &threadid && &v91[24 * v92] > &threadid)
          {
            v73 = &threadid - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v92 + 1, 24);
            v38 = v91;
            v37 = &v91[v73];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v92 + 1, 24);
            v37 = &threadid;
            v38 = v91;
          }
        }

        v39 = &v38[24 * v92];
        v40 = *v37;
        *(v39 + 2) = v37[2];
        *v39 = v40;
        LODWORD(v92) = v92 + 1;
      }

      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v90);
      if (v90[0])
      {
        mlir::InFlightDiagnostic::report(v90);
      }

      if (v99 == 1)
      {
        if (v98 != &v99)
        {
          free(v98);
        }

        v41 = v96;
        if (v96)
        {
          v42 = v97;
          v43 = v96;
          if (v97 != v96)
          {
            do
            {
              v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
            }

            while (v42 != v41);
            v43 = v96;
          }

          v97 = v41;
          operator delete(v43);
        }

        v32 = v94;
        if (!v94)
        {
          goto LABEL_83;
        }

        v44 = v95;
        v34 = v94;
        if (v95 == v94)
        {
          goto LABEL_82;
        }

        do
        {
          v46 = *--v44;
          v45 = v46;
          *v44 = 0;
          if (v46)
          {
            MEMORY[0x1AC55A040](v45, 0x1000C8077774924);
          }
        }

        while (v44 != v32);
        goto LABEL_81;
      }
    }
  }

  return v28;
}

BOOL mlir::detail::PreservedAnalyses::isAll(const void ***this)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::detail::PreservedAnalyses::isAll();
    v2 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
LABEL_3:
      v3 = llvm::SmallPtrSetImplBase::doFind(this, v2);
      v4 = *this;
      v5 = this[1];
      if (!v3)
      {
        v6 = 16;
        if (v5 == v4)
        {
          v6 = 20;
        }

        v3 = &v5[*(this + v6)];
      }

      goto LABEL_14;
    }
  }

  v7 = *(this + 5);
  if (v7)
  {
    v8 = 8 * v7;
    while (*v3 != v2)
    {
      ++v3;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v3 = &v4[v7];
  }

  v5 = v4;
LABEL_14:
  v9 = v5 == v4;
  v10 = 16;
  if (v9)
  {
    v10 = 20;
  }

  return v3 != &v5[*(this + v10)];
}

uint64_t mlir::detail::OpToOpPassAdaptor::runPipeline(uint64_t *a1, uint64_t a2, mlir::detail::NestedAnalysisMap *a3, char a4, int a5, std::recursive_mutex **a6, uint64_t a7)
{
  v8 = a6;
  v44 = a3;
  if (!a6)
  {
    goto LABEL_19;
  }

  Context = mlir::Attribute::getContext((a2 + 24));
  v15 = *a1;
  v16 = *(*a1 + 23);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v42 = a1;
    if (!*(*a1 + 23))
    {
      goto LABEL_16;
    }

LABEL_6:
    if ((*(v15 + 32) & 1) == 0)
    {
      if (v16 >= 0)
      {
        v17 = *a1;
      }

      else
      {
        v17 = *v15;
      }

      if (v16 >= 0)
      {
        v18 = *(*a1 + 23);
      }

      else
      {
        v18 = *(v15 + 8);
      }

      mlir::OperationName::OperationName(&v45, v17, v18, Context);
      v19 = v45;
      if ((*(v15 + 32) & 1) == 0)
      {
        *(v15 + 32) = 1;
      }

      *(v15 + 24) = v19;
    }

    goto LABEL_16;
  }

  v42 = a1;
  if (*(v15 + 8))
  {
    goto LABEL_6;
  }

LABEL_16:
  v20 = *(v15 + 24);
  v21 = *(v15 + 32);
  v22 = *a6;
  std::recursive_mutex::lock(*a6);
  v24 = *(*a6)[1].__m_.__opaque;
  v23 = *&(*a6)[1].__m_.__opaque[8];
  while (v24 != v23)
  {
    v25 = *v24++;
    (*(*v25 + 16))(v25, v20, v21, a7);
  }

  std::recursive_mutex::unlock(v22);
  a1 = v42;
  v8 = a6;
LABEL_19:
  v26 = *(*a1 + 40);
  v27 = *(*a1 + 48);
  if (v26 == v27)
  {
LABEL_22:
    if (!v8)
    {
LABEL_41:
      v31 = 1;
      goto LABEL_42;
    }

    v28 = mlir::Attribute::getContext((a2 + 24));
    v29 = *a1;
    v30 = *(*a1 + 23);
    if (v30 < 0)
    {
      if (!*(v29 + 8))
      {
LABEL_38:
        v35 = *(v29 + 24);
        v36 = *(v29 + 32);
        v37 = *v8;
        std::recursive_mutex::lock(*v8);
        v39 = *(*v8)[1].__m_.__opaque;
        for (i = *&(*v8)[1].__m_.__opaque[8]; i != v39; i -= 8)
        {
          v40 = *(i - 8);
          (*(*v40 + 24))(v40, v35, v36, a7);
        }

        std::recursive_mutex::unlock(v37);
        goto LABEL_41;
      }
    }

    else if (!*(*a1 + 23))
    {
      goto LABEL_38;
    }

    if ((*(v29 + 32) & 1) == 0)
    {
      if (v30 >= 0)
      {
        v32 = *a1;
      }

      else
      {
        v32 = *v29;
      }

      if (v30 >= 0)
      {
        v33 = *(*a1 + 23);
      }

      else
      {
        v33 = *(v29 + 8);
      }

      mlir::OperationName::OperationName(&v45, v32, v33, v28);
      v34 = v45;
      if ((*(v29 + 32) & 1) == 0)
      {
        *(v29 + 32) = 1;
      }

      *(v29 + 24) = v34;
    }

    goto LABEL_38;
  }

  while (mlir::detail::OpToOpPassAdaptor::run(*v26, a2, a3, a4, a5))
  {
    if (++v26 == v27)
    {
      goto LABEL_22;
    }
  }

  v31 = 0;
LABEL_42:
  mlir::AnalysisManager::clear(&v44);
  return v31;
}

uint64_t mlir::detail::OpToOpPassAdaptor::OpToOpPassAdaptor(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  {
    v4 = a2;
    mlir::Pass::printAsTextualPipeline();
    a2 = v4;
    v2 = a1;
  }

  *(v2 + 8) = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0;
  *(v2 + 184) = v2 + 200;
  *(v2 + 192) = 0x400000000;
  *(v2 + 232) = v2 + 248;
  *(v2 + 240) = 0x400000000;
  *(v2 + 280) = 0;
  *(v2 + 288) = 0;
  *(v2 + 296) = 0x1000000000;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *v2 = &unk_1F1A020F8;
  *(v2 + 336) = 0;
  *(v2 + 344) = v2 + 360;
  *(v2 + 352) = 0x100000000;
  *(v2 + 368) = v2 + 384;
  *(v2 + 376) = 0x800000000;
  llvm::SmallVectorImpl<mlir::OpPassManager>::emplace_back<mlir::OpPassManager>((v2 + 344), a2);
  return v2;
}

uint64_t *llvm::SmallVectorImpl<mlir::OpPassManager>::emplace_back<mlir::OpPassManager>(uint64_t *a1, uint64_t *a2)
{
  v3 = *(a1 + 2);
  if (v3 >= *(a1 + 3))
  {

    return llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::growAndEmplaceBack<mlir::OpPassManager>(a1, a2);
  }

  else
  {
    v4 = *a1;
    *(*a1 + 8 * v3) = 0;
    v5 = *a2;
    *a2 = 0;
    v6 = *(v4 + 8 * v3);
    *(v4 + 8 * v3) = v5;
    if (v6)
    {
      v7 = *(v6 + 40);
      if (v7)
      {
        v8 = *(v6 + 48);
        v9 = *(v6 + 40);
        if (v8 != v7)
        {
          do
          {
            v11 = *--v8;
            v10 = v11;
            *v8 = 0;
            if (v11)
            {
              (*(*v10 + 8))(v10);
            }
          }

          while (v8 != v7);
          v9 = *(v6 + 40);
        }

        *(v6 + 48) = v7;
        operator delete(v9);
      }

      if (*(v6 + 23) < 0)
      {
        operator delete(*v6);
      }

      MEMORY[0x1AC55A070](v6, 0x1032C402C5CA452);
      v3 = *(a1 + 2);
      v4 = *a1;
    }

    v12 = v3 + 1;
    *(a1 + 2) = v12;
    return (v4 + 8 * v12 - 8);
  }
}

uint64_t mlir::detail::OpToOpPassAdaptor::getDependentDialects(uint64_t result, uint64_t a2)
{
  v2 = *(result + 352);
  if (v2)
  {
    v4 = *(result + 344);
    v5 = v4 + 8 * v2;
    v6 = *(*v4 + 40);
    i = *(*v4 + 48);
    if (v6 != i)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v4 += 8;
      if (v4 == v5)
      {
        break;
      }

      v6 = *(*v4 + 40);
      for (i = *(*v4 + 48); v6 != i; result = (*(*v8 + 24))(v8, a2))
      {
LABEL_5:
        v8 = *v6++;
      }
    }
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::OpPassManager>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *result;
    v4 = (*result + 8 * v2);
    do
    {
      v6 = *--v4;
      v5 = v6;
      *v4 = 0;
      if (v6)
      {
        v7 = *(v5 + 40);
        if (v7)
        {
          v8 = *(v5 + 48);
          v9 = *(v5 + 40);
          if (v8 != v7)
          {
            do
            {
              v11 = *--v8;
              v10 = v11;
              *v8 = 0;
              if (v11)
              {
                (*(*v10 + 8))(v10);
              }
            }

            while (v8 != v7);
            v9 = *(v5 + 40);
          }

          *(v5 + 48) = v7;
          operator delete(v9);
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        result = MEMORY[0x1AC55A070](v5, 0x1032C402C5CA452);
      }
    }

    while (v4 != v3);
  }

  *(v1 + 8) = 0;
  return result;
}

void mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(mlir::detail::OpToOpPassAdaptor *this, char a2)
{
  v104 = *MEMORY[0x1E69E9840];
  v98 = a2;
  v3 = *(this + 5);
  v4 = *(this + 6);
  v97 = v4;
  Context = mlir::Attribute::getContext(((v3 & 0xFFFFFFFFFFFFFFF8) + 24));
  v81 = this;
  v82 = Context;
  if (*(this + 94))
  {
    v6 = *(this + 46);
    v7 = *(v6 + 2);
    if (v7 == *(this + 88))
    {
      if (!v7)
      {
LABEL_9:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v12 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
        v13 = *(v12 + 44);
        if ((v13 & 0x7FFFFF) == 0)
        {
          v15 = 0;
          v14 = 0;
          threadid = llvm::get_threadid(Context);
          v88 = this;
          v60 = *(v4 + 72);
          v59 = v60 & 0xFFFFFFFFFFFFFFF8;
          if ((v60 & 4) != 0)
          {
            goto LABEL_113;
          }

LABEL_110:
          if (v59)
          {
            do
            {
              v61 = *(v59 + 72);
              v59 = v61 & 0xFFFFFFFFFFFFFFF8;
            }

            while ((v61 & 4) == 0 && v59);
          }

LABEL_113:
          v85 = 0;
          v86 = v59;
          v62 = *(v81 + 94);
          __p = 0;
          v84 = 0;
          if (v62)
          {
            operator new();
          }

          *&v89 = &__p;
          *(&v89 + 1) = v81;
          v90 = &v98;
          v91 = &v86;
          p_threadid = &threadid;
          v101 = v14;
          v63 = -1431655765 * ((v15 - v14) >> 3);
          v100 = v63;
          if (v63)
          {
            if (mlir::MLIRContext::isMultithreadingEnabled(v82) && v63 != 1)
            {
              mlir::ParallelDiagnosticHandler::ParallelDiagnosticHandler(v99, v82);
            }

            if (v14 != v15)
            {
              p_p = &__p;
              v65 = &v98;
              v66 = &v86;
              v67 = &threadid;
              v68 = v14;
              while (1)
              {
                v69 = *(&v89 + 1);
                v70 = *p_p;
                v71 = p_p[1];
                if (v70 == v71)
                {
                  v73 = v70;
                }

                else
                {
                  do
                  {
                    v72 = 0;
                    atomic_compare_exchange_strong(v70, &v72, 1u);
                    if (!v72)
                    {
                      goto LABEL_125;
                    }

                    ++v70;
                  }

                  while (v70 != v71);
                  LODWORD(v70) = v71;
LABEL_125:
                  v73 = v70;
                  v65 = v90;
                  v66 = v91;
                  v70 = *v89;
                  v67 = p_threadid;
                }

                v74 = (v73 - v70);
                v75 = (*(*(v69 + 368) + 24 * v74) + 8 * *v68);
                v76 = mlir::detail::OpToOpPassAdaptor::runPipeline(v75, *(v68 + 1), *(v68 + 2), *v65, *(*v75 + 64), *v66, v67);
                p_p = v89;
                atomic_store(0, (*v89 + v74));
                if ((v76 & 1) == 0)
                {
                  break;
                }

                v68 = v101 + 6;
                v101 = v68;
                if (v68 == v15)
                {
                  goto LABEL_131;
                }
              }

              *(v81 + 5) |= 4uLL;
            }
          }

LABEL_131:
          if (__p)
          {
            v84 = __p;
            operator delete(__p);
          }

          llvm::deallocate_buffer(v94, (16 * v96));
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = (((v12 + 16 * ((v13 >> 23) & 1) + ((v13 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v12 + 40));
        v77 = v17 + 24 * (v13 & 0x7FFFFF);
        while (1)
        {
          mlir::Region::OpIterator::OpIterator(&v102, v17, 0);
          v78 = v17;
          mlir::Region::OpIterator::OpIterator(&v91, v17, 1);
          v18 = v103;
          v90 = v103;
          v89 = v102;
          v19 = v93;
          v79 = v93;
          if (v103 != v93)
          {
            break;
          }

LABEL_11:
          v17 = (v78 + 24);
          if (v78 + 24 == v77)
          {
            v57 = v97;
            threadid = llvm::get_threadid(v18);
            v88 = v81;
            v58 = *(v57 + 72);
            v59 = v58 & 0xFFFFFFFFFFFFFFF8;
            if ((v58 & 4) != 0)
            {
              goto LABEL_113;
            }

            goto LABEL_110;
          }
        }

LABEL_16:
        ZinIrHalH13g::~ZinIrHalH13g(v18);
        v21 = v20;
        v22 = *(v20 + 6);
        v23 = v96;
        if (!v96)
        {
          goto LABEL_89;
        }

        v24 = ((v22 >> 4) ^ (v22 >> 9)) & (v96 - 1);
        v25 = v94 + 16 * v24;
        v26 = *v25;
        if (v22 == *v25)
        {
          goto LABEL_70;
        }

        v27 = 0;
        v28 = 1;
        while (v26 != -4096)
        {
          if (v27)
          {
            v29 = 0;
          }

          else
          {
            v29 = v26 == -8192;
          }

          if (v29)
          {
            v27 = v25;
          }

          v30 = v24 + v28++;
          v24 = v30 & (v96 - 1);
          v25 = v94 + 16 * v24;
          v26 = *v25;
          if (v22 == *v25)
          {
            goto LABEL_70;
          }
        }

        if (v27)
        {
          v25 = v27;
        }

        if (4 * v95 + 4 < 3 * v96)
        {
          if (v96 + ~v95 - HIDWORD(v95) > v96 >> 3)
          {
            LODWORD(v95) = v95 + 1;
            if (*v25 == -4096)
            {
LABEL_31:
              *v25 = v22;
              v25[8] = 0;
              v25[12] = 0;
              v31 = *(v81 + 43);
              v32 = *(v81 + 88);
              v33 = &v31[v32];
              if (!v32)
              {
                goto LABEL_61;
              }

              v80 = v15;
              v34 = v16;
              v35 = *(v21 + 6);
              while (1)
              {
                v36 = *v31;
                v37 = *(*v31 + 23);
                if (v37 < 0)
                {
                  if (!*(v36 + 8))
                  {
                    goto LABEL_49;
                  }
                }

                else if (!*(*v31 + 23))
                {
                  goto LABEL_49;
                }

                if ((*(v36 + 32) & 1) == 0)
                {
                  if (v37 >= 0)
                  {
                    v38 = *v31;
                  }

                  else
                  {
                    v38 = *v36;
                  }

                  if (v37 >= 0)
                  {
                    v39 = *(*v31 + 23);
                  }

                  else
                  {
                    v39 = *(v36 + 8);
                  }

                  mlir::OperationName::OperationName(&__p, v38, v39, v82);
                  if ((*(v36 + 32) & 1) == 0)
                  {
                    *(v36 + 32) = 1;
                  }

                  *(v36 + 24) = __p;
                }

LABEL_49:
                if (*(v36 + 32))
                {
                  if (*(v36 + 24) == v35)
                  {
                    goto LABEL_60;
                  }
                }

                else
                {
                  v40 = *(v35 + 16);
                  if (v40 == &mlir::detail::TypeIDResolver<void,void>::id)
                  {
                    v41 = 0;
                  }

                  else
                  {
                    v41 = v35;
                  }

                  if (v40 != &mlir::detail::TypeIDResolver<void,void>::id)
                  {
                    {
                      mlir::detail::OpPassManagerImpl::canScheduleOn();
                    }

                    if ((*(*v41 + 32))(v41, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
                    {
                      v43 = *(v36 + 40);
                      v42 = *(v36 + 48);
                      if (v43 == v42)
                      {
LABEL_60:
                        v16 = v34;
                        v15 = v80;
LABEL_61:
                        if (v31 == v33)
                        {
                          v19 = v79;
LABEL_70:
                          if (v25[12] == 1)
                          {
                            goto LABEL_71;
                          }

                          goto LABEL_15;
                        }

                        if (v31)
                        {
                          v44 = *(v81 + 43);
                          v19 = v79;
                          if ((v25[12] & 1) == 0)
                          {
                            v25[12] = 1;
                          }

                          *(v25 + 2) = (v31 - v44) >> 3;
                          if (v25[12] == 1)
                          {
LABEL_71:
                            v45 = mlir::AnalysisManager::nest(&v97, v21);
                            if (v15 < v16)
                            {
                              *v15 = *(v25 + 2);
                              *(v15 + 8) = v21;
                              *(v15 + 16) = v45;
                              v15 += 24;
                            }

                            else
                            {
                              v46 = v15 - v14;
                              v47 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3) + 1;
                              if (v47 > 0xAAAAAAAAAAAAAAALL)
                              {
                                std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
                              }

                              if (0x5555555555555556 * ((v16 - v14) >> 3) > v47)
                              {
                                v47 = 0x5555555555555556 * ((v16 - v14) >> 3);
                              }

                              if (0xAAAAAAAAAAAAAAABLL * ((v16 - v14) >> 3) >= 0x555555555555555)
                              {
                                v48 = 0xAAAAAAAAAAAAAAALL;
                              }

                              else
                              {
                                v48 = v47;
                              }

                              if (v48)
                              {
                                if (v48 <= 0xAAAAAAAAAAAAAAALL)
                                {
                                  operator new();
                                }

                                std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
                              }

                              v49 = 8 * ((v15 - v14) >> 3);
                              v16 = 0;
                              *v49 = *(v25 + 2);
                              *(v49 + 8) = v21;
                              *(v49 + 16) = v45;
                              v15 = v49 + 24;
                              v50 = (v49 + 24 * (v46 / -24));
                              memcpy(v50, v14, v46);
                              if (v14)
                              {
                                operator delete(v14);
                              }

                              v14 = v50;
                            }
                          }
                        }

                        else
                        {
                          v19 = v79;
                          if (v25[12] == 1)
                          {
                            goto LABEL_71;
                          }
                        }

LABEL_15:
                        mlir::Region::OpIterator::operator++(&v102);
                        v18 = v103;
                        if (v103 == v19)
                        {
                          goto LABEL_11;
                        }

                        goto LABEL_16;
                      }

                      while (((*(**v43 + 72))(*v43, v41) & 1) != 0)
                      {
                        if (++v43 == v42)
                        {
                          goto LABEL_60;
                        }
                      }
                    }
                  }
                }

                if (++v31 == v33)
                {
                  v16 = v34;
                  v19 = v79;
                  v15 = v80;
                  if (v25[12] == 1)
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_15;
                }
              }
            }

LABEL_30:
            --HIDWORD(v95);
            goto LABEL_31;
          }
        }

        else
        {
LABEL_89:
          v23 = 2 * v96;
        }

        llvm::DenseMap<mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>::grow(&v94, v23);
        if (v96)
        {
          v51 = (v96 - 1) & ((v22 >> 4) ^ (v22 >> 9));
          v25 = v94 + 16 * v51;
          v52 = *v25;
          if (v22 != *v25)
          {
            v53 = 0;
            v54 = 1;
            while (v52 != -4096)
            {
              if (v53)
              {
                v55 = 0;
              }

              else
              {
                v55 = v52 == -8192;
              }

              if (v55)
              {
                v53 = v25;
              }

              v56 = v51 + v54++;
              v51 = v56 & (v96 - 1);
              v25 = v94 + 16 * v51;
              v52 = *v25;
              if (v22 == *v25)
              {
                goto LABEL_102;
              }
            }

            if (v53)
            {
              v25 = v53;
            }
          }
        }

        else
        {
          v25 = 0;
        }

LABEL_102:
        LODWORD(v95) = v95 + 1;
        if (*v25 == -4096)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v8 = *v6;
      v9 = *(this + 43);
      while (*(*v8 + 48) - *(*v8 + 40) == *(*v9 + 48) - *(*v9 + 40))
      {
        v9 += 8;
        v8 += 8;
        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  MemorySpace = mlir::MemRefType::getMemorySpace(Context);
  v11 = (*(*MemorySpace + 40))(MemorySpace);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpPassManager,1u>>::assign(this + 368, v11, this + 344);
  goto LABEL_9;
}

uint64_t mlir::detail::OpToOpPassAdaptor::runOnOperationImpl(mlir::detail::OpToOpPassAdaptor *this, char a2)
{
  v39 = *(this + 6);
  result = llvm::get_threadid(this);
  v38[0] = result;
  v38[1] = this;
  v36 = this;
  v4 = v39[9];
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  if ((v4 & 4) == 0 && v5)
  {
    do
    {
      v6 = *(v5 + 72);
      v5 = v6 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v6 & 4) == 0 && v5);
  }

  v7 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 44);
  v9 = v8 & 0x7FFFFF;
  if ((v8 & 0x7FFFFF) != 0)
  {
    v10 = ((v7 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
    v32 = v10 + 24 * v9;
    while (1)
    {
      v11 = *(v10 + 8);
      v33 = v10;
      if (v11 != v10)
      {
        break;
      }

LABEL_8:
      v10 += 24;
      if (v10 == v32)
      {
        return result;
      }
    }

    while (1)
    {
      v12 = v11 - 8;
      v34 = v11;
      if (!v11)
      {
        v12 = 0;
      }

      v13 = *(v12 + 40);
      v37 = (v12 + 32);
      if (v13 != (v12 + 32))
      {
        break;
      }

LABEL_10:
      v10 = v33;
      v11 = *(v34 + 8);
      if (v11 == v33)
      {
        goto LABEL_8;
      }
    }

    while (1)
    {
      ZinIrHalH13g::~ZinIrHalH13g(v13);
      v15 = v14;
      v16 = *(v36 + 43);
      v17 = *(v36 + 88);
      v18 = v14[6];
      result = mlir::Attribute::getContext((v14 + 3));
      v19 = &v16[v17];
      if (v17)
      {
        break;
      }

LABEL_45:
      if (v16 != v19 && v16 != 0)
      {
        v30 = *(*v16 + 64);
        v31 = mlir::AnalysisManager::nest(&v39, v15);
        result = mlir::detail::OpToOpPassAdaptor::runPipeline(v16, v15, v31, a2, v30, v5, v38);
        if ((result & 1) == 0)
        {
          *(v36 + 5) |= 4uLL;
          return result;
        }
      }

LABEL_15:
      v13 = *(v13 + 1);
      if (v13 == v37)
      {
        goto LABEL_10;
      }
    }

    v20 = result;
    while (1)
    {
      v21 = *v16;
      v22 = *(*v16 + 23);
      if (v22 < 0)
      {
        if (!*(v21 + 8))
        {
          goto LABEL_34;
        }
      }

      else if (!*(*v16 + 23))
      {
        goto LABEL_34;
      }

      if ((*(v21 + 32) & 1) == 0)
      {
        if (v22 >= 0)
        {
          v23 = *v16;
        }

        else
        {
          v23 = *v21;
        }

        if (v22 >= 0)
        {
          v24 = *(*v16 + 23);
        }

        else
        {
          v24 = *(v21 + 8);
        }

        result = mlir::OperationName::OperationName(&v40, v23, v24, v20);
        if ((*(v21 + 32) & 1) == 0)
        {
          *(v21 + 32) = 1;
        }

        *(v21 + 24) = v40;
      }

LABEL_34:
      if (*(v21 + 32))
      {
        if (*(v21 + 24) == v18)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v25 = *(v18 + 16);
        if (v25 == &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v26 = 0;
        }

        else
        {
          v26 = v18;
        }

        if (v25 != &mlir::detail::TypeIDResolver<void,void>::id)
        {
          {
            mlir::detail::OpPassManagerImpl::canScheduleOn();
          }

          result = (*(*v26 + 32))(v26, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id);
          if (result)
          {
            v27 = *(v21 + 40);
            v28 = *(v21 + 48);
            if (v27 == v28)
            {
              goto LABEL_45;
            }

            while (1)
            {
              result = (*(**v27 + 72))(*v27, v26);
              if ((result & 1) == 0)
              {
                break;
              }

              if (++v27 == v28)
              {
                goto LABEL_45;
              }
            }
          }
        }
      }

      if (++v16 == v19)
      {
        goto LABEL_15;
      }
    }
  }

  return result;
}

uint64_t *mlir::AnalysisManager::nest(uint64_t **this, mlir::Operation *a2)
{
  v3 = a2;
  v20 = *MEMORY[0x1E69E9840];
  v4 = (*this)[3];
  ParentOp = *(a2 + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(*(a2 + 2));
    v3 = a2;
  }

  if (v4 == ParentOp)
  {
    v14[0] = v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::try_emplace<>(*this, v14, &v17);
    if (v19[0] == 1)
    {
      operator new();
    }

    return *(v17 + 1);
  }

  else
  {
    v17 = v19;
    v18 = 0x400000000;
    do
    {
      v7 = v18;
      if (v18 >= HIDWORD(v18))
      {
        v8 = v3;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, v18 + 1, 8);
        v3 = v8;
        v7 = v18;
      }

      *(v17 + v7) = v3;
      LODWORD(v18) = v18 + 1;
      v3 = *(v3 + 2);
      if (v3)
      {
        v3 = mlir::Block::getParentOp(v3);
      }
    }

    while (v3 != v4);
    v9 = *this;
    v10 = v17;
    if (v18)
    {
      v11 = 8 * v18;
      v12 = v17 - 8;
      do
      {
        v16 = *&v12[v11];
        llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::try_emplace<>(v9, &v16, v14);
        if (v15 == 1)
        {
          operator new();
        }

        v9 = *(v14[0] + 8);
        v11 -= 8;
      }

      while (v11);
      v10 = v17;
    }

    if (v10 != v19)
    {
      free(v10);
    }
  }

  return v9;
}

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpPassManager,1u>>::assign(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (*(result + 12) >= a2)
  {
    v6 = *(result + 8);
    if (v6 >= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = *(result + 8);
    }

    if (v7)
    {
      v8 = *result;
      do
      {
        llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v8, a3);
        v8 += 24;
        --v7;
      }

      while (v7);
      v6 = *(result + 8);
    }

    v9 = v6 - a2;
    if (v6 >= a2)
    {
      if (v6 > a2)
      {
        v12 = 24 * v6;
        v13 = 24 * a2 - v12;
        v14 = (v12 + *result - 24);
        do
        {
          v14 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v14) - 3;
          v13 += 24;
        }

        while (v13);
      }
    }

    else
    {
      v10 = (*result + 24 * v6);
      do
      {
        *v10 = v10 + 2;
        v10[1] = 0x100000000;
        if (*(a3 + 8))
        {
          llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v10, a3);
        }

        v10 += 3;
      }

      while (!__CFADD__(v9++, 1));
    }

    *(result + 8) = a2;
  }

  else
  {

    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpPassManager,1u>,false>::growAndAssign(result, a2, a3);
  }
}

void mlir::PassManager::~PassManager(mlir::PassManager *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    mlir::detail::PassCrashReproducerGenerator::~PassCrashReproducerGenerator(v2);
    MEMORY[0x1AC55A070]();
  }

  std::unique_ptr<mlir::PassInstrumentor>::reset[abi:nn200100](this + 3, 0);
  v3 = *this;
  *this = 0;
  if (v3)
  {
    v4 = *(v3 + 40);
    if (v4)
    {
      v5 = *(v3 + 48);
      v6 = *(v3 + 40);
      if (v5 != v4)
      {
        do
        {
          v8 = *--v5;
          v7 = v8;
          *v5 = 0;
          if (v8)
          {
            (*(*v7 + 8))(v7);
          }
        }

        while (v5 != v4);
        v6 = *(v3 + 40);
      }

      *(v3 + 48) = v4;
      operator delete(v6);
    }

    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    MEMORY[0x1AC55A070](v3, 0x1032C402C5CA452);
  }
}

uint64_t mlir::PassManager::enableVerifier(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(this + 56) = *(this + 56) & 0xFD | v2;
  return this;
}

BOOL mlir::PassManager::run(mlir::PassManager *this, mlir::Operation *a2)
{
  v91 = *MEMORY[0x1E69E9840];
  v5 = *this;
  v4 = *(this + 1);
  v6 = *(*this + 23);
  if (v6 < 0)
  {
    if (!*(v5 + 8))
    {
      goto LABEL_15;
    }
  }

  else if (!*(*this + 23))
  {
    goto LABEL_15;
  }

  if ((*(v5 + 32) & 1) == 0)
  {
    if (v6 >= 0)
    {
      v7 = *this;
    }

    else
    {
      v7 = *v5;
    }

    if (v6 >= 0)
    {
      v8 = *(*this + 23);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    mlir::OperationName::OperationName(&v75, v7, v8, v4);
    v9 = v75;
    if ((*(v5 + 32) & 1) == 0)
    {
      *(v5 + 32) = 1;
    }

    *(v5 + 24) = v9;
  }

LABEL_15:
  if ((*(v5 + 32) & 1) == 0 || *(a2 + 6) == *(v5 + 24))
  {
    mlir::DialectRegistry::DialectRegistry(&v66);
    v17 = *(*this + 40);
    v18 = *(*this + 48);
    while (v17 != v18)
    {
      v19 = *v17++;
      (*(*v19 + 24))(v19, &v66);
    }

    mlir::MLIRContext::appendDialectRegistry(v4, &v66);
    v20 = v66;
    if (v66 != &v67)
    {
      do
      {
        v28 = *(v20 + 55);
        if (v28 >= 0)
        {
          v29 = (v20 + 4);
        }

        else
        {
          v29 = v20[4];
        }

        if (v28 >= 0)
        {
          v30 = *(v20 + 55);
        }

        else
        {
          v30 = v20[5];
        }

        mlir::MLIRContext::getOrLoadDialect(v4, v29, v30);
        v31 = v20[1];
        if (v31)
        {
          do
          {
            v32 = v31;
            v31 = *v31;
          }

          while (v31);
        }

        else
        {
          do
          {
            v32 = v20[2];
            v33 = *v32 == v20;
            v20 = v32;
          }

          while (!v33);
        }

        v20 = v32;
      }

      while (v32 != &v67);
    }

    if (mlir::detail::OpPassManagerImpl::finalizePassList(*this, v4))
    {
      ZinIrHalH13g::~ZinIrHalH13g(v4);
      RegistryHash = mlir::MLIRContext::getRegistryHash(v4);
      v22 = mlir::OpPassManager::hash(this);
      if (RegistryHash == *(this + 5) && v22 == *(this + 6))
      {
LABEL_34:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        v79 = 0;
        v80 = 0;
        v78 = a2;
        v81 = 0;
        v23 = *(this + 4);
        v24 = *(this + 3) | 4;
        v83 = 0;
        v84[0] = v24;
        v82 = v84;
        if (v23)
        {
          mlir::PassManager::runWithCrashRecovery(this, a2, &v75);
        }

        v53 = *(this + 56);
        v54 = *this;
        v55 = *(*this + 64);
        v74 = &v75;
        v56 = *(v54 + 40);
        v57 = *(v54 + 48);
        if (v56 != v57)
        {
          v58 = (v53 >> 1) & 1;
          do
          {
            if (!mlir::detail::OpToOpPassAdaptor::run(*v56, a2, &v75, v58, v55))
            {
              break;
            }

            ++v56;
          }

          while (v56 != v57);
        }

        mlir::AnalysisManager::clear(&v74);
        ZinIrHalH13g::~ZinIrHalH13g(v4);
        if (*(this + 20) != 1)
        {
          v25 = v82;
          if (v83)
          {
            v26 = v82 - 8;
            v27 = 16 * v83;
            do
            {
              v34 = *&v26[v27];
              *&v26[v27] = 0;
              if (v34)
              {
                (*(*v34 + 8))(v34);
              }

              v27 -= 16;
            }

            while (v27);
            v25 = v82;
          }

          if (v25 != v84)
          {
            free(v25);
          }

          llvm::deallocate_buffer(v79, (16 * v81));
        }

        mlir::PassManager::dumpStatistics(this);
      }

      if (mlir::OpPassManager::initialize(this, v4, *(*this + 64) + 1))
      {
        *(this + 5) = RegistryHash;
        goto LABEL_34;
      }
    }

    v35 = v72;
    if (v73)
    {
      v59 = v72 - 8;
      v60 = 16 * v73;
      do
      {
        v61 = *&v59[v60];
        *&v59[v60] = 0;
        if (v61)
        {
          (*(*v61 + 8))(v61);
        }

        v60 -= 16;
      }

      while (v60);
      v35 = v72;
    }

    if (v35 != &v74)
    {
      free(v35);
    }

    llvm::deallocate_buffer(v69, (16 * v71));
  }

  mlir::emitError(*(a2 + 3), &v75);
  if (v75)
  {
    LODWORD(v66) = 3;
    v67 = "can't run '";
    v68 = 11;
    v10 = &v66;
    v11 = v78;
    if (v79 >= HIDWORD(v79))
    {
      if (v78 <= &v66 && v78 + 24 * v79 > &v66)
      {
        v63 = &v66 - v78;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, &v80, v79 + 1, 24);
        v11 = v78;
        v10 = (v78 + v63);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, &v80, v79 + 1, 24);
        v10 = &v66;
        v11 = v78;
      }
    }

    v12 = &v11[24 * v79];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    LODWORD(v79) = v79 + 1;
  }

  v14 = *this;
  v15 = *(*this + 23);
  if ((v15 & 0x8000000000000000) == 0)
  {
    if (*(*this + 23))
    {
      goto LABEL_22;
    }

LABEL_62:
    v14 = "any";
    v15 = 3;
    if (!v75)
    {
      goto LABEL_69;
    }

    goto LABEL_63;
  }

  if (!*(v14 + 1))
  {
    goto LABEL_62;
  }

LABEL_22:
  v16 = *(v14 + 1);
  if (v15 < 0)
  {
    v14 = *v14;
    v15 = v16;
  }

  if (v75)
  {
LABEL_63:
    v70 = 261;
    v66 = v14;
    v67 = v15;
    mlir::Diagnostic::operator<<(&v76, &v66);
    if (v75)
    {
      LODWORD(v66) = 3;
      v67 = "' pass manager on '";
      v68 = 19;
      v36 = &v66;
      v37 = v78;
      if (v79 >= HIDWORD(v79))
      {
        if (v78 <= &v66 && v78 + 24 * v79 > &v66)
        {
          v64 = &v66 - v78;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, &v80, v79 + 1, 24);
          v37 = v78;
          v36 = (v78 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, &v80, v79 + 1, 24);
          v36 = &v66;
          v37 = v78;
        }
      }

      v38 = &v37[24 * v79];
      v39 = *v36;
      *(v38 + 2) = v36[2];
      *v38 = v39;
      LODWORD(v79) = v79 + 1;
      if (v75)
      {
        mlir::Diagnostic::operator<<(&v76, *(a2 + 6));
        if (v75)
        {
          LODWORD(v66) = 3;
          v67 = "' op";
          v68 = 4;
          v40 = &v66;
          v41 = v78;
          if (v79 >= HIDWORD(v79))
          {
            if (v78 <= &v66 && v78 + 24 * v79 > &v66)
            {
              v65 = &v66 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, &v80, v79 + 1, 24);
              v41 = v78;
              v40 = (v78 + v65);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, &v80, v79 + 1, 24);
              v40 = &v66;
              v41 = v78;
            }
          }

          v42 = &v41[24 * v79];
          v43 = *v40;
          *(v42 + 2) = v40[2];
          *v42 = v43;
          LODWORD(v79) = v79 + 1;
        }
      }
    }
  }

LABEL_69:
  v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v75);
  if (v75)
  {
    mlir::InFlightDiagnostic::report(&v75);
  }

  if (v90 == 1)
  {
    if (v89 != &v90)
    {
      free(v89);
    }

    v45 = __p;
    if (__p)
    {
      v46 = v88;
      v47 = __p;
      if (v88 != __p)
      {
        do
        {
          v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
        }

        while (v46 != v45);
        v47 = __p;
      }

      v88 = v45;
      operator delete(v47);
    }

    v48 = v85;
    if (v85)
    {
      v49 = v86;
      v50 = v85;
      if (v86 != v85)
      {
        do
        {
          v52 = *--v49;
          v51 = v52;
          *v49 = 0;
          if (v52)
          {
            MEMORY[0x1AC55A040](v51, 0x1000C8077774924);
          }
        }

        while (v49 != v48);
        v50 = v85;
      }

      v86 = v48;
      operator delete(v50);
    }

    if (v78 != &v80)
    {
      free(v78);
    }
  }

  return v44;
}

uint64_t mlir::PassManager::runPasses(unsigned __int8 *a1, void ***a2, int32x2_t *a3)
{
  v3 = a1[56];
  v4 = *a1;
  v5 = *(*a1 + 64);
  v13 = a3;
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  if (v6 == v7)
  {
LABEL_5:
    v11 = 1;
  }

  else
  {
    v10 = (v3 >> 1) & 1;
    while (mlir::detail::OpToOpPassAdaptor::run(*v6, a2, a3, v10, v5))
    {
      if (++v6 == v7)
      {
        goto LABEL_5;
      }
    }

    v11 = 0;
  }

  mlir::AnalysisManager::clear(&v13);
  return v11;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::try_emplace<>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 16 * v7);
  v9 = *v8;
  if (*a2 != *v8)
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
      v8 = (v5 + 16 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 2);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v8[1] = 0;
        v5 = *result;
        v4 = *(result + 4);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 2);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 16 * v4;
  *(a3 + 16) = v10;
  return result;
}

void mlir::detail::NestedAnalysisMap::invalidate(int32x2_t *this, const mlir::detail::PreservedAnalyses *a2)
{
  v21[6] = *MEMORY[0x1E69E9840];
  if (!mlir::detail::PreservedAnalyses::isAll(a2))
  {
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v18, v21, a2);
    _ZN4llvm9MapVectorIN4mlir6TypeIDENSt3__110unique_ptrINS1_6detail15AnalysisConceptENS3_14default_deleteIS6_EEEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorINS3_4pairIS2_S9_EELj0EEEE9remove_ifIZNS5_11AnalysisMap10invalidateERKNS5_17PreservedAnalysesEEUlRT_E_EEvSR_(this + 4, &v18);
    if (v19 != v18)
    {
      free(v19);
    }

    if (*(a2 + 5) == *(a2 + 6))
    {
      v4 = this[1].i32[0];
      if (v4 || this[1].i32[1])
      {
        v5 = this[2].u32[0];
        if (v5 > 4 * v4 && v5 >= 0x41)
        {
          llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::shrink_and_clear(this);
          return;
        }

        if (v5)
        {
          v15 = (*this + 8);
          for (i = 16 * v5; i; i -= 16)
          {
            v17 = *(v15 - 1);
            if (v17 != -8192)
            {
              if (v17 == -4096)
              {
                goto LABEL_36;
              }

              std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v15, 0);
            }

            *(v15 - 1) = -4096;
LABEL_36:
            v15 += 2;
          }
        }

        this[1] = 0;
      }
    }

    else
    {
      v18 = v20;
      HIDWORD(v19) = 8;
      v20[0] = this;
      v6 = 1;
      do
      {
        v7 = *(v18 + --v6);
        LODWORD(v19) = v6;
        if (*(v7 + 2))
        {
          v8 = *v7;
          v9 = *(v7 + 4);
          if (v9)
          {
            v10 = 16 * v9;
            v11 = v8;
            while ((*v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v11 += 16;
              v10 -= 16;
              if (!v10)
              {
                goto LABEL_12;
              }
            }
          }

          else
          {
            v11 = v8;
          }

          v12 = v8 + 16 * v9;
          if (v11 != v12)
          {
            do
            {
              mlir::detail::NestedAnalysisMap::invalidate(*(v11 + 8), a2);
              v13 = *(v11 + 8);
              if (*(v13 + 8))
              {
                v14 = v19;
                if (v19 >= HIDWORD(v19))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v18, v20, v19 + 1, 8);
                  v14 = v19;
                }

                *(v18 + v14) = v13;
                LODWORD(v19) = v19 + 1;
              }

              do
              {
                v11 += 16;
              }

              while (v11 != v12 && (*v11 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v11 != v12);
            v6 = v19;
          }
        }

LABEL_12:
        ;
      }

      while (v6);
      if (v18 != v20)
      {
        free(v18);
      }
    }
  }
}

void mlir::PassInstrumentor::runBeforeAnalysis(std::recursive_mutex **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  std::recursive_mutex::lock(*a1);
  v11 = *a1;
  v12 = *(*a1)[1].__m_.__opaque;
  v13 = *&v11[1].__m_.__opaque[8];
  while (v12 != v13)
  {
    v14 = *v12++;
    (*(*v14 + 56))(v14, a2, a3, a4, a5);
  }

  std::recursive_mutex::unlock(v10);
}

void mlir::PassInstrumentor::runAfterAnalysis(std::recursive_mutex **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  std::recursive_mutex::lock(*a1);
  v12 = *(*a1)[1].__m_.__opaque;
  for (i = *&(*a1)[1].__m_.__opaque[8]; i != v12; i -= 8)
  {
    v13 = *(i - 8);
    (*(*v13 + 64))(v13, a2, a3, a4, a5);
  }

  std::recursive_mutex::unlock(v10);
}

void mlir::detail::OpToOpPassAdaptor::~OpToOpPassAdaptor(mlir::detail::OpToOpPassAdaptor *this)
{
  *this = &unk_1F1A020F8;
  v2 = *(this + 46);
  v3 = *(this + 94);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v5) - 3;
      v4 += 24;
    }

    while (v4);
    v2 = *(this + 46);
  }

  if (v2 != this + 384)
  {
    free(v2);
  }

  llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(this + 43);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_1F1A020F8;
  v2 = *(this + 46);
  v3 = *(this + 94);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v5) - 3;
      v4 += 24;
    }

    while (v4);
    v2 = *(this + 46);
  }

  if (v2 != this + 384)
  {
    free(v2);
  }

  llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(this + 43);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x1AC55A070);
}

const char *mlir::PassWrapper<mlir::detail::OpToOpPassAdaptor,mlir::OperationPass<void>>::getName()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::OpToOpPassAdaptor]";
  v6 = 81;
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

void *llvm::support::detail::provider_format_adapter<llvm::StringLiteral const&>::format(uint64_t a1, llvm::raw_ostream *a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (a4)
  {
    v12 = 0;
    AsUnsignedInteger = llvm::getAsUnsignedInteger(a3, a4, 0xAu, &v12);
    v7 = v12;
    if (AsUnsignedInteger)
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  v8 = *v5;
  if (*(v5 + 8) >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(v5 + 8);
  }

  result = *(a2 + 4);
  if (v9 > *(a2 + 3) - result)
  {
    return llvm::raw_ostream::write(a2, v8, v9);
  }

  if (v9)
  {
    v11 = v9;
    result = memcpy(result, v8, v9);
    *(a2 + 4) += v11;
  }

  return result;
}

void *llvm::support::detail::provider_format_adapter<llvm::StringRef>::format(uint64_t a1, llvm::raw_ostream *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4)
  {
    v12 = 0;
    AsUnsignedInteger = llvm::getAsUnsignedInteger(a3, a4, 0xAu, &v12);
    v7 = v12;
    if (AsUnsignedInteger)
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  v8 = *(a1 + 8);
  if (*(a1 + 16) >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(a1 + 16);
  }

  result = *(a2 + 4);
  if (v9 > *(a2 + 3) - result)
  {
    return llvm::raw_ostream::write(a2, v8, v9);
  }

  if (v9)
  {
    v11 = v9;
    result = memcpy(result, v8, v9);
    *(a2 + 4) += v11;
  }

  return result;
}

const char *llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::OpToOpPassAdaptor]";
  v6 = 81;
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

const char *llvm::getTypeName<mlir::detail::PreservedAnalyses::AllAnalysesType>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::PreservedAnalyses::AllAnalysesType]";
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

uint64_t mlir::detail::OpToOpPassAdaptor::tryMergeInto(mlir::MLIRContext *,mlir::detail::OpToOpPassAdaptor&)::$_2::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = *(v2 + 8);
  }

  else
  {
    v4 = *(*a1 + 23);
  }

  if (!v4)
  {
    return 1;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v5 = *a1;
  }

  else
  {
    v5 = *v2;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = *(v2 + 8);
  }

  v7 = *a2;
  v8 = *(*a2 + 23);
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (*(*a2 + 23))
    {
      goto LABEL_13;
    }

    return 0xFFFFFFFFLL;
  }

  if (!v7[1])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_13:
  if (v8 >= 0)
  {
    v9 = *(*a2 + 23);
  }

  else
  {
    v9 = v7[1];
  }

  if (v9 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    v11 = v8 >= 0 ? *a2 : *v7;
    v12 = memcmp(v5, v11, v10);
    if (v12)
    {
      return (v12 >> 31) | 1u;
    }
  }

  if (v6 == v9)
  {
    return 0;
  }

  if (v6 < v9)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

int32x2_t *_ZN4llvm9MapVectorIN4mlir6TypeIDENSt3__110unique_ptrINS1_6detail15AnalysisConceptENS3_14default_deleteIS6_EEEENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorINS3_4pairIS2_S9_EELj0EEEE9remove_ifIZNS5_11AnalysisMap10invalidateERKNS5_17PreservedAnalysesEEUlRT_E_EEvSR_(int32x2_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[3];
  v4 = result[4].u32[0];
  if (v4)
  {
    v6 = *&v3 + 16 * v4;
    v7 = result[3];
    do
    {
      result = (*(**(*&v3 + 8) + 16))(*(*&v3 + 8), a2);
      if (result)
      {
        v9 = v2[2].i32[0];
        if (v9)
        {
          v10 = *v2;
          v11 = v9 - 1;
          v12 = ((**&v3 >> 4) ^ (**&v3 >> 9)) & (v9 - 1);
          v13 = *(*v2 + 16 * (((**&v3 >> 4) ^ (**&v3 >> 9)) & v11));
          if (**&v3 == v13)
          {
LABEL_9:
            *(*&v10 + 16 * v12) = -8192;
            v2[1] = vadd_s32(v2[1], 0x1FFFFFFFFLL);
          }

          else
          {
            v17 = 1;
            while (v13 != -4096)
            {
              v18 = v12 + v17++;
              v12 = v18 & v11;
              v13 = *(*&v10 + 16 * v12);
              if (**&v3 == v13)
              {
                goto LABEL_9;
              }
            }
          }
        }
      }

      else
      {
        if (*&v3 != v7)
        {
          v14 = **&v3;
          v15 = *(*&v3 + 8);
          *(*&v3 + 8) = 0;
          v16 = v7[1];
          *v7 = v14;
          v7[1] = v15;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }

          v8 = (v7 - *&v2[3]) >> 4;
          result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](v2, v7);
          result->i32[0] = v8;
        }

        v7 += 2;
      }

      *&v3 += 16;
    }

    while (*&v3 != v6);
    v3 = v2[3];
    v19 = (*&v3 + 16 * v2[4].u32[0]);
    if (v19 != v7)
    {
      do
      {
        result = *(v19 - 1);
        *(v19 - 1) = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        v19 -= 2;
      }

      while (v19 != v7);
      v3 = v2[3];
    }
  }

  else
  {
    v7 = result[3];
  }

  v2[4].i32[0] = (v7 - *&v3) >> 4;
  return result;
}

char ***llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[v3];
    do
    {
      v6 = *--v4;
      v5 = v6;
      *v4 = 0;
      if (v6)
      {
        v7 = *(v5 + 40);
        if (v7)
        {
          v8 = *(v5 + 48);
          v9 = *(v5 + 40);
          if (v8 != v7)
          {
            do
            {
              v11 = *--v8;
              v10 = v11;
              *v8 = 0;
              if (v11)
              {
                (*(*v10 + 8))(v10);
              }
            }

            while (v8 != v7);
            v9 = *(v5 + 40);
          }

          *(v5 + 48) = v7;
          operator delete(v9);
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x1AC55A070](v5, 0x1032C402C5CA452);
      }
    }

    while (v4 != v2);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void mlir::Pass::~Pass(mlir::Pass *this)
{
  *this = &unk_1F1A02168;
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  if (*(this + 73))
  {
    v3 = *(this + 72);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(*(this + 35) + v4);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v4 += 8;
      }

      while (8 * v3 != v4);
    }
  }

  free(*(this + 35));
  v7 = *(this + 29);
  if (v7 != this + 248)
  {
    free(v7);
  }

  v8 = *(this + 23);
  if (v8 != this + 200)
  {
    free(v8);
  }

  v9 = *(this + 16);
  if (v9)
  {
    *(this + 17) = v9;
    operator delete(v9);
  }

  if (*(this + 120) == 1)
  {
    v10 = *(this + 8);
    if (v10 != *(this + 7))
    {
      free(v10);
    }
  }
}

uint64_t *llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::shrink_and_clear(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 2);
  v4 = (16 * v2);
  if (v2)
  {
    v5 = (*result + 8);
    v6 = 16 * v2;
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v5, 0);
      }

      v5 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  if (!v3)
  {
    if (!*(v1 + 16))
    {
      *(v1 + 8) = 0;
      return result;
    }

LABEL_17:
    llvm::deallocate_buffer(*v1, v4);
  }

  v7 = 1 << (33 - __clz(v3 - 1));
  if (v7 <= 64)
  {
    v8 = 64;
  }

  else
  {
    v8 = v7;
  }

  if (v8 != *(v1 + 16))
  {
    goto LABEL_17;
  }

  *(v1 + 8) = 0;
  v9 = *v1;
  v10 = (v8 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (!v10)
  {
    v13 = *v1;
LABEL_20:
    v16 = (v9 + 16 * v8);
    do
    {
      *v13 = -4096;
      v13 = (v13 + 16);
    }

    while (v13 != v16);
    return result;
  }

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
  if (v11 != v12)
  {
    goto LABEL_20;
  }

  return result;
}

std::string *mlir::detail::OpPassManagerImpl::OpPassManagerImpl(std::string *this, const mlir::detail::OpPassManagerImpl *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 24);
  this[1].__r_.__value_.__r.__words[2] = 0;
  *&this[1].__r_.__value_.__l.__data_ = v5;
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  while (v6 != v7)
  {
    v8 = *v6 + 152;
    (*(**v6 + 80))(&v11);
    mlir::detail::PassOptions::copyOptionValuesFrom(v11 + 152, v8);
    *(v11 + 336) = *v6;
    std::vector<std::unique_ptr<mlir::Diagnostic>>::push_back[abi:nn200100](&this[1].__r_.__value_.__r.__words[2], &v11);
    v9 = v11;
    v11 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v6 += 8;
  }

  return this;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::OpPassManager &,mlir::Operation *)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_0>(uint64_t a1, mlir::detail::OpPassManagerImpl **a2, Operation *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = **a1;
  if (v6 != a3 && (mlir::Operation::isProperAncestor(v6, a3) & 1) == 0)
  {
    v32 = 257;
    mlir::Operation::emitOpError(a3, v31, v36);
    if (v36[0])
    {
      v33 = 3;
      v34 = "Trying to schedule a dynamic pipeline on an operation that isn't nested under the current operation the pass is processing";
      v35 = 122;
      v13 = &v33;
      v14 = v37;
      if (v38 >= v39)
      {
        if (v37 <= &v33 && v37 + 24 * v38 > &v33)
        {
          v30 = &v33 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v14 = v37;
          v13 = (v37 + v30);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v13 = &v33;
          v14 = v37;
        }
      }

      v15 = &v14[24 * v38];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v38;
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v44;
        v19 = __p;
        if (v44 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v44 = v17;
        operator delete(v19);
      }

      v20 = v41;
      if (v41)
      {
        v21 = v42;
        v22 = v41;
        if (v42 != v41)
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
          v22 = v41;
        }

        v42 = v20;
        operator delete(v22);
      }

      if (v37 != v40)
      {
        free(v37);
      }
    }

    return v12;
  }

  v7 = *a2;
  Context = mlir::Attribute::getContext((a3 + 24));
  if (!mlir::detail::OpPassManagerImpl::finalizePassList(v7, Context))
  {
    return 0;
  }

  v9 = mlir::Attribute::getContext((a3 + 24));
  if ((mlir::OpPassManager::initialize(a2, v9, **(a1 + 8)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  if (**a1 == a3)
  {
    v11 = *v10;
  }

  else
  {
    v11 = mlir::AnalysisManager::nest(v10, a3);
  }

  v25 = **(a1 + 24);
  v26 = **(a1 + 8);
  v27 = **(a1 + 32);
  v28 = *(a1 + 40);

  return mlir::detail::OpToOpPassAdaptor::runPipeline(a2, a3, v11, v25, v26, v27, v28);
}

uint64_t mlir::MLIRContext::executeActionInternal<mlir::PassExecutionAction,mlir::Pass &>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[1] = &mlir::PassExecutionAction::resolveTypeID(void)::id;
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a6;
  v7[0] = &unk_1F1A020C0;
  return mlir::MLIRContext::executeActionInternal(a1, a2, a3, v7);
}

uint64_t llvm::function_ref<void ()(void)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_1>(mlir::detail::OpToOpPassAdaptor ***a1)
{
  v2 = **a1;
  v3 = *(v2 + 1);
  {
    if (v3 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
LABEL_3:
      result = (*(***a1 + 56))(**a1);
      goto LABEL_8;
    }
  }

  else
  {
    mlir::Pass::printAsTextualPipeline();
    if (v3 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      goto LABEL_3;
    }
  }

  v5 = *a1[1];
  Context = mlir::Attribute::getContext(((*(v2 + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  if (mlir::MLIRContext::isMultithreadingEnabled(Context))
  {
    mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(v2, v5);
  }

  result = mlir::detail::OpToOpPassAdaptor::runOnOperationImpl(v2, v5);
LABEL_8:
  *a1[2] = (*(**a1 + 40) & 4) != 0;
  return result;
}

uint64_t *mlir::AnalysisManager::clear(uint64_t *this)
{
  v1 = this;
  v2 = *this;
  if (*(*this + 40))
  {
    v3 = *(v2 + 48);
    if (v3 > 4 * *(*this + 40) && v3 >= 0x41)
    {
      this = llvm::DenseMap<mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>::shrink_and_clear(v2 + 32);
      goto LABEL_5;
    }

    if (v3)
    {
      v5 = *(v2 + 32);
      v6 = (v3 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v6)
      {
        v7 = v6 + 1;
        v8 = (v6 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v9 = (v5 + 16 * v8);
        v10 = (v5 + 16);
        v11 = v8;
        do
        {
          *(v10 - 2) = -4096;
          *v10 = -4096;
          v10 += 4;
          v11 -= 2;
        }

        while (v11);
        if (v7 == v8)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = *(v2 + 32);
      }

      v12 = (v5 + 16 * v3);
      do
      {
        *v9 = -4096;
        v9 += 2;
      }

      while (v9 != v12);
    }

LABEL_16:
    *(v2 + 40) = 0;
    v4 = *(v2 + 64);
    if (!v4)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

LABEL_5:
  v4 = *(v2 + 64);
  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = *(v2 + 56) - 8;
  v14 = 16 * v4;
  do
  {
    this = *(v13 + v14);
    *(v13 + v14) = 0;
    if (this)
    {
      this = (*(*this + 8))(this);
    }

    v14 -= 16;
  }

  while (v14);
LABEL_21:
  *(v2 + 64) = 0;
  v15 = *v1;
  v16 = *(v15 + 2);
  if (!v16 && !*(v15 + 3))
  {
    return this;
  }

  v17 = *(v15 + 4);
  if (v17 <= 4 * v16 || v17 < 0x41)
  {
    if (!v17)
    {
LABEL_35:
      v15[1] = 0;
      return this;
    }

    v18 = (*v15 + 8);
    v19 = 16 * v17;
    while (1)
    {
      v20 = *(v18 - 1);
      if (v20 != -8192)
      {
        if (v20 == -4096)
        {
          goto LABEL_31;
        }

        this = std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v18, 0);
      }

      *(v18 - 1) = -4096;
LABEL_31:
      v18 += 2;
      v19 -= 16;
      if (!v19)
      {
        goto LABEL_35;
      }
    }
  }

  return llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::shrink_and_clear(v15);
}

uint64_t *llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::growAndEmplaceBack<mlir::OpPassManager>(uint64_t a1, uint64_t *a2)
{
  v17 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v17);
  v6 = *(a1 + 8);
  v5[v6] = 0;
  v7 = *a2;
  *a2 = 0;
  v8 = v5[v6];
  v5[v6] = v7;
  if (v8)
  {
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = *(v8 + 48);
      v11 = *(v8 + 40);
      if (v10 != v9)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            (*(*v12 + 8))(v12);
          }
        }

        while (v10 != v9);
        v11 = *(v8 + 40);
      }

      *(v8 + 48) = v9;
      operator delete(v11);
    }

    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    MEMORY[0x1AC55A070](v8, 0x1032C402C5CA452);
  }

  llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::moveElementsForGrow(a1, v5);
  v14 = v17;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v15 = *(a1 + 8) + 1;
  *(a1 + 8) = v15;
  *(a1 + 12) = v14;
  return &v5[v15 - 1];
}

uint64_t llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::moveElementsForGrow(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v4 = result;
    v5 = *result;
    v6 = *result + 8 * v2;
    do
    {
      *a2 = 0;
      v7 = *v5;
      *v5 = 0;
      v8 = *a2;
      *a2 = v7;
      if (v8)
      {
        v9 = *(v8 + 40);
        if (v9)
        {
          v10 = *(v8 + 48);
          v11 = *(v8 + 40);
          if (v10 != v9)
          {
            do
            {
              v13 = *--v10;
              v12 = v13;
              *v10 = 0;
              if (v13)
              {
                (*(*v12 + 8))(v12);
              }
            }

            while (v10 != v9);
            v11 = *(v8 + 40);
          }

          *(v8 + 48) = v9;
          operator delete(v11);
        }

        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }

        result = MEMORY[0x1AC55A070](v8, 0x1032C402C5CA452);
      }

      ++a2;
      ++v5;
    }

    while (v5 != v6);
    v14 = *(v4 + 8);
    if (v14)
    {
      v15 = *v4;
      v16 = (*v4 + 8 * v14);
      do
      {
        v18 = *--v16;
        v17 = v18;
        *v16 = 0;
        if (v18)
        {
          v19 = *(v17 + 40);
          if (v19)
          {
            v20 = *(v17 + 48);
            v21 = *(v17 + 40);
            if (v20 != v19)
            {
              do
              {
                v23 = *--v20;
                v22 = v23;
                *v20 = 0;
                if (v23)
                {
                  (*(*v22 + 8))(v22);
                }
              }

              while (v20 != v19);
              v21 = *(v17 + 40);
            }

            *(v17 + 48) = v19;
            operator delete(v21);
          }

          if (*(v17 + 23) < 0)
          {
            operator delete(*v17);
          }

          result = MEMORY[0x1AC55A070](v17, 0x1032C402C5CA452);
        }
      }

      while (v16 != v15);
    }
  }

  return result;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpPassManager,1u>,false>::growAndAssign(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v16 = 0;
  v6 = a1 + 2;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 24, &v16);
  v8 = v7;
  if (a2)
  {
    v9 = v7;
    v10 = a2;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x100000000;
      if (*(a3 + 8))
      {
        llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v9, a3);
      }

      v9 += 3;
      --v10;
    }

    while (v10);
  }

  v11 = *a1;
  v12 = *(a1 + 2);
  if (v12)
  {
    v13 = -24 * v12;
    v14 = &v11[3 * v12 - 3];
    do
    {
      v14 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v14) - 3;
      v13 += 24;
    }

    while (v13);
    v11 = *a1;
  }

  v15 = v16;
  if (v11 != v6)
  {
    free(v11);
  }

  *a1 = v8;
  *(a1 + 2) = a2;
  *(a1 + 3) = v15;
}

uint64_t llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 8);
    if (v4 >= v3)
    {
      if (v3)
      {
        mlir::OpPassManager::operator=(*a1, *a2);
      }

      v8 = *a1;
      v9 = (*a1 + 8 * v4);
      if (v9 != *a1)
      {
        do
        {
          v11 = *--v9;
          v10 = v11;
          *v9 = 0;
          if (v11)
          {
            v12 = *(v10 + 40);
            if (v12)
            {
              v13 = *(v10 + 48);
              v14 = *(v10 + 40);
              if (v13 != v12)
              {
                do
                {
                  v16 = *--v13;
                  v15 = v16;
                  *v13 = 0;
                  if (v16)
                  {
                    (*(*v15 + 8))(v15);
                  }
                }

                while (v13 != v12);
                v14 = *(v10 + 40);
              }

              *(v10 + 48) = v12;
              operator delete(v14);
            }

            if (*(v10 + 23) < 0)
            {
              operator delete(*v10);
            }

            MEMORY[0x1AC55A070](v10, 0x1032C402C5CA452);
          }
        }

        while (v9 != v8);
      }

      goto LABEL_29;
    }

    if (*(a1 + 12) >= v3)
    {
      v6 = *a1;
      if (v4)
      {
        mlir::OpPassManager::operator=(v6, *a2);
      }

      if (!*(a2 + 8))
      {
        goto LABEL_29;
      }
    }

    else
    {
      v5 = a2;
      llvm::SmallVectorImpl<mlir::OpPassManager>::clear(a1);
      v20 = 0;
      v6 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), v3, 8, &v20);
      llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::moveElementsForGrow(a1, v6);
      v7 = v20;
      if (*a1 != a1 + 16)
      {
        free(*a1);
      }

      *a1 = v6;
      *(a1 + 12) = v7;
      a2 = v5;
      if (!*(v5 + 8))
      {
LABEL_29:
        *(a1 + 8) = v3;
        return a1;
      }
    }

    v17 = v6;
    v18 = *a2;
    *v17 = 0;
    mlir::OpPassManager::operator=(v17, v18);
  }

  return a1;
}

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A02348;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::operator()(uint64_t a1)
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
      v5 = *(a1 + 40);
      v6 = **(a1 + 48);
      v7 = v5[1];
      v8 = **v5;
      v9 = (*v5)[1];
      if (v8 == v9)
      {
        v11 = **v5;
      }

      else
      {
        while (1)
        {
          v10 = 0;
          atomic_compare_exchange_strong(v8, &v10, 1u);
          if (!v10)
          {
            break;
          }

          if (++v8 == v9)
          {
            LODWORD(v8) = v9;
            break;
          }
        }

        LODWORD(v11) = v8;
        v8 = **v5;
      }

      v12 = 8 * (add + 2 * add);
      v13 = (v11 - v8);
      v14 = (*&v7[46][24 * v13] + 8 * *(v6 + v12));
      v15 = mlir::detail::OpToOpPassAdaptor::runPipeline(v14, *(v12 + v6 + 8), *(v12 + v6 + 16), *v5[2], *(*v14 + 64), *v5[3], v5[4]);
      atomic_store(0, &(**v5)[v13]);
      if ((v15 & 1) == 0)
      {
        atomic_store(1u, *(a1 + 8));
      }

      mlir::ParallelDiagnosticHandler::eraseOrderIDForThread(*(a1 + 32));
      v3 = atomic_load(*(a1 + 8));
    }

    while ((v3 & 1) == 0);
  }
}

uint64_t std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir23failableParallelForEachINSt3__111__wrap_iterIPZNS_6detail17OpToOpPassAdaptor23runOnOperationAsyncImplEbE8OpPMInfoEERZNS4_23runOnOperationAsyncImplEbE3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SE_OT0_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir23failableParallelForEachINSt3__111__wrap_iterIPZNS_6detail17OpToOpPassAdaptor23runOnOperationAsyncImplEbE8OpPMInfoEERZNS4_23runOnOperationAsyncImplEbE3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SE_OT0_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir23failableParallelForEachINSt3__111__wrap_iterIPZNS_6detail17OpToOpPassAdaptor23runOnOperationAsyncImplEbE8OpPMInfoEERZNS4_23runOnOperationAsyncImplEbE3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SE_OT0_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir23failableParallelForEachINSt3__111__wrap_iterIPZNS_6detail17OpToOpPassAdaptor23runOnOperationAsyncImplEbE8OpPMInfoEERZNS4_23runOnOperationAsyncImplEbE3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SE_OT0_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t **std::unique_ptr<mlir::PassInstrumentor>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      v4 = *(v3 + 72);
      if (v4)
      {
        v5 = *(v3 + 80);
        v6 = *(v3 + 72);
        if (v5 != v4)
        {
          do
          {
            v8 = *--v5;
            v7 = v8;
            *v5 = 0;
            if (v8)
            {
              (*(*v7 + 8))(v7);
            }
          }

          while (v5 != v4);
          v6 = *(v3 + 72);
        }

        *(v3 + 80) = v4;
        operator delete(v6);
      }

      std::recursive_mutex::~recursive_mutex(v3);
      MEMORY[0x1AC55A070]();
    }

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

void *llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::grow(uint64_t a1, int a2)
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
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = (*a1 + 16 * v26);
          v27 = *v22;
          if (v24 != *v22)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = (*a1 + 16 * (v31 & v25));
              v27 = *v22;
              if (v24 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          v23 = *(v16 + 1);
          *(v16 + 1) = 0;
          *v22 = v24;
          v22[1] = v23;
          ++*(a1 + 8);
          std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v16 + 1, 0);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -4096;
      *v19 = -4096;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

uint64_t *std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    if (v4)
    {
      v5 = v3 - 8;
      v6 = 16 * v4;
      do
      {
        v7 = *&v5[v6];
        *&v5[v6] = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        v6 -= 16;
      }

      while (v6);
      v3 = *(v2 + 56);
    }

    if (v3 != (v2 + 72))
    {
      free(v3);
    }

    llvm::deallocate_buffer(*(v2 + 32), (16 * *(v2 + 48)));
  }

  return result;
}

void sub_1A6CB8328()
{

  JUMPOUT(0x1AC55A070);
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpPassManager,1u>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 8);
    if (v4 < v3)
    {
      if (*(a1 + 12) < v3)
      {
        v5 = a2;
        if (v4)
        {
          v6 = -24 * v4;
          v7 = (*a1 + 24 * v4 - 24);
          do
          {
            v7 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v7) - 3;
            v6 += 24;
          }

          while (v6);
        }

        *(a1 + 8) = 0;
        llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpPassManager,1u>,false>::grow(a1, v3);
        v4 = 0;
        a2 = v5;
        v8 = *(v5 + 8);
        if (!*(v5 + 8))
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      if (v4)
      {
        v13 = a2;
        v14 = *a2;
        v15 = *a1;
        v16 = 24 * v4;
        do
        {
          llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v15, v14);
          v14 += 24;
          v15 += 24;
          v16 -= 24;
        }

        while (v16);
        a2 = v13;
        v8 = *(v13 + 8);
        if (v4 != v8)
        {
LABEL_24:
          v18 = *a2;
          v19 = *a1;
          v20 = 24 * v4;
          v21 = 24 * v8;
          do
          {
            v22 = (v19 + v20);
            *v22 = v19 + v20 + 16;
            v22[1] = 0x100000000;
            if (*(v18 + v20 + 8))
            {
              llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v22, v18 + v20);
            }

            v19 += 24;
            v21 -= 24;
            v18 += 24;
          }

          while (v20 != v21);
        }
      }

      else
      {
        v4 = 0;
        v8 = *(a2 + 8);
        if (*(a2 + 8))
        {
          goto LABEL_24;
        }
      }

LABEL_21:
      *(a1 + 8) = v3;
      return a1;
    }

    if (v3)
    {
      v9 = *a2;
      v10 = *a1;
      v11 = 24 * v3;
      do
      {
        llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v10, v9);
        v9 += 24;
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
      v12 = (*a1 + 24 * *(a1 + 8));
      if (v12 == v10)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = *a1;
      v12 = (*a1 + 24 * v4);
      if (v12 == *a1)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v12 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v12 - 3);
    }

    while (v12 != v10);
    goto LABEL_21;
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpPassManager,1u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v14);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 24 * v7;
    v9 = v4;
    do
    {
      *v9 = (v9 + 2);
      v9[1] = 0x100000000;
      if (v6[2])
      {
        llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v9, v6);
      }

      v9 += 3;
      v6 += 6;
      v8 -= 24;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = -24 * v10;
      v12 = &v6[6 * v10 - 6];
      do
      {
        v12 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v12) - 3;
        v11 += 24;
      }

      while (v11);
      v6 = *a1;
    }
  }

  v13 = v14;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v13;
}

char ***llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(char ***a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      llvm::SmallVectorImpl<mlir::OpPassManager>::assignRemote(a1, a2);
      return a1;
    }

    v5 = *(a2 + 8);
    v6 = *(a1 + 2);
    if (v6 < v5)
    {
      if (*(a1 + 3) < v5)
      {
        llvm::SmallVectorImpl<mlir::OpPassManager>::clear(a1);
        v33 = 0;
        v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, v5, 8, &v33);
        llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::moveElementsForGrow(a1, v7);
        v8 = v33;
        if (*a1 != (a1 + 2))
        {
          free(*a1);
        }

        v6 = 0;
        *a1 = v7;
        *(a1 + 3) = v8;
        v9 = *(a2 + 8);
        if (!*(a2 + 8))
        {
          goto LABEL_32;
        }

        goto LABEL_34;
      }

      v7 = *a1;
      if (v6)
      {
        std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,mlir::OpPassManager *,mlir::OpPassManager *,mlir::OpPassManager *,0>(v4, &v4[8 * v6], *a1);
        v7 = *a1;
        v9 = *(a2 + 8);
        if (v6 != v9)
        {
LABEL_34:
          v22 = *a2 + 8 * v9;
          v23 = 8 * v6;
          v24 = &v7[v6];
          v25 = (*a2 + v23);
          do
          {
            *v24 = 0;
            v26 = *v25;
            *v25 = 0;
            v27 = *v24;
            *v24 = v26;
            if (v27)
            {
              v28 = *(v27 + 5);
              if (v28)
              {
                v29 = *(v27 + 6);
                v30 = *(v27 + 5);
                if (v29 != v28)
                {
                  do
                  {
                    v32 = *--v29;
                    v31 = v32;
                    *v29 = 0;
                    if (v32)
                    {
                      (*(*v31 + 8))(v31);
                    }
                  }

                  while (v29 != v28);
                  v30 = *(v27 + 5);
                }

                *(v27 + 6) = v28;
                operator delete(v30);
              }

              if (v27[23] < 0)
              {
                operator delete(*v27);
              }

              MEMORY[0x1AC55A070](v27, 0x1032C402C5CA452);
            }

            ++v24;
            ++v25;
          }

          while (v25 != v22);
        }
      }

      else
      {
        v6 = 0;
        v9 = *(a2 + 8);
        if (*(a2 + 8))
        {
          goto LABEL_34;
        }
      }

LABEL_32:
      *(a1 + 2) = v5;
      llvm::SmallVectorImpl<mlir::OpPassManager>::clear(a2);
      return a1;
    }

    v10 = *a1;
    if (v5)
    {
      std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,mlir::OpPassManager *,mlir::OpPassManager *,mlir::OpPassManager *,0>(v4, &v4[8 * v5], v10);
      v12 = v11;
      v13 = &(*a1)[*(a1 + 2)];
      if (v13 == v11)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v12 = *a1;
      v13 = &v10[v6];
      if (v13 == v10)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v15 = *--v13;
      v14 = v15;
      *v13 = 0;
      if (v15)
      {
        v16 = *(v14 + 40);
        if (v16)
        {
          v17 = *(v14 + 48);
          v18 = *(v14 + 40);
          if (v17 != v16)
          {
            do
            {
              v20 = *--v17;
              v19 = v20;
              *v17 = 0;
              if (v20)
              {
                (*(*v19 + 8))(v19);
              }
            }

            while (v17 != v16);
            v18 = *(v14 + 40);
          }

          *(v14 + 48) = v16;
          operator delete(v18);
        }

        if (*(v14 + 23) < 0)
        {
          operator delete(*v14);
        }

        MEMORY[0x1AC55A070](v14, 0x1032C402C5CA452);
      }
    }

    while (v13 != v12);
    goto LABEL_32;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::OpPassManager>::assignRemote(char ***a1, char **a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = &v4[v5];
    do
    {
      v8 = *--v6;
      v7 = v8;
      *v6 = 0;
      if (v8)
      {
        v9 = *(v7 + 40);
        if (v9)
        {
          v10 = *(v7 + 48);
          v11 = *(v7 + 40);
          if (v10 != v9)
          {
            do
            {
              v13 = *--v10;
              v12 = v13;
              *v10 = 0;
              if (v13)
              {
                (*(*v12 + 8))(v12);
              }
            }

            while (v10 != v9);
            v11 = *(v7 + 40);
          }

          *(v7 + 48) = v9;
          operator delete(v11);
        }

        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        MEMORY[0x1AC55A070](v7, 0x1032C402C5CA452);
      }
    }

    while (v6 != v4);
    v4 = *a1;
  }

  if (v4 != (a1 + 2))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 1);
  *(a1 + 1) = result;
  *a2 = (a2 + 2);
  a2[1] = 0;
  return result;
}

uint64_t *std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,mlir::OpPassManager *,mlir::OpPassManager *,mlir::OpPassManager *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        v8 = *(v7 + 40);
        if (v8)
        {
          v9 = *(v7 + 48);
          v10 = *(v7 + 40);
          if (v9 != v8)
          {
            do
            {
              v12 = *--v9;
              v11 = v12;
              *v9 = 0;
              if (v12)
              {
                (*(*v11 + 8))(v11);
              }
            }

            while (v9 != v8);
            v10 = *(v7 + 40);
          }

          *(v7 + 48) = v8;
          operator delete(v10);
        }

        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        MEMORY[0x1AC55A070](v7, 0x1032C402C5CA452);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void mlir::detail::RecoveryReproducerContext::enable(mlir::detail::RecoveryReproducerContext *this)
{
  if (!atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerMutex, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerMutex, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v2 = mlir::detail::RecoveryReproducerContext::reproducerMutex[0];
  std::recursive_mutex::lock(mlir::detail::RecoveryReproducerContext::reproducerMutex[0]);
  if (atomic_load_explicit(&mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
    if (*(mlir::detail::RecoveryReproducerContext::reproducerSet + 32))
    {
      goto LABEL_5;
    }
  }

  else
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&mlir::detail::RecoveryReproducerContext::reproducerSet, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
    if (*(mlir::detail::RecoveryReproducerContext::reproducerSet + 32))
    {
LABEL_5:
      {
        goto LABEL_6;
      }

LABEL_11:
      mlir::detail::RecoveryReproducerContext::enable();
      if (atomic_load_explicit(&mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  llvm::CrashRecoveryContext::Enable(v3);
  {
    goto LABEL_11;
  }

LABEL_6:
  if (!atomic_load_explicit(&mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
LABEL_7:
    llvm::ManagedStaticBase::RegisterManagedStatic(&mlir::detail::RecoveryReproducerContext::reproducerSet, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  }

LABEL_8:
  v4 = this;
  llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::insert(mlir::detail::RecoveryReproducerContext::reproducerSet, &v4);
  std::recursive_mutex::unlock(v2);
}

void mlir::detail::RecoveryReproducerContext::disable(mlir::detail::RecoveryReproducerContext *this)
{
  if (!atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerMutex, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerMutex, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v2 = mlir::detail::RecoveryReproducerContext::reproducerMutex[0];
  std::recursive_mutex::lock(mlir::detail::RecoveryReproducerContext::reproducerMutex[0]);
  if (atomic_load_explicit(&mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
    v4 = this;
    v3 = llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::remove(mlir::detail::RecoveryReproducerContext::reproducerSet, &v4);
    if (atomic_load_explicit(&mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
    {
      goto LABEL_5;
    }

LABEL_8:
    llvm::ManagedStaticBase::RegisterManagedStatic(&mlir::detail::RecoveryReproducerContext::reproducerSet, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
    if (*(mlir::detail::RecoveryReproducerContext::reproducerSet + 32))
    {
      goto LABEL_6;
    }

LABEL_9:
    llvm::CrashRecoveryContext::Disable(v3);
    goto LABEL_6;
  }

  llvm::ManagedStaticBase::RegisterManagedStatic(&mlir::detail::RecoveryReproducerContext::reproducerSet, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  v4 = this;
  v3 = llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::remove(mlir::detail::RecoveryReproducerContext::reproducerSet, &v4);
  if (!atomic_load_explicit(&mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!*(mlir::detail::RecoveryReproducerContext::reproducerSet + 32))
  {
    goto LABEL_9;
  }

LABEL_6:
  std::recursive_mutex::unlock(v2);
}

void appendReproducer(uint64_t a1, mlir::Operation *a2, uint64_t a3, mlir::detail::AsmStateImpl *a4, char a5, char a6)
{
  v46 = a5;
  v45 = a6;
  v38 = 0;
  v42 = 0;
  v43 = 1;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v37 = &unk_1F1A362A8;
  v44 = a1;
  llvm::raw_ostream::SetBufferAndMode(&v37, 0, 0, 0);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v9 = *(a3 + 24);
  if (v9)
  {
    (*(*v9 + 48))(&v33);
    v10 = v33;
    v11 = v40 - v41;
    if (v33)
    {
      if (v11 > 0x18)
      {
        v41 += 25;
        v12 = &v37;
      }

      else
      {
        v10 = v33;
      }

      v15 = (*(*v10 + 16))(v10);
      v16 = v14;
      v17 = v12[4];
      if (v14 <= v12[3] - v17)
      {
        if (v14)
        {
          memcpy(v17, v15, v14);
          v17 = v12[4] + v16;
          v12[4] = v17;
        }
      }

      else
      {
        v12 = llvm::raw_ostream::write(v12, v15, v14);
        v17 = v12[4];
      }

      if (v12[3] == v17)
      {
      }

      else
      {
        *v17 = 96;
        v12[4] = v12[4] + 1;
      }

      *&v25 = *(*(a2 + 6) + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(&v25);
      v29 = 773;
      v28[0] = AttrData;
      v28[1] = v19;
      v28[2] = "(";
      v30[0] = v28;
      v30[2] = a4;
      v31 = 1026;
      *&v25 = v30;
      v26 = ")";
      v27 = 770;
      llvm::Twine::str(&v25, &__p);
      mlir::OpPrintingFlags::OpPrintingFlags(&v25);
      mlir::AsmState::AsmState(v30, a2, &v25, 0, 0);
      operator new();
    }

    if (v11 > 0x1F)
    {
      qmemcpy(v41, "failed to create output stream: ", 32);
      v41 += 32;
      v13 = &v37;
    }

    else
    {
      v13 = llvm::raw_ostream::write(&v37, "failed to create output stream: ", 0x20uLL);
    }

    if (v36 >= 0)
    {
      v20 = &v34;
    }

    else
    {
      v20 = v34;
    }

    if (v36 >= 0)
    {
      v21 = HIBYTE(v36);
    }

    else
    {
      v21 = v35;
    }

    llvm::raw_ostream::write(v13, v20, v21);
    v22 = v33;
    v33 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v34);
    }

    llvm::raw_ostream::~raw_ostream(&v37);
  }

  else
  {
    v23 = std::__throw_bad_function_call[abi:nn200100]();
    llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::remove(v23, v24);
  }
}

uint64_t llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::remove(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(a1 + 4);
    if (v3)
    {
      v4 = *a1;
      v5 = v3 - 1;
      v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
      v7 = *(*a1 + 8 * v6);
      if (*a2 == v7)
      {
LABEL_4:
        *(v4 + 8 * v6) = -8192;
        v10 = *(a1 + 8);
        v8 = a1 + 4;
        v9 = v10;
        v11 = *(v8 - 5) + 1;
        *(v8 - 6) = v2 - 1;
        *(v8 - 5) = v11;
        i = *(v8 - 1);
        v13 = &i[v10];
        if (v10)
        {
          v14 = 8 * v9;
          while (*i != *a2)
          {
            ++i;
            v14 -= 8;
            if (!v14)
            {
              i = v13;
              break;
            }
          }
        }

        v15 = i + 1;
        v16 = v13 - (i + 1);
        if (v13 == i + 1)
        {
          *v8 = v9 - 1;
          return 1;
        }

        goto LABEL_19;
      }

      v23 = 1;
      while (v7 != -4096)
      {
        v24 = v6 + v23++;
        v6 = v24 & v5;
        v7 = *(v4 + 8 * v6);
        if (*a2 == v7)
        {
          goto LABEL_4;
        }
      }
    }
  }

  else
  {
    v19 = *(a1 + 8);
    v8 = a1 + 4;
    v18 = v19;
    if (v19)
    {
      v20 = 8 * v18;
      for (i = *(v8 - 1); *i != *a2; ++i)
      {
        v20 -= 8;
        if (!v20)
        {
          return 0;
        }
      }
    }

    else
    {
      i = *(v8 - 1);
    }

    v21 = *(v8 - 1) + 8 * v18;
    if (i != v21)
    {
      v15 = i + 1;
      v16 = v21 - (i + 1);
      if (v21 == i + 1)
      {
LABEL_20:
        *v8 = v18 - 1;
        return 1;
      }

LABEL_19:
      v22 = v8;
      memmove(i, v15, v16);
      v8 = v22;
      LODWORD(v18) = *v22;
      goto LABEL_20;
    }
  }

  return 0;
}

uint64_t llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::insert(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 8))
  {
    v7 = (a1 + 24);
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v10 = v8;
    if (v9)
    {
      v11 = *a2;
      v12 = 8 * v9;
      v10 = *(a1 + 24);
      while (*v10 != v11)
      {
        ++v10;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_14;
        }
      }
    }

    if (v10 != &v8[v9])
    {
      return 0;
    }

    v11 = *a2;
LABEL_14:
    if (v9 >= *(a1 + 36))
    {
      v16 = (a1 + 24);
      v17 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v9 + 1, 8);
      v7 = v16;
      *(*(a1 + 24) + 8 * *(a1 + 32)) = v17;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 2)
      {
LABEL_16:
        v14 = *v7;
        v15 = 8 * v13;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v14++, v18);
          v15 -= 8;
        }

        while (v15);
      }
    }

    else
    {
      v8[v9] = v11;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 2)
      {
        goto LABEL_16;
      }
    }

    return 1;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, v18);
  if (v18[16] != 1)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *(a1 + 32);
  if (v5 >= *(a1 + 36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v5 + 1, 8);
    LODWORD(v5) = *(a1 + 32);
  }

  *(*(a1 + 24) + 8 * v5) = v4;
  ++*(a1 + 32);
  return 1;
}

void mlir::detail::RecoveryReproducerContext::crashHandler(mlir::detail::RecoveryReproducerContext *this, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!atomic_load_explicit(&mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&mlir::detail::RecoveryReproducerContext::reproducerSet, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  }

  v2 = *(mlir::detail::RecoveryReproducerContext::reproducerSet + 32);
  if (v2)
  {
    v3 = *(mlir::detail::RecoveryReproducerContext::reproducerSet + 24);
    v4 = &v3[v2];
    v5 = "A signal was caught while processing the MLIR module:";
    do
    {
      while (1)
      {
        v6 = *v3;
        v26[0] = 0;
        v26[1] = 0;
        v27 = 0;
        appendReproducer(v26, *(v6 + 24), *(v6 + 32), v6, *(v6 + 40), *(v6 + 41));
        mlir::emitError(*(*(v6 + 24) + 24), &v32);
        if (v32)
        {
          LODWORD(v28) = 3;
          v29 = v5;
          v30 = 53;
          v7 = v34;
          if (v35 >= v36)
          {
            if (v34 <= &v28 && v34 + 24 * v35 > &v28)
            {
              v24 = &v28 - v34;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
              v7 = v34;
              v8 = (v34 + v24);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
              v8 = &v28;
              v7 = v34;
            }
          }

          else
          {
            v8 = &v28;
          }

          v9 = &v7[24 * v35];
          v10 = *v8;
          *(v9 + 2) = v8[2];
          *v9 = v10;
          ++v35;
          if (v32)
          {
            v31 = 260;
            v28 = v26;
            mlir::Diagnostic::operator<<(&v33, &v28);
            if (v32)
            {
              LODWORD(v28) = 3;
              v29 = "; marking pass as failed";
              v30 = 24;
              v11 = v34;
              if (v35 >= v36)
              {
                if (v34 <= &v28 && v34 + 24 * v35 > &v28)
                {
                  v25 = &v28 - v34;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
                  v11 = v34;
                  v12 = (v34 + v25);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
                  v12 = &v28;
                  v11 = v34;
                }
              }

              else
              {
                v12 = &v28;
              }

              v13 = &v11[24 * v35];
              v14 = *v12;
              *(v13 + 2) = v12[2];
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
            v19 = v5;
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
                  MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
                }
              }

              while (v20 != v18);
              v21 = v38;
            }

            v39 = v18;
            operator delete(v21);
            v5 = v19;
          }

          if (v34 != v37)
          {
            free(v34);
          }
        }

        if (SHIBYTE(v27) < 0)
        {
          break;
        }

        if (++v3 == v4)
        {
          return;
        }
      }

      operator delete(v26[0]);
      ++v3;
    }

    while (v3 != v4);
  }
}

void mlir::detail::PassCrashReproducerGenerator::~PassCrashReproducerGenerator(mlir::detail::PassCrashReproducerGenerator::Impl **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::detail::PassCrashReproducerGenerator::Impl::~Impl(v2);
  }
}

void mlir::detail::PassCrashReproducerGenerator::prepareReproducerFor(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  __p[3] = a4;
  memset(__p, 0, 24);
  v11 = 0;
  v15 = 0;
  v16 = 1;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v10 = &unk_1F1A362A8;
  v17 = __p;
  llvm::raw_ostream::SetBufferAndMode(&v10, 0, 0, 0);
  if (a2 != a3)
  {
    v7 = *a2;
    v6 = a2 + 1;
    mlir::Pass::printAsTextualPipeline(v7, &v10);
    while (v6 != a3)
    {
      while ((v13 - v14) <= 1)
      {
        llvm::raw_ostream::write(&v10, ", ", 2uLL);
        v8 = *v6++;
        mlir::Pass::printAsTextualPipeline(v8, &v10);
        if (v6 == a3)
        {
          goto LABEL_7;
        }
      }

      *v14++ = 8236;
      v9 = *v6++;
      mlir::Pass::printAsTextualPipeline(v9, &v10);
    }
  }

LABEL_7:
  std::make_unique[abi:nn200100]<mlir::detail::RecoveryReproducerContext,std::string &,mlir::Operation *&,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> &,BOOL &,0>();
}

void mlir::detail::PassCrashReproducerGenerator::finalize(uint64_t *a1, uint64_t a2, char a3)
{
  v39[25] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(*a1 + 48);
  if (v4)
  {
    if ((a3 & 1) == 0)
    {
      mlir::emitError(*(a2 + 24), &v27);
      if (v27)
      {
        LODWORD(v38) = 3;
        v39[0] = "Failures have been detected while processing an MLIR pass pipeline";
        v39[1] = 66;
        v9 = &v38;
        v10 = v28;
        if (v29 >= v30)
        {
          if (v28 <= &v38 && v28 + 24 * v29 > &v38)
          {
            v23 = &v38 - v28;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v31, v29 + 1, 24);
            v10 = v28;
            v9 = v28 + v23;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v31, v29 + 1, 24);
            v9 = &v38;
            v10 = v28;
          }
        }

        v11 = &v10[24 * v29];
        v12 = *v9;
        *(v11 + 2) = *(v9 + 2);
        *v11 = v12;
        ++v29;
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v38, &v27);
      if (v27)
      {
        mlir::InFlightDiagnostic::report(&v27);
      }

      if (v37 == 1)
      {
        if (v36 != &v37)
        {
          free(v36);
        }

        v13 = __p;
        if (__p)
        {
          v14 = v35;
          v15 = __p;
          if (v35 != __p)
          {
            do
            {
              v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
            }

            while (v14 != v13);
            v15 = __p;
          }

          v35 = v13;
          operator delete(v15);
        }

        v16 = v32;
        if (v32)
        {
          v17 = v33;
          v18 = v32;
          if (v33 != v32)
          {
            do
            {
              v20 = *--v17;
              v19 = v20;
              *v17 = 0;
              if (v20)
              {
                MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
              }
            }

            while (v17 != v16);
            v18 = v32;
          }

          v33 = v16;
          operator delete(v18);
        }

        if (v28 != v31)
        {
          free(v28);
        }
      }

      v21 = *a1;
      if (*(*a1 + 32))
      {
        v22 = *(*(v21 + 40) + 8 * *(v21 + 48) - 8);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        appendReproducer(&v24, *(v22 + 24), *(v22 + 32), v22, *(v22 + 40), *(v22 + 41));
        mlir::Diagnostic::attachNote(v39, 0, 0);
      }

      v24 = 0;
      v25 = 0;
      v26 = 0;
      appendReproducer(&v24, *(**(v21 + 40) + 24), *(**(v21 + 40) + 32), **(v21 + 40), *(**(v21 + 40) + 40), *(**(v21 + 40) + 41));
      mlir::Diagnostic::attachNote(v39, 0, 0);
    }

    v5 = 8 * v4;
    v6 = *(v3 + 40) - 8;
    do
    {
      v7 = *(v6 + v5);
      *(v6 + v5) = 0;
      if (v7)
      {
        mlir::Operation::erase(*(v7 + 24), a2);
        mlir::detail::RecoveryReproducerContext::disable(v7);
        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        MEMORY[0x1AC55A070](v7, 0x1032C4016633A97);
      }

      v5 -= 8;
    }

    while (v5);
    *(v3 + 48) = 0;
  }
}

const char *formatPassOpReproducerMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 16;
  v6 = *(a1 + 16);
  LODWORD(FunctionType) = 3;
  v55 = 1;
  v8 = *(a1 + 24);
  v9 = &FunctionType;
  if (v8 >= *(a1 + 28))
  {
    if (v6 <= &FunctionType && v6 + 24 * v8 > &FunctionType)
    {
      v45 = &FunctionType - v6;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v6 = *(a1 + 16);
      v9 = &v45[v6];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v6 = *(a1 + 16);
      v9 = &FunctionType;
    }
  }

  v10 = v6 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = v9[2];
  *v10 = v11;
  ++*(a1 + 24);
  v12 = (*(*a2 + 16))(a2);
  v56 = 261;
  FunctionType = v12;
  v54 = v13;
  v14 = mlir::Diagnostic::operator<<(a1, &FunctionType);
  v16 = v14 + 16;
  v15 = *(v14 + 16);
  LODWORD(v57) = 3;
  v59 = 5;
  v17 = *(v14 + 24);
  v18 = &v57;
  if (v17 >= *(v14 + 28))
  {
    if (v15 <= &v57 && v15 + 24 * v17 > &v57)
    {
      v46 = &v57 - v15;
      v47 = v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14 + 16, (v14 + 32), v17 + 1, 24);
      v14 = v47;
      v15 = *(v47 + 16);
      v18 = &v46[v15];
    }

    else
    {
      v42 = v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14 + 16, (v14 + 32), v17 + 1, 24);
      v14 = v42;
      v15 = *(v42 + 16);
      v18 = &v57;
    }
  }

  v19 = v15 + 24 * *(v14 + 24);
  v20 = *v18;
  *(v19 + 16) = v18[2];
  *v19 = v20;
  v21 = *(v14 + 28);
  v22 = (*(v14 + 24) + 1);
  *(v14 + 24) = v22;
  LODWORD(v57) = 3;
  v58 = "'";
  v59 = 1;
  v23 = *(v14 + 16);
  v24 = &v57;
  if (v22 >= v21)
  {
    if (v23 <= &v57 && v23 + 24 * v22 > &v57)
    {
      v48 = &v57 - v23;
      v49 = v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v16, (v14 + 32), v22 + 1, 24);
      v14 = v49;
      v23 = *(v49 + 16);
      v24 = &v48[v23];
    }

    else
    {
      v43 = v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v16, (v14 + 32), v22 + 1, 24);
      v14 = v43;
      v23 = *(v43 + 16);
      v24 = &v57;
    }
  }

  v25 = v23 + 24 * *(v14 + 24);
  v26 = *v24;
  *(v25 + 16) = v24[2];
  *v25 = v26;
  ++*(v14 + 24);
  v27 = mlir::Diagnostic::operator<<(v14, *(a3 + 48));
  v28 = *(v27 + 16);
  LODWORD(v57) = 3;
  v58 = "' operation";
  v59 = 11;
  v29 = *(v27 + 24);
  v30 = &v57;
  if (v29 >= *(v27 + 28))
  {
    if (v28 <= &v57 && v28 + 24 * v29 > &v57)
    {
      v50 = &v57 - v28;
      v51 = v27;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v27 + 16, (v27 + 32), v29 + 1, 24);
      v27 = v51;
      v28 = *(v51 + 16);
      v30 = &v50[v28];
    }

    else
    {
      v44 = v27;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v27 + 16, (v27 + 32), v29 + 1, 24);
      v27 = v44;
      v28 = *(v44 + 16);
      v30 = &v57;
    }
  }

  v31 = v28 + 24 * *(v27 + 24);
  v32 = *v30;
  *(v31 + 16) = v30[2];
  *v31 = v32;
  ++*(v27 + 24);
  result = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
  if (!result)
  {
    goto LABEL_9;
  }

  if (*(a3 + 47) && (result = mlir::Operation::getInherentAttr(a3, "sym_name", 8), (v34 & 1) != 0))
  {
    if (!result)
    {
LABEL_9:
      v57 = 0;
      v58 = result;
      return result;
    }
  }

  else if (!mlir::DictionaryAttr::contains(a3 + 56, "sym_name", 8uLL))
  {
    result = 0;
    v57 = 0;
    v58 = 0;
    return result;
  }

  result = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
  v57 = a3;
  v58 = result;
  if (a3)
  {
    LODWORD(FunctionType) = 3;
    v54 = ": @";
    v55 = 3;
    v35 = *(a1 + 24);
    v36 = *(a1 + 16);
    v37 = &FunctionType;
    if (v35 >= *(a1 + 28))
    {
      if (v36 <= &FunctionType && v36 + 24 * v35 > &FunctionType)
      {
        v52 = &FunctionType - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (a1 + 32), v35 + 1, 24);
        v36 = *(a1 + 16);
        v37 = &v52[v36];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (a1 + 32), v35 + 1, 24);
        v36 = *(a1 + 16);
        v37 = &FunctionType;
      }
    }

    v38 = v36 + 24 * *(a1 + 24);
    v39 = *v37;
    *(v38 + 16) = v37[2];
    *v38 = v39;
    ++*(a1 + 24);
    FunctionType = mlir::FunctionOpInterface::getFunctionType(&v57);
    AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
    v56 = 261;
    FunctionType = AttrData;
    v54 = v41;
    return mlir::Diagnostic::operator<<(a1, &FunctionType);
  }

  return result;
}

void mlir::PassManager::runWithCrashRecovery(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a3;
  v12 = a2;
  v5 = *(a1 + 32);
  v6 = mlir::OpPassManager::begin(a1);
  MemorySpace = mlir::MemRefType::getMemorySpace(a1);
  v8 = (*(a1 + 56) >> 1) & 1;
  llvm::CrashRecoveryContext::Enable(MemorySpace);
  v9 = *v5;
  *(v9 + 144) = v8;
  if ((*(v9 + 32) & 1) == 0)
  {
    mlir::detail::PassCrashReproducerGenerator::prepareReproducerFor(v5, v6, MemorySpace, a2);
  }

  v14 = 0;
  llvm::CrashRecoveryContext::CrashRecoveryContext(v11);
  v10[0] = &v14;
  v10[1] = a1;
  v10[2] = &v12;
  v10[3] = &v13;
  llvm::CrashRecoveryContext::RunSafelyOnThread(v11, llvm::function_ref<void ()(void)>::callback_fn<mlir::PassManager::runWithCrashRecovery(mlir::Operation *,mlir::AnalysisManager)::$_0>, v10, 0);
}

void mlir::AsmResourcePrinter::fromCallable<appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0>(llvm::StringRef,appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0 &&)::Printer::~Printer(void **a1)
{
  mlir::AsmResourcePrinter::~AsmResourcePrinter(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::AsmResourcePrinter::fromCallable<appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0>(llvm::StringRef,appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0 &&)::Printer::buildResources(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = v5[1];
  }

  (*(*a3 + 24))(a3, "pipeline", 8, v7, v8);
  (*(*a3 + 16))(a3, "disable_threading", 17, **(a1 + 40));
  v9 = **(a1 + 48);
  v10 = *(*a3 + 16);

  return v10(a3, "verify_each", 11, v9);
}

std::recursive_mutex *llvm::object_deleter<llvm::sys::SmartMutex<true>>::call(std::recursive_mutex *result)
{
  if (result)
  {
    std::recursive_mutex::~recursive_mutex(result);

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

uint64_t llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2 != (v1 + 40))
    {
      free(v2);
    }

    llvm::deallocate_buffer(*v1, (8 * *(v1 + 16)));
  }

  return result;
}

void mlir::detail::PassCrashReproducerGenerator::Impl::~Impl(mlir::detail::PassCrashReproducerGenerator::Impl *this)
{
  v2 = *(this + 16);
  if (v2 != this + 144)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 13), (16 * *(this + 30)));
}

void llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::shrink_and_clear(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = 1 << (33 - __clz(v2 - 1));
  if (v3 <= 64)
  {
    v3 = 64;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 != v1)
  {
    llvm::deallocate_buffer(*a1, (16 * v1));
  }

  *(a1 + 8) = 0;
  if (v1)
  {
    v5 = *a1;

    memset_pattern16(v5, &unk_1A75D94B0, 16 * v1);
  }
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::detail::RecoveryReproducerContext>,false>::grow(uint64_t a1, unint64_t a2)
{
  v25 = 0;
  v3 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v25);
  v6 = *a1;
  v7 = *a1;
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v10 = 8 * v8;
  if (v9 < 0xB)
  {
    v11 = v5;
LABEL_12:
    v20 = &v6[8 * v8];
    do
    {
      v21 = *v7;
      *v7 = 0;
      v7 += 8;
      *v11 = v21;
      v11 += 8;
    }

    while (v7 != v20);
    goto LABEL_14;
  }

  v12 = v6 >= &v5[v10] || v5 >= &v6[v10];
  v11 = v5;
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v9 + 1;
  v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
  v11 = &v5[v14];
  v7 = &v6[v14];
  v15 = (v6 + 16);
  v16 = v5 + 16;
  v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = *(v15 - 1);
    v19 = *v15;
    *(v15 - 1) = 0uLL;
    *v15 = 0uLL;
    *(v16 - 1) = v18;
    *v16 = v19;
    v15 += 2;
    v16 += 2;
    v17 -= 4;
  }

  while (v17);
  if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  v22 = v6 - 8;
  do
  {
    v23 = *&v22[v10];
    *&v22[v10] = 0;
    if (v23)
    {
      mlir::Operation::erase(*(v23 + 24), v4);
      mlir::detail::RecoveryReproducerContext::disable(v23);
      if (*(v23 + 23) < 0)
      {
        operator delete(*v23);
      }

      MEMORY[0x1AC55A070](v23, 0x1032C4016633A97);
    }

    v10 -= 8;
  }

  while (v10);
  v7 = *a1;
LABEL_21:
  v24 = v25;
  if (v7 != v3)
  {
    free(v7);
  }

  *a1 = v5;
  *(a1 + 12) = v24;
}

uint64_t llvm::function_ref<void ()(void)>::callback_fn<mlir::PassManager::runWithCrashRecovery(mlir::Operation *,mlir::AnalysisManager)::$_0>(uint64_t a1)
{
  result = mlir::PassManager::runPasses(*(a1 + 8), **(a1 + 16), **(a1 + 24));
  **a1 = result;
  return result;
}

uint64_t mlir::detail::pass_options::parseCommaSeparatedList(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v9 = a5;
  v28 = *MEMORY[0x1E69E9840];
  v24 = a4;
  v25 = a5;
  v26[0] = v26;
  v27 = &llvm::detail::UniqueFunctionBase<unsigned long,llvm::StringRef,unsigned long,char>::CallbacksHolder<mlir::detail::pass_options::parseCommaSeparatedList(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>)::$_0,mlir::detail::pass_options::parseCommaSeparatedList(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>)::$_0,void>::Callbacks + 2;
  v10 = llvm::detail::UniqueFunctionBase<unsigned long,llvm::StringRef,unsigned long,char>::CallbacksHolder<mlir::detail::pass_options::parseCommaSeparatedList(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>)::$_0,mlir::detail::pass_options::parseCommaSeparatedList(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>)::$_0,void>::Callbacks(v26);
  if (v10 == -1)
  {
LABEL_11:
    updated = extractArgAndUpdateOptions(&v24, v9);
    result = a6(a7, updated, v19);
    v21 = v27;
    if (v27 < 8)
    {
      return result;
    }

    goto LABEL_14;
  }

  v11 = v10;
  while (1)
  {
    v12 = extractArgAndUpdateOptions(&v24, v11);
    if ((a6(a7, v12, v13) & 1) == 0)
    {
      break;
    }

    v15 = v25 != 0;
    if (v25)
    {
      v16 = v24 + 1;
    }

    else
    {
      v16 = v24;
    }

    v9 = (v25 - v15);
    v24 = v16;
    v25 -= v15;
    if ((v27 & 2) != 0)
    {
      v17 = v26;
    }

    else
    {
      v17 = v26[0];
    }

    v11 = (*(v27 & 0xFFFFFFFFFFFFFFF8))(v17, v16, v9, 0, 0x2Cu);
    if (v11 == -1)
    {
      goto LABEL_11;
    }
  }

  result = 0;
  v21 = v27;
  if (v27 >= 8)
  {
LABEL_14:
    if ((v21 & 4) != 0)
    {
      v22 = v26[0];
      if ((v21 & 2) != 0)
      {
        v22 = v26;
      }

      v23 = result;
      (*((v21 & 0xFFFFFFFFFFFFFFF8) + 16))(v22, v14);
      result = v23;
    }

    if ((v21 & 2) == 0)
    {
      llvm::deallocate_buffer(v26[0], v26[1]);
    }
  }

  return result;
}

unsigned __int8 *extractArgAndUpdateOptions(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v4 = a1[1];
  if (v4 >= a2)
  {
    v4 = a2;
  }

  v23 = *a1;
  v24 = v4;
  first_not_of = llvm::StringRef::find_first_not_of(&v23, " \t\n\v\f\r", 6, 0);
  if (first_not_of >= v24)
  {
    v6 = v24;
  }

  else
  {
    v6 = first_not_of;
  }

  v7 = &v24[-v6];
  v25 = &v23[v6];
  v26 = &v24[-v6];
  last_not_of = llvm::StringRef::find_last_not_of(&v25, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v25;
  if (last_not_of + 1 < v26)
  {
    v10 = last_not_of + 1;
  }

  else
  {
    v10 = v26;
  }

  v11 = v26 - v7 + v10;
  if (v26 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v26;
  }

  v13 = a1[1];
  if (v13 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = a1[1];
  }

  v25 = &v14[*a1];
  v26 = v13 - v14;
  v15 = llvm::StringRef::find_first_not_of(&v25, " \t\n\v\f\r", 6, 0);
  v16 = v26;
  if (v15 >= v26)
  {
    v17 = v26;
  }

  else
  {
    v17 = v15;
  }

  *a1 = &v25[v17];
  a1[1] = (v16 - v17);
  if (v12 >= 3)
  {
    v18 = *v9;
    v19 = &v9[v12];
    if (v18 == 34)
    {
      if (*(v19 - 1) != 34)
      {
        return v9;
      }
    }

    else if (v18 == 123)
    {
      if (*(v19 - 1) != 125)
      {
        return v9;
      }
    }

    else if (v18 != 39 || *(v19 - 1) != 39)
    {
      return v9;
    }

    v23 = v9 + 1;
    v24 = (v12 - 2);
    v20 = llvm::StringRef::find_first_not_of(&v23, " \t\n\v\f\r", 6, 0);
    if (v20 >= v24)
    {
      v21 = v24;
    }

    else
    {
      v21 = v20;
    }

    v25 = &v23[v21];
    v26 = &v24[-v21];
    llvm::StringRef::find_last_not_of(&v25, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
    return v25;
  }

  return v9;
}

uint64_t mlir::detail::PassOptions::copyOptionValuesFrom(uint64_t result, uint64_t a2)
{
  v2 = *(result + 160);
  v3 = *(result + 168);
  if (v2 != v3)
  {
    v4 = *(a2 + 160);
    v5 = *(a2 + 168);
    if (v4 != v5)
    {
      v6 = v4 + 8;
      v7 = v2 + 8;
      do
      {
        result = (*(**(v7 - 8) + 40))(*(v7 - 8), *(v6 - 8));
        if (v7 == v3)
        {
          break;
        }

        v7 += 8;
        v8 = v6 == v5;
        v6 += 8;
      }

      while (!v8);
    }
  }

  return result;
}

uint64_t mlir::detail::PassOptions::parseFromString(uint64_t a1, unsigned __int8 *a2, unint64_t a3, llvm::raw_ostream *a4)
{
  if (!a3)
  {
    return 1;
  }

  v5 = a3;
  while (2)
  {
    v8 = 0;
    v48 = a2;
    v49 = v5;
    do
    {
      v9 = v8[a2];
      if (v9 == 61)
      {
        updated = extractArgAndUpdateOptions(&v48, v8);
        v14 = v17;
        v18 = v49;
        v19 = v49 != 0;
        if (v49)
        {
          v20 = v48 + 1;
        }

        else
        {
          v20 = v48;
        }

        v21 = v49 - v19;
        v48 = v20;
        v49 -= v19;
        if (v18 < 2)
        {
          v22 = 0;
          goto LABEL_58;
        }

        v22 = 0;
        while (1)
        {
          v25 = v22[v20];
          switch(v25)
          {
            case '""':
              v37 = v22 + 1;
              if (v21 > (v22 + 1))
              {
                v38 = 34;
LABEL_17:
                v23 = memchr(&v37[v20], v38, v21 - v37);
                v24 = v23 - v20 == -1 || v23 == 0;
                if (!v24)
                {
                  v22 = (v23 - v20);
                }
              }

              break;
            case '\'':
              v37 = v22 + 1;
              if (v21 > (v22 + 1))
              {
                v38 = 39;
                goto LABEL_17;
              }

              break;
            case ' ':
              goto LABEL_58;
            default:
              v26 = v22 + 1;
              if (v25 == 123 && v26 != v21)
              {
                v28 = 1;
                do
                {
                  v29 = v26[v20];
                  if (v29 > 0x7A)
                  {
                    if (v29 == 123)
                    {
                      ++v28;
                    }

                    else if (v29 == 125 && !--v28)
                    {
                      goto LABEL_22;
                    }
                  }

                  else
                  {
                    if (v29 != 34)
                    {
                      v24 = v29 == 39;
                      v30 = (v22 + 2);
                      if (!v24 || v21 <= v30)
                      {
                        goto LABEL_32;
                      }

                      v32 = v21 - v30;
                      v33 = &v20[v30];
                      v34 = 39;
                      goto LABEL_47;
                    }

                    v32 = v21 - (v22 + 2);
                    if (v21 > (v22 + 2))
                    {
                      v33 = &v22[v20 + 2];
                      v34 = 34;
LABEL_47:
                      v35 = memchr(v33, v34, v32);
                      if (v35 - v20 != -1 && v35 != 0)
                      {
                        v26 = (v35 - v20);
                      }
                    }
                  }

LABEL_32:
                  v22 = v26++;
                }

                while (v26 != v21);
              }

              break;
          }

LABEL_22:
          if (++v22 == v21)
          {
            v22 = v21;
LABEL_58:
            v16 = extractArgAndUpdateOptions(&v48, v22);
            v15 = v39;
            a2 = v48;
            v5 = v49;
            if (!v14)
            {
              goto LABEL_3;
            }

LABEL_59:
            v40 = llvm::StringMapImpl::hash(updated, v14, v10, v11);
            Key = llvm::StringMapImpl::FindKey((a1 + 128), updated, v14, v40);
            if (Key != -1 && Key != *(a1 + 136))
            {
              if ((llvm::cl::ProvidePositionalOption(*(*(*(a1 + 128) + 8 * Key) + 8), v16, v15, 0) & 1) == 0)
              {
                goto LABEL_3;
              }

              return 0;
            }

            v43 = *(a4 + 4);
            if (*(a4 + 3) - v43 > 0x25uLL)
            {
              qmemcpy(v43, "<Pass-Options-Parser>: no such option ", 38);
              v47 = *(a4 + 3);
              v44 = (*(a4 + 4) + 38);
              *(a4 + 4) = v44;
              if (v14 <= v47 - v44)
              {
LABEL_66:
                memcpy(v44, updated, v14);
                v45 = *(a4 + 3);
                v46 = (*(a4 + 4) + v14);
                *(a4 + 4) = v46;
                if (v45 != v46)
                {
LABEL_67:
                  result = 0;
                  *v46 = 10;
                  ++*(a4 + 4);
                  return result;
                }

LABEL_71:
                llvm::raw_ostream::write(a4, "\n", 1uLL);
                return 0;
              }
            }

            else
            {
              a4 = llvm::raw_ostream::write(a4, "<Pass-Options-Parser>: no such option ", 0x26uLL);
              v44 = *(a4 + 4);
              if (v14 <= *(a4 + 3) - v44)
              {
                goto LABEL_66;
              }
            }

            a4 = llvm::raw_ostream::write(a4, updated, v14);
            v46 = *(a4 + 4);
            if (*(a4 + 3) != v46)
            {
              goto LABEL_67;
            }

            goto LABEL_71;
          }
        }
      }

      if (v9 == 32)
      {
        goto LABEL_9;
      }

      ++v8;
    }

    while (v5 != v8);
    v8 = v5;
LABEL_9:
    updated = extractArgAndUpdateOptions(&v48, v8);
    v14 = v13;
    v15 = 0;
    v16 = 0;
    a2 = v48;
    v5 = v49;
    if (v13)
    {
      goto LABEL_59;
    }

LABEL_3:
    if (v5)
    {
      continue;
    }

    return 1;
  }
}

void mlir::detail::PassOptions::print(mlir::detail::PassOptions *this, llvm::raw_ostream *a2)
{
  v30[4] = *MEMORY[0x1E69E9840];
  if (!*(this + 35))
  {
    return;
  }

  v4 = *(this + 20);
  v3 = *(this + 21);
  __base = v30;
  v29 = 0x400000000;
  v5 = v3 - v4;
  v6 = (v3 - v4) >> 3;
  if (v6 < 5)
  {
    v7 = 0;
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__base, v30, v6, 8);
    v7 = v29;
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }

  v8 = __base + 8 * v7;
  if (v5 - 8 < 0x38)
  {
    goto LABEL_32;
  }

  v9 = __base + 8 * v7;
  if ((v9 - v4) < 0x20)
  {
    goto LABEL_32;
  }

  v10 = ((v5 - 8) >> 3) + 1;
  v11 = 8 * (v10 & 0x3FFFFFFFFFFFFFFCLL);
  v8 = (v8 + v11);
  v12 = &v4[v11];
  v13 = (v4 + 16);
  v14 = v9 + 16;
  v15 = v10 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v16 = *v13;
    *(v14 - 1) = *(v13 - 1);
    *v14 = v16;
    v13 += 2;
    v14 += 2;
    v15 -= 4;
  }

  while (v15);
  v4 = v12;
  if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
  {
LABEL_32:
    do
    {
      v17 = *v4;
      v4 += 8;
      *v8++ = v17;
    }

    while (v4 != v3);
  }

LABEL_12:
  v18 = v7 + (v5 >> 3);
  LODWORD(v29) = v18;
  if (v18 >= 2)
  {
    qsort(__base, v18, 8uLL, mlir::detail::PassOptions::print(llvm::raw_ostream &)const::$_0::__invoke);
  }

  v19 = *(a2 + 4);
  if (v19 < *(a2 + 3))
  {
    *(a2 + 4) = v19 + 1;
    *v19 = 123;
    v20 = v29;
    if (!v29)
    {
      goto LABEL_19;
    }

LABEL_18:
    v21 = __base;
    (*(**__base + 24))(*__base, a2);
    if (v20 != 1)
    {
      v24 = (v21 + 8);
      v25 = 8 * v20 - 8;
      do
      {
        v27 = *(a2 + 4);
        if (*(a2 + 3) == v27)
        {
          llvm::raw_ostream::write(a2, " ", 1uLL);
        }

        else
        {
          *v27 = 32;
          ++*(a2 + 4);
        }

        v26 = *v24++;
        (*(*v26 + 24))(v26, a2);
        v25 -= 8;
      }

      while (v25);
    }

    goto LABEL_19;
  }

  llvm::raw_ostream::write(a2, 123);
  v20 = v29;
  if (v29)
  {
    goto LABEL_18;
  }

LABEL_19:
  v22 = *(a2 + 4);
  if (v22 >= *(a2 + 3))
  {
    llvm::raw_ostream::write(a2, 125);
    v23 = __base;
    if (__base == v30)
    {
      return;
    }
  }

  else
  {
    *(a2 + 4) = v22 + 1;
    *v22 = 125;
    v23 = __base;
    if (__base == v30)
    {
      return;
    }
  }

  free(v23);
}

uint64_t mlir::detail::PassOptions::print(llvm::raw_ostream &)const::$_0::__invoke(void *a1, uint64_t a2)
{
  v3 = (*(**a1 + 32))(*a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = (*(**a2 + 32))();
  v7 = *(v6 + 24);
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 24);
  }

  if (v8)
  {
    v9 = memcmp(v4, *(v6 + 16), v8);
    if (v9)
    {
      return (v9 >> 31) | 1u;
    }
  }

  if (v5 < v7)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (v5 == v7)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

BOOL llvm::cl::OptionValueCopy<std::string>::compare(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) != 1 || *(a1 + 32) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  return memcmp(v6, v9, v3) == 0;
}

unint64_t llvm::detail::UniqueFunctionBase<unsigned long,llvm::StringRef,unsigned long,char>::CallImpl<mlir::detail::pass_options::parseCommaSeparatedList(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>)::$_0>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  if (a3 <= a4)
  {
    return -1;
  }

  v8 = a5;
  while (1)
  {
    v9 = *(a2 + a4);
    if (v9 == v8)
    {
      return a4;
    }

    if (*(a2 + a4) <= 0x27u)
    {
      if (v9 == 34)
      {
        v11 = a3 - (a4 + 1);
        if (a3 > a4 + 1)
        {
          v12 = (a2 + a4 + 1);
          v13 = 34;
LABEL_19:
          v14 = memchr(v12, v13, v11);
          if (v14)
          {
            a4 = v14 - a2;
          }

          else
          {
            a4 = -1;
          }

          goto LABEL_4;
        }

        goto LABEL_22;
      }

      if (v9 == 39)
      {
        v11 = a3 - (a4 + 1);
        if (a3 > a4 + 1)
        {
          v12 = (a2 + a4 + 1);
          v13 = 39;
          goto LABEL_19;
        }

LABEL_22:
        a4 = -1;
      }
    }

    else
    {
      switch(v9)
      {
        case '(':
          v10 = *(*(*a1 + 24) & 0xFFFFFFFFFFFFFFF8);
          break;
        case '[':
          v10 = *(*(*a1 + 24) & 0xFFFFFFFFFFFFFFF8);
          break;
        case '{':
          v10 = *(*(*a1 + 24) & 0xFFFFFFFFFFFFFFF8);
          break;
        default:
          goto LABEL_4;
      }

      a4 = v10();
    }

LABEL_4:
    if (++a4 >= a3)
    {
      return -1;
    }
  }
}

void std::vector<unsigned int>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
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
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
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

mlir::Pass::Statistic *mlir::Pass::Statistic::Statistic(mlir::Pass::Statistic *this, mlir::Pass *a2, const char *a3, const char *a4)
{
  v6 = this;
  std::vector<mlir::Operation *>::push_back[abi:nn200100](a2 + 128, &v6);
  return this;
}

void mlir::OpPassManager::mergeStatisticsInto(mlir::OpPassManager *this, mlir::OpPassManager *a2)
{
  v4 = mlir::OpPassManager::begin(this);
  MemorySpace = mlir::MemRefType::getMemorySpace(this);
  v6 = mlir::OpPassManager::begin(a2);
  v7 = mlir::MemRefType::getMemorySpace(a2);
  if (v4 != MemorySpace)
  {
    v8 = v7;
    if (v6 != v7)
    {
      while (1)
      {
        v9 = *v4;
        v10 = *v6;
        v11 = *(*v4 + 8);
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
          {
            goto LABEL_5;
          }
        }

        else
        {
          mlir::OpPassManager::mergeStatisticsInto();
          if (v11 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
          {
LABEL_5:
            v12 = *(v9 + 352);
            v13 = *(v10 + 352);
            if (v12)
            {
              v14 = v13 == 0;
            }

            else
            {
              v14 = 1;
            }

            if (!v14)
            {
              v15 = *(v9 + 344);
              v16 = *(v10 + 344);
              v17 = 8 * v13 - 8;
              v18 = 8 * v12 - 8;
              do
              {
                mlir::OpPassManager::mergeStatisticsInto(v15, v16);
                if (!v18)
                {
                  break;
                }

                v15 = (v15 + 8);
                v16 = (v16 + 8);
                v19 = v17;
                v17 -= 8;
                v18 -= 8;
              }

              while (v19);
            }
          }
        }

        v4 += 8;
        if (v4 != MemorySpace && ++v6 != v8)
        {
          continue;
        }

        return;
      }
    }
  }
}

void prepareStatistics(mlir::OpPassManager *a1)
{
  v2 = mlir::OpPassManager::begin(a1);
  MemorySpace = mlir::MemRefType::getMemorySpace(a1);
  if (v2 != MemorySpace)
  {
    v4 = MemorySpace;
    do
    {
      v5 = *v2;
      v6 = *(*v2 + 8);
      {
        if (v6 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
        {
          goto LABEL_7;
        }
      }

      else
      {
        mlir::OpPassManager::mergeStatisticsInto();
        if (v6 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
        {
LABEL_7:
          v7 = *(v5 + 344);
          v8 = *(v5 + 352);
          v9 = *(v5 + 376);
          if (v9)
          {
            v10 = *(v5 + 368);
            v11 = v10 + 24 * v9;
            do
            {
              v12 = *(v10 + 8);
              if (v12)
              {
                v13 = 0;
                v14 = 8 * v12;
                do
                {
                  prepareStatistics((*v10 + v13));
                  mlir::OpPassManager::mergeStatisticsInto((*v10 + v13), (v7 + v13));
                  v13 += 8;
                }

                while (v14 != v13);
              }

              v10 += 24;
            }

            while (v10 != v11);
          }

          if (v8)
          {
            v15 = 8 * v8;
            do
            {
              prepareStatistics(v7);
              v7 = (v7 + 8);
              v15 -= 8;
            }

            while (v15);
          }
        }
      }

      v2 += 8;
    }

    while (v2 != v4);
  }
}

uint64_t std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A02440;
  a2[1] = v2;
  return result;
}

void std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::operator()(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 8);
  {
    if (v4 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return;
    }
  }

  else
  {
    mlir::OpPassManager::mergeStatisticsInto();
    if (v4 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return;
    }
  }

  v5 = *(v3 + 352);
  if (v5)
  {
    v6 = *(v3 + 344);
    v7 = (v6 + 8 * v5);
    while (1)
    {
      v8 = mlir::OpPassManager::begin(v6);
      MemorySpace = mlir::MemRefType::getMemorySpace(v6);
      if (v8 != MemorySpace)
      {
        break;
      }

LABEL_7:
      v6 = (v6 + 8);
      if (v6 == v7)
      {
        return;
      }
    }

    v10 = MemorySpace;
    while (1)
    {
      v11 = *(result + 8);
      v15 = *v8;
      v12 = *(v11 + 24);
      if (!v12)
      {
        break;
      }

      (*(*v12 + 48))(v12, &v15);
      if (++v8 == v10)
      {
        goto LABEL_7;
      }
    }

    v13 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::target(v13, v14);
  }
}

uint64_t std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZL18printResultsAsListRN4llvm11raw_ostreamERN4mlir13OpPassManagerEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZL18printResultsAsListRN4llvm11raw_ostreamERN4mlir13OpPassManagerEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZL18printResultsAsListRN4llvm11raw_ostreamERN4mlir13OpPassManagerEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZL18printResultsAsListRN4llvm11raw_ostreamERN4mlir13OpPassManagerEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void mlir::pdl::PDLDialect::PDLDialect(mlir::pdl::PDLDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "pdl", 3, a2, &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id);
  *v2 = &unk_1F1A024D0;
  mlir::Dialect::addOperations<mlir::pdl::ApplyNativeConstraintOp,mlir::pdl::ApplyNativeRewriteOp,mlir::pdl::AttributeOp,mlir::pdl::EraseOp,mlir::pdl::OperandOp,mlir::pdl::OperandsOp,mlir::pdl::OperationOp,mlir::pdl::PatternOp,mlir::pdl::RangeOp,mlir::pdl::ReplaceOp,mlir::pdl::ResultOp,mlir::pdl::ResultsOp,mlir::pdl::RewriteOp,mlir::pdl::TypeOp,mlir::pdl::TypesOp>(v2);
}

void sub_1A6CBCB18()
{

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::verify(uint64_t **this)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = *this;
  if ((*(*this + 46) & 0x80) != 0 && *(v1 + 17))
  {
    v2 = *(v1 + 9);
    v3 = v1 - 2;
    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v2)
    {
      v6 = 0;
      while (*(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, v6) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
      {
        if (v2 == ++v6)
        {
          return 1;
        }
      }

      v17 = "returning an operation from a constraint is not supported";
      v18 = 259;
      mlir::OpState::emitOpError(this, &v17, v19);
      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
      if (*v19)
      {
        mlir::InFlightDiagnostic::report(v19);
      }

      if (v27 == 1)
      {
        if (v26 != &v27)
        {
          free(v26);
        }

        v9 = __p;
        if (__p)
        {
          v10 = v25;
          v11 = __p;
          if (v25 != __p)
          {
            do
            {
              v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
            }

            while (v10 != v9);
            v11 = __p;
          }

          v25 = v9;
          operator delete(v11);
        }

        v12 = v22;
        if (v22)
        {
          v13 = v23;
          v14 = v22;
          if (v23 != v22)
          {
            do
            {
              v16 = *--v13;
              v15 = v16;
              *v13 = 0;
              if (v16)
              {
                MEMORY[0x1AC55A040](v15, 0x1000C8077774924);
              }
            }

            while (v13 != v12);
            v14 = v22;
          }

          v23 = v12;
          operator delete(v14);
        }

        if (v20 != &v21)
        {
          free(v20);
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    mlir::pdl::ApplyNativeConstraintOp::verify(this, v19);
    return v19[0];
  }

  return v7;
}

BOOL mlir::pdl::ApplyNativeRewriteOp::verify(uint64_t **this)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *this;
  if ((*(*this + 46) & 0x80) != 0 && *(v1 + 17) || *(v1 + 9))
  {
    return 1;
  }

  v12 = "expected at least one argument or result";
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
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
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

BOOL verifyHasBindingUse(mlir::Operation *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 2);
  if (!v2)
  {
    return 1;
  }

  ParentOp = mlir::Block::getParentOp(v2);
  if (!ParentOp || *(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::PatternOp,void>::id || (hasBindingUse(a1) & 1) != 0)
  {
    return 1;
  }

  v15 = 259;
  mlir::Operation::emitOpError(a1, &v14, v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v5 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v5;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v5;
    }

    v6 = __p;
    if (__p)
    {
      v7 = v22;
      v8 = __p;
      if (v22 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v22 = v6;
      operator delete(v8);
      result = v5;
    }

    v9 = v19;
    if (v19)
    {
      v10 = v20;
      v11 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v19;
      }

      v20 = v9;
      operator delete(v11);
      result = v5;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v5;
    }
  }

  return result;
}

BOOL mlir::pdl::OperationOp::verify(uint64_t **this)
{
  v143 = *MEMORY[0x1E69E9840];
  v2 = (*this)[2];
  if (!v2 || (ParentOp = mlir::Block::getParentOp(v2)) == 0 || *(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
  {
    v4 = 0;
    goto LABEL_5;
  }

  *&v132 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
  if (v132)
  {
    mlir::OpaqueAttr::getAttrData(&v132);
    v4 = 1;
LABEL_5:
    v5 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
    v123 = v5[8];
    v6 = (*(v5 + 21) + *(v5 + 20)) - *(v5 + 20);
    mlir::ArrayAttr::getValue(&v123);
    if (v7 == v6)
    {
      if (v4)
      {
        v8 = *this;
        v9 = *(*this + 11);
        v10 = (v9 >> 23) & 1;
        *&v132 = (*this)[2 * v10 + 9];
        if (!v132)
        {
          goto LABEL_10;
        }

        AttrData = mlir::OpaqueAttr::getAttrData(&v132);
        v13 = v12;
        Context = mlir::Attribute::getContext((*this + 3));
        mlir::OperationName::OperationName(&v132, AttrData, v13, Context);
        if (!mlir::OperationName::mightHaveInterface<mlir::InferTypeOpInterface>(&v132))
        {
          v8 = *this;
          v9 = *(*this + 11);
          v10 = (v9 >> 23) & 1;
LABEL_10:
          v15 = &v8[4 * v10];
          if ((v9 & 0x800000) != 0)
          {
            v16 = *(v8 + 9);
          }

          else
          {
            v16 = 0;
          }

          v17 = v15[20];
          v18 = v15[21];
          v19 = v15[22];
          v128 = v8;
          v20 = *(v8 + 2);
          v21 = v8[9];
          v22 = (v8 - 4);
          if (v21)
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          v24 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
          if (v24)
          {
            while (1)
            {
              v25 = *(v24 + 2);
              if (v25 && *(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::ReplaceOp,void>::id)
              {
                if (mlir::OpOperand::getOperandNumber(v24))
                {
                  *&v132 = *(*(v25 + 72) + 24);
                  DefiningOp = mlir::Value::getDefiningOp(&v132);
                  if (*(DefiningOp + 16) != v20 || mlir::Operation::isBeforeInBlock(DefiningOp, v128))
                  {
                    break;
                  }
                }
              }

              v24 = *v24;
              if (!v24)
              {
                goto LABEL_57;
              }
            }
          }

          else
          {
LABEL_57:
            if (v19)
            {
              v61 = 0;
              v62 = v18 + v17;
              v63 = v16 + 32 * v62;
              v64 = v19 + v62 - v62;
              v65 = &mlir::detail::TypeIDResolver<mlir::pdl::ApplyNativeRewriteOp,void>::id;
              v66 = &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id;
              v67 = &mlir::detail::TypeIDResolver<mlir::pdl::OperandOp,void>::id;
              while (1)
              {
                v68 = *(v63 + 32 * v61 + 24);
                v126 = v61;
                v127 = v68;
                v69 = mlir::Value::getDefiningOp(&v127);
                v70 = *(*(v69 + 48) + 16);
                if (v70 != v65)
                {
                  if (v70 == v66)
                  {
                    *&v132 = *(v69 + 16 * ((*(v69 + 44) >> 23) & 1) + 64);
                    if (!v132)
                    {
                      v88 = *(v69 + 36);
                      v89 = v69 - 16;
                      if (v88)
                      {
                        v90 = v69 - 16;
                      }

                      else
                      {
                        v90 = 0;
                      }

                      v124.n128_u64[0] = v90;
                      v124.n128_u64[1] = v88;
                      v91 = v63;
                      v92 = v67;
                      v93 = v66;
                      v94 = v64;
                      v95 = v65;
                      v96 = v69;
                      mlir::ResultRange::use_begin(&v124, &v129);
                      v97 = *(v96 + 36);
                      v65 = v95;
                      v64 = v94;
                      v66 = v93;
                      v67 = v92;
                      v63 = v91;
                      if (v97)
                      {
                        v98 = v89;
                      }

                      else
                      {
                        v98 = 0;
                      }

                      v124.n128_u64[0] = v98;
                      v124.n128_u64[1] = v97;
                      mlir::ResultRange::use_end(&v124, v135);
                      v99 = v131;
                      v134 = v131;
                      v132 = v129;
                      v133 = v130;
                      v100 = v136;
                      while (v99 != v100)
                      {
                        v101 = *(v99 + 16);
                        if (*(v101 + 16) != v20)
                        {
                          v102 = *(*(v101 + 48) + 16);
                          v103 = v102 == v67 || v102 == &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id;
                          if (v103 || v102 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
                          {
                            goto LABEL_61;
                          }
                        }

                        mlir::ResultRange::UseIterator::operator++(&v129);
                        v99 = v131;
                      }

LABEL_104:
                      LOWORD(v131) = 259;
                      mlir::OpState::emitOpError(&v128, &v129, &v132);
                      mlir::Diagnostic::attachNote(&v132 + 1, 0, 0);
                    }

                    mlir::AffineMapAttr::getValue(&v132);
                  }

                  else
                  {
                    if (v70 != &mlir::detail::TypeIDResolver<mlir::pdl::TypesOp,void>::id)
                    {
                      goto LABEL_104;
                    }

                    if (!*(v69 + 16 * ((*(v69 + 44) >> 23) & 1) + 64))
                    {
                      v71 = *(v69 + 36);
                      v72 = v69 - 16;
                      if (v71)
                      {
                        v73 = v69 - 16;
                      }

                      else
                      {
                        v73 = 0;
                      }

                      v124.n128_u64[0] = v73;
                      v124.n128_u64[1] = v71;
                      v74 = v63;
                      v75 = v67;
                      v76 = v66;
                      v77 = v64;
                      v78 = v65;
                      v79 = v69;
                      mlir::ResultRange::use_begin(&v124, &v129);
                      v80 = *(v79 + 36);
                      v65 = v78;
                      v64 = v77;
                      v66 = v76;
                      v67 = v75;
                      v63 = v74;
                      if (v80)
                      {
                        v81 = v72;
                      }

                      else
                      {
                        v81 = 0;
                      }

                      v124.n128_u64[0] = v81;
                      v124.n128_u64[1] = v80;
                      mlir::ResultRange::use_end(&v124, v135);
                      v82 = v131;
                      v134 = v131;
                      v132 = v129;
                      v133 = v130;
                      v83 = v136;
                      while (v82 != v83)
                      {
                        v84 = *(v82 + 16);
                        if (*(v84 + 16) != v20)
                        {
                          v85 = *(*(v84 + 48) + 16);
                          v86 = v85 == v67 || v85 == &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id;
                          if (v86 || v85 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
                          {
                            goto LABEL_61;
                          }
                        }

                        mlir::ResultRange::UseIterator::operator++(&v129);
                        v82 = v131;
                      }

                      goto LABEL_104;
                    }
                  }
                }

LABEL_61:
                if (++v61 == v64)
                {
                  return verifyHasBindingUse(*this);
                }
              }
            }

            *&v132 = *(v128 + 2 * ((*(v128 + 11) >> 23) & 1) + 9);
            if (v132)
            {
              v111 = mlir::OpaqueAttr::getAttrData(&v132);
              v113 = v112;
              v114 = mlir::Attribute::getContext((v128 + 24));
              v124.n128_u64[0] = mlir::RegisteredOperationName::lookup(v111, v113, v114, v115);
              v124.n128_u8[8] = v116;
              if (v116)
              {
                {
                  mlir::pdl::OperationOp::verify();
                }

                if (((*(*v124.n128_u64[0] + 32))(v124.n128_u64[0], mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
                {
                  {
                    mlir::pdl::OperationOp::verify();
                  }

                  if (((*(*v124.n128_u64[0] + 32))(v124.n128_u64[0], mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
                  {
                    LOWORD(v131) = 259;
                    mlir::OpState::emitOpError(&v128, &v129, &v132);
                    mlir::Diagnostic::attachNote(&v132 + 1, 0, 0);
                  }
                }
              }
            }
          }
        }
      }

      return verifyHasBindingUse(*this);
    }

    LOWORD(v131) = 257;
    mlir::OpState::emitOpError(this, &v129, &v132);
    if (v132)
    {
      v124.n128_u32[0] = 3;
      v124.n128_u64[1] = "expected the same number of attribute values and attribute names, got ";
      v125 = 70;
      v28 = &v124;
      v29 = *(&v133 + 1);
      if (v134 >= HIDWORD(v134))
      {
        if (*(&v133 + 1) <= &v124 && *(&v133 + 1) + 24 * v134 > &v124)
        {
          v118 = &v124 - *(&v133 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v133 + 8, v135, v134 + 1, 24);
          v29 = *(&v133 + 1);
          v28 = &v118[*(&v133 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v133 + 8, v135, v134 + 1, 24);
          v28 = &v124;
          v29 = *(&v133 + 1);
        }
      }

      v30 = (v29 + 24 * v134);
      v31 = *v28;
      v30[1].n128_u64[0] = v28[1].n128_u64[0];
      *v30 = v31;
      LODWORD(v134) = v134 + 1;
    }

    mlir::ArrayAttr::getValue(&v123);
    if (v132)
    {
      v124.n128_u32[0] = 5;
      v124.n128_u64[1] = v32;
      v33 = &v124;
      v34 = *(&v133 + 1);
      if (v134 >= HIDWORD(v134))
      {
        if (*(&v133 + 1) <= &v124 && *(&v133 + 1) + 24 * v134 > &v124)
        {
          v119 = &v124 - *(&v133 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v133 + 8, v135, v134 + 1, 24);
          v34 = *(&v133 + 1);
          v33 = &v119[*(&v133 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v133 + 8, v135, v134 + 1, 24);
          v33 = &v124;
          v34 = *(&v133 + 1);
        }
      }

      v35 = (v34 + 24 * v134);
      v36 = *v33;
      v35[1].n128_u64[0] = v33[1].n128_u64[0];
      *v35 = v36;
      v37 = (v134 + 1);
      LODWORD(v134) = v134 + 1;
      if (v132)
      {
        v124.n128_u32[0] = 3;
        v124.n128_u64[1] = " names and ";
        v125 = 11;
        v38 = &v124;
        v39 = *(&v133 + 1);
        if (v37 >= HIDWORD(v134))
        {
          if (*(&v133 + 1) <= &v124 && *(&v133 + 1) + 24 * v37 > &v124)
          {
            v120 = &v124 - *(&v133 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v133 + 8, v135, v37 + 1, 24);
            v39 = *(&v133 + 1);
            v38 = &v120[*(&v133 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v133 + 8, v135, v37 + 1, 24);
            v38 = &v124;
            v39 = *(&v133 + 1);
          }
        }

        v40 = (v39 + 24 * v134);
        v41 = *v38;
        v40[1].n128_u64[0] = v38[1].n128_u64[0];
        *v40 = v41;
        v42 = (v134 + 1);
        LODWORD(v134) = v134 + 1;
        if (v132)
        {
          v124.n128_u32[0] = 5;
          v124.n128_u64[1] = v6;
          v43 = &v124;
          v44 = *(&v133 + 1);
          if (v42 >= HIDWORD(v134))
          {
            if (*(&v133 + 1) <= &v124 && *(&v133 + 1) + 24 * v42 > &v124)
            {
              v121 = &v124 - *(&v133 + 1);
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v133 + 8, v135, v42 + 1, 24);
              v44 = *(&v133 + 1);
              v43 = &v121[*(&v133 + 1)];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v133 + 8, v135, v42 + 1, 24);
              v43 = &v124;
              v44 = *(&v133 + 1);
            }
          }

          v45 = (v44 + 24 * v134);
          v46 = *v43;
          v45[1].n128_u64[0] = v43[1].n128_u64[0];
          *v45 = v46;
          v47 = (v134 + 1);
          LODWORD(v134) = v134 + 1;
          if (v132)
          {
            v124.n128_u32[0] = 3;
            v124.n128_u64[1] = " values";
            v125 = 7;
            v48 = &v124;
            v49 = *(&v133 + 1);
            if (v47 >= HIDWORD(v134))
            {
              if (*(&v133 + 1) <= &v124 && *(&v133 + 1) + 24 * v47 > &v124)
              {
                v122 = &v124 - *(&v133 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v133 + 8, v135, v47 + 1, 24);
                v49 = *(&v133 + 1);
                v48 = &v122[*(&v133 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v133 + 8, v135, v47 + 1, 24);
                v48 = &v124;
                v49 = *(&v133 + 1);
              }
            }

            v50 = (v49 + 24 * v134);
            v51 = *v48;
            v50[1].n128_u64[0] = v48[1].n128_u64[0];
            *v50 = v51;
            LODWORD(v134) = v134 + 1;
          }
        }
      }
    }

    v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
    if (v132)
    {
      mlir::InFlightDiagnostic::report(&v132);
    }

    if (v142 == 1)
    {
      if (v141 != &v142)
      {
        free(v141);
      }

      v53 = __p;
      if (__p)
      {
        v54 = v140;
        v55 = __p;
        if (v140 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v140 = v53;
        operator delete(v55);
      }

      v56 = v137;
      if (!v137)
      {
        goto LABEL_123;
      }

      v57 = v138;
      v58 = v137;
      if (v138 == v137)
      {
LABEL_122:
        v138 = v56;
        operator delete(v58);
LABEL_123:
        if (*(&v133 + 1) != v135)
        {
          free(*(&v133 + 1));
        }

        return v52;
      }

      do
      {
        v60 = *--v57;
        v59 = v60;
        *v57 = 0;
        if (v60)
        {
          MEMORY[0x1AC55A040](v59, 0x1000C8077774924);
        }
      }

      while (v57 != v56);
LABEL_121:
      v58 = v137;
      goto LABEL_122;
    }

    return v52;
  }

  LOWORD(v131) = 259;
  mlir::OpState::emitOpError(this, &v129, &v132);
  v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
  if (v132)
  {
    mlir::InFlightDiagnostic::report(&v132);
  }

  if (v142 == 1)
  {
    if (v141 != &v142)
    {
      free(v141);
    }

    v105 = __p;
    if (__p)
    {
      v106 = v140;
      v107 = __p;
      if (v140 != __p)
      {
        do
        {
          v106 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v106 - 1);
        }

        while (v106 != v105);
        v107 = __p;
      }

      v140 = v105;
      operator delete(v107);
    }

    v56 = v137;
    if (!v137)
    {
      goto LABEL_123;
    }

    v108 = v138;
    v58 = v137;
    if (v138 == v137)
    {
      goto LABEL_122;
    }

    do
    {
      v110 = *--v108;
      v109 = v110;
      *v108 = 0;
      if (v110)
      {
        MEMORY[0x1AC55A040](v109, 0x1000C8077774924);
      }
    }

    while (v108 != v56);
    goto LABEL_121;
  }

  return v52;
}

uint64_t mlir::pdl::OperationOp::getOpName@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v4)
  {
    this = mlir::OpaqueAttr::getAttrData(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

BOOL mlir::pdl::OperationOp::hasTypeInference(mlir::pdl::OperationOp *this)
{
  v16 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (!v16)
  {
    return 0;
  }

  AttrData = mlir::OpaqueAttr::getAttrData(&v16);
  v4 = v3;
  Context = mlir::Attribute::getContext((*this + 24));
  mlir::OperationName::OperationName(&v16, AttrData, v4, Context);
  {
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v6 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;
    v7 = *(v16 + 32);
    v8 = *(v16 + 40);
    if (v8)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;
  v7 = *(v16 + 32);
  v8 = *(v16 + 40);
  if (!v8)
  {
    return 0;
  }

LABEL_4:
  v9 = v7;
  v10 = v8;
  do
  {
    v11 = v10 >> 1;
    v12 = &v9[2 * (v10 >> 1)];
    v14 = *v12;
    v13 = v12 + 2;
    v10 += ~(v10 >> 1);
    if (v14 < v6)
    {
      v9 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  while (v10);
  if (v9 == &v7[2 * v8] || *v9 != v6)
  {
    return 0;
  }

  return v9[1] != 0;
}

BOOL mlir::OperationName::mightHaveInterface<mlir::InferTypeOpInterface>(uint64_t *a1)
{
  {
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v1 = *a1;
    if (*(*a1 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      goto LABEL_3;
    }

    return 1;
  }

  v1 = *a1;
  if (*(*a1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

LABEL_3:
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 32);
  v5 = v3;
  do
  {
    v6 = v5 >> 1;
    v7 = &v4[2 * (v5 >> 1)];
    v9 = *v7;
    v8 = v7 + 2;
    v5 += ~(v5 >> 1);
    if (v9 < mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id)
    {
      v4 = v8;
    }

    else
    {
      v5 = v6;
    }
  }

  while (v5);
  if (v4 == (v2 + 16 * v3))
  {
    return 0;
  }

  if (*v4 == mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id)
  {
    return v4[1] != 0;
  }

  return 0;
}

BOOL mlir::pdl::PatternOp::verifyRegions(uint64_t **this)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = ((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = (v3 - 8);
  }

  else
  {
    v4 = 0;
  }

  mlir::Block::getTerminator(v4);
  if (v5)
  {
    v6 = *(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = v5;
    LOWORD(v58) = 259;
    mlir::OpState::emitOpError(this, v57, &v60);
    mlir::Diagnostic::attachNote(&v60 + 1, *(v7 + 24), 1);
  }

  *&v60 = this;
  v8 = *(v2 + 8);
  if (v8 != v2)
  {
    do
    {
      v9 = v8 - 8;
      if (!v8)
      {
        v9 = 0;
      }

      v10 = *(v9 + 40);
      v11 = (v9 + 32);
      while (v10 != v11)
      {
        v12 = *(v10 + 1);
        ZinIrHalH13g::~ZinIrHalH13g(v10);
        v14 = mlir::detail::walk<mlir::ForwardIterator>(v13, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::pdl::PatternOp::verifyRegions(void)::$_0>, &v60, 1);
        v10 = v12;
        if (!v14)
        {
          return 0;
        }
      }

      v8 = *(v8 + 8);
    }

    while (v8 != v2);
    v8 = *(v2 + 8);
  }

  v15 = v8 - 8;
  if (!v8)
  {
    v15 = 0;
  }

  v16 = (v15 + 32);
  v17 = *(v15 + 40);
  if (v17 != (v15 + 32))
  {
    while (1)
    {
      ZinIrHalH13g::~ZinIrHalH13g(v17);
      if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
      {
        break;
      }

      v17 = *(v17 + 1);
      if (v17 == v16)
      {
        goto LABEL_30;
      }
    }

    if (v17 != v16)
    {
      v56 = 0;
      v55[0] = 0;
      v55[1] = 0;
      v20 = *(v2 + 8);
      if (v20)
      {
        v21 = v20 - 8;
      }

      else
      {
        v21 = 0;
      }

      v22 = (v21 + 32);
      v23 = *(v21 + 40);
      if (v23 == (v21 + 32))
      {
        goto LABEL_89;
      }

      v24 = 1;
LABEL_54:
      ZinIrHalH13g::~ZinIrHalH13g(v23);
      v35 = *(*(v34 + 48) + 16);
      if (v35 != &mlir::detail::TypeIDResolver<mlir::pdl::OperandOp,void>::id && v35 != &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id && v35 != &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id && v35 != &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id && v35 != &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
      {
        goto LABEL_53;
      }

      v40 = v34;
      v41 = *(v34 + 36);
      v42 = v34 - 16;
      if (v41)
      {
        v43 = v34 - 16;
      }

      else
      {
        v43 = 0;
      }

      v59.n128_u64[0] = v43;
      v59.n128_u64[1] = v41;
      mlir::ResultRange::use_begin(&v59, v57);
      v44 = *(v40 + 36);
      if (v44)
      {
        v45 = v42;
      }

      else
      {
        v45 = 0;
      }

      v59.n128_u64[0] = v45;
      v59.n128_u64[1] = v44;
      mlir::ResultRange::use_end(&v59, v63);
      v46 = v58;
      v62 = v58;
      v60 = v57[0];
      v61 = v57[1];
      v47 = v64;
      while (1)
      {
        if (v46 == v47)
        {
          goto LABEL_53;
        }

        v48 = *(v46 + 16);
        v49 = *(v48 + 16);
        if (v49)
        {
          Parent = mlir::Block::getParent(v49);
          if (*(*(v48 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id || Parent && *(*(*(Parent + 16) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
          {
LABEL_82:
            if (v24)
            {
              visit(v40, v55);
            }

            else
            {
              if (!v56)
              {
                goto LABEL_90;
              }

              v51 = (v56 - 1) & ((v40 >> 4) ^ (v40 >> 9));
              v52 = *(v55[0] + v51);
              if (v52 != v40)
              {
                v53 = 1;
                while (v52 != -4096)
                {
                  v24 = 0;
                  v54 = v51 + v53++;
                  v51 = v54 & (v56 - 1);
                  v52 = *(v55[0] + v51);
                  if (v52 == v40)
                  {
                    goto LABEL_53;
                  }
                }

LABEL_90:
                *&v57[0] = "the operations must form a connected component";
                LOWORD(v58) = 259;
                mlir::OpState::emitOpError(this, v57, &v60);
                mlir::Diagnostic::attachNote(&v60 + 1, *(v40 + 24), 1);
              }
            }

            v24 = 0;
LABEL_53:
            v23 = *(v23 + 1);
            if (v23 != v22)
            {
              goto LABEL_54;
            }

LABEL_89:
            llvm::deallocate_buffer(v55[0], (8 * v56));
          }
        }

        else if (*(*(v48 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
        {
          goto LABEL_82;
        }

        mlir::ResultRange::UseIterator::operator++(v57);
        v46 = v58;
      }
    }
  }

LABEL_30:
  LOWORD(v58) = 259;
  mlir::OpState::emitOpError(this, v57, &v60);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
  if (v60)
  {
    mlir::InFlightDiagnostic::report(&v60);
  }

  if (v70 == 1)
  {
    if (v69 != &v70)
    {
      free(v69);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v68;
      v27 = __p;
      if (v68 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v68 = v25;
      operator delete(v27);
    }

    v28 = v65;
    if (v65)
    {
      v29 = v66;
      v30 = v65;
      if (v66 != v65)
      {
        do
        {
          v32 = *--v29;
          v31 = v32;
          *v29 = 0;
          if (v32)
          {
            MEMORY[0x1AC55A040](v31, 0x1000C8077774924);
          }
        }

        while (v29 != v28);
        v30 = v65;
      }

      v66 = v28;
      operator delete(v30);
    }

    if (*(&v61 + 1) != v63)
    {
      free(*(&v61 + 1));
    }
  }

  return v19;
}

void visit(uint64_t a1, uint64_t *a2)
{
  v19 = a1;
  if (*(*(mlir::Block::getParentOp(*(a1 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::PatternOp,void>::id && *(*(a1 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2, &v19, &v14);
    if (v15 == 1)
    {
      v4 = *(*(v19 + 48) + 16);
      if (v19 && v4 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
      {
        visit(v19, a2);
      }

      else if (v19 && v4 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id || v19 && v4 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id)
      {
        *&v14 = *(*(v19 + 72) + 24);
        DefiningOp = mlir::Value::getDefiningOp(&v14);
        visit(DefiningOp, a2);
      }

      v6 = v19;
      v7 = *(v19 + 36);
      v8 = v19 - 16;
      if (v7)
      {
        v9 = v19 - 16;
      }

      else
      {
        v9 = 0;
      }

      *&v14 = v9;
      *(&v14 + 1) = v7;
      mlir::ResultRange::use_begin(&v14, v20);
      v10 = *(v6 + 36);
      if (v10)
      {
        v11 = v8;
      }

      else
      {
        v11 = 0;
      }

      v22.n128_u64[0] = v11;
      v22.n128_u64[1] = v10;
      mlir::ResultRange::use_end(&v22, v17);
      v12 = v21;
      v16 = v21;
      v14 = v20[0];
      v15 = v20[1];
      for (i = v18; v21 != i; v12 = v21)
      {
        visit(*(v12 + 16), a2);
        mlir::ResultRange::UseIterator::operator++(v20);
      }
    }
  }
}

{
  v3 = *(a1 + 44);
  v4 = *(a1 + 16 * ((v3 >> 23) & 1) + 80);
  if ((v3 & 0x800000) != 0)
  {
    v5 = *(a1 + 72);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v5 = 0;
    if (!v4)
    {
      return;
    }
  }

  v6 = (v5 + 24);
  do
  {
    v7 = *v6;
    v6 += 4;
    v9 = v7;
    DefiningOp = mlir::Value::getDefiningOp(&v9);
    visit(DefiningOp, a2);
    --v4;
  }

  while (v4);
}

void mlir::pdl::PatternOp::getRewriter(mlir::pdl::PatternOp *this)
{
  v1 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v1)
  {
    mlir::Block::getTerminator((v1 - 8));
  }

  else
  {
    mlir::Block::getTerminator(0);
  }
}

BOOL mlir::pdl::ResultsOp::verify(uint64_t **this)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v25[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v25[0])
  {
    mlir::IntegerAttr::getValue(v25, &v30);
    if (v31 >= 0x41 && v30 != 0)
    {
      MEMORY[0x1AC55A040]();
    }

    return 1;
  }

  if (*(*(*(v1 - 1) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    return 1;
  }

  v26 = 257;
  mlir::OpState::emitOpError(this, v25, &v30);
  if (v30)
  {
    v27 = 3;
    v29 = 77;
    v5 = &v27;
    v6 = v32;
    if (v33 >= v34)
    {
      if (v32 <= &v27 && v32 + 24 * v33 > &v27)
      {
        v23 = &v27 - v32;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v6 = v32;
        v5 = (v32 + v23);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v5 = &v27;
        v6 = v32;
      }
    }

    v7 = &v6[24 * v33];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    ++v33;
    if (v30)
    {
      v9 = *(*this - 1);
      v10 = &v27;
      mlir::DiagnosticArgument::DiagnosticArgument(&v27, v9 & 0xFFFFFFFFFFFFFFF8);
      v11 = v32;
      if (v33 >= v34)
      {
        if (v32 <= &v27 && v32 + 24 * v33 > &v27)
        {
          v24 = &v27 - v32;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
          v11 = v32;
          v10 = (v32 + v24);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
          v10 = &v27;
          v11 = v32;
        }
      }

      v12 = &v11[24 * v33];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v33;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
  v14 = result;
  if (v30)
  {
    mlir::InFlightDiagnostic::report(&v30);
    result = v14;
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
      result = v14;
    }

    v15 = __p;
    if (__p)
    {
      v16 = v39;
      v17 = __p;
      if (v39 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v39 = v15;
      operator delete(v17);
      result = v14;
    }

    v18 = v36;
    if (v36)
    {
      v19 = v37;
      v20 = v36;
      if (v37 != v36)
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
        v20 = v36;
      }

      v37 = v18;
      operator delete(v20);
      result = v14;
    }

    if (v32 != v35)
    {
      free(v32);
      return v14;
    }
  }

  return result;
}

uint64_t mlir::pdl::ResultsOp::getIndex(mlir::pdl::ResultsOp *this)
{
  v7 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (!v7)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v7, &v5);
  if (v6 >= 0x41)
  {
    v1 = v5;
  }

  else
  {
    v1 = &v5;
  }

  v2 = *v1;
  if (v6 >= 0x41 && v5 != 0)
  {
    MEMORY[0x1AC55A040]();
  }

  return v2 | 0x100000000;
}

uint64_t mlir::pdl::RewriteOp::verifyRegions(uint64_t **this)
{
  v58 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 11);
  v2 = &(*this)[2 * ((v1 >> 23) & 1) + 8];
  v3 = (((v2 + ((v1 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  v47[0] = *v2;
  if (v47[0])
  {
    mlir::OpaqueAttr::getAttrData(v47);
    if (*v3 != v3)
    {
      v43 = 257;
      mlir::OpState::emitOpError(this, v42, v47);
      if (v47[0])
      {
        v44 = 3;
        v45 = "expected rewrite region to be empty when rewrite is external";
        v46 = 60;
        v5 = &v44;
        v6 = v48;
        if (v49 >= v50)
        {
          if (v48 <= &v44 && v48 + 24 * v49 > &v44)
          {
            v39 = &v44 - v48;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
            v6 = v48;
            v5 = (v48 + v39);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
            v5 = &v44;
            v6 = v48;
          }
        }

        v7 = &v6[24 * v49];
        v8 = *v5;
        *(v7 + 2) = *(v5 + 2);
        *v7 = v8;
        ++v49;
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

        v10 = __p;
        if (__p)
        {
          v11 = v55;
          v12 = __p;
          if (v55 != __p)
          {
            do
            {
              v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
            }

            while (v11 != v10);
            v12 = __p;
          }

          v55 = v10;
          operator delete(v12);
        }

        v13 = v52;
        if (!v52)
        {
          goto LABEL_65;
        }

        v14 = v53;
        v15 = v52;
        if (v53 == v52)
        {
LABEL_64:
          v53 = v13;
          operator delete(v15);
LABEL_65:
          if (v48 != v51)
          {
            free(v48);
          }

          return v9;
        }

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
LABEL_63:
        v15 = v52;
        goto LABEL_64;
      }

      return v9;
    }

    return 1;
  }

  if (*v3 == v3)
  {
    v43 = 257;
    mlir::OpState::emitOpError(this, v42, v47);
    if (v47[0])
    {
      v44 = 3;
      v45 = "expected rewrite region to be non-empty if external name is not specified";
      v46 = 73;
      v28 = &v44;
      v29 = v48;
      if (v49 >= v50)
      {
        if (v48 <= &v44 && v48 + 24 * v49 > &v44)
        {
          v41 = &v44 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v29 = v48;
          v28 = (v48 + v41);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v28 = &v44;
          v29 = v48;
        }
      }

      v30 = &v29[24 * v49];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      ++v49;
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

      v32 = __p;
      if (__p)
      {
        v33 = v55;
        v34 = __p;
        if (v55 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v55 = v32;
        operator delete(v34);
      }

      v13 = v52;
      if (!v52)
      {
        goto LABEL_65;
      }

      v35 = v53;
      v15 = v52;
      if (v53 == v52)
      {
        goto LABEL_64;
      }

      do
      {
        v37 = *--v35;
        v36 = v37;
        *v35 = 0;
        if (v37)
        {
          MEMORY[0x1AC55A040](v36, 0x1000C8077774924);
        }
      }

      while (v35 != v13);
      goto LABEL_63;
    }

    return v9;
  }

  if (!*(v2 + 3))
  {
    return 1;
  }

  v43 = 257;
  mlir::OpState::emitOpError(this, v42, v47);
  if (v47[0])
  {
    v44 = 3;
    v45 = "expected no external arguments when the rewrite is specified inline";
    v46 = 67;
    v18 = &v44;
    v19 = v48;
    if (v49 >= v50)
    {
      if (v48 <= &v44 && v48 + 24 * v49 > &v44)
      {
        v40 = &v44 - v48;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v19 = v48;
        v18 = (v48 + v40);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v18 = &v44;
        v19 = v48;
      }
    }

    v20 = &v19[24 * v49];
    v21 = *v18;
    *(v20 + 2) = *(v18 + 2);
    *v20 = v21;
    ++v49;
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

    v22 = __p;
    if (__p)
    {
      v23 = v55;
      v24 = __p;
      if (v55 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v55 = v22;
      operator delete(v24);
    }

    v13 = v52;
    if (!v52)
    {
      goto LABEL_65;
    }

    v25 = v53;
    v15 = v52;
    if (v53 == v52)
    {
      goto LABEL_64;
    }

    do
    {
      v27 = *--v25;
      v26 = v27;
      *v25 = 0;
      if (v27)
      {
        MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
      }
    }

    while (v25 != v13);
    goto LABEL_63;
  }

  return v9;
}