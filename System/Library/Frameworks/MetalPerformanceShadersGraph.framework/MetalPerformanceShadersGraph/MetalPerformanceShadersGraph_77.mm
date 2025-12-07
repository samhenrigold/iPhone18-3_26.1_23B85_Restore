uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_0 &,anonymous namespace::OrderedPredicate **,0>(uint64_t **a1, uint64_t **a2, uint64_t **a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *a2;
  v6 = *a1;
  v7 = **a1;
  OperationDepth = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v7);
  v9 = *(v7 + 16);
  v10 = *v6[1];
  v11 = *(v5 + 4);
  v12 = *(v5 + 5);
  v13 = *(v6 + 6);
  v14 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v5);
  v15 = *(v6 + 4);
  if (v15 >= v11 && (v11 < v15 || (v60 = *(v6 + 5), v60 >= v12) && (v12 < v60 || v14 >= OperationDepth && (OperationDepth < v14 || (v61 = *(*v5 + 16), v61 >= v9) && (v9 < v61 || (v62 = *v5[1], v62 >= v10) && (v10 >= v62 ? (v63 = *(v5 + 6) >= v13) : (v63 = 1), v63))))))
  {
    v26 = *a3;
    v27 = *v3;
    v28 = **v3;
    v29 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v28);
    v30 = *(v28 + 16);
    v31 = *v27[1];
    v32 = *(v26 + 4);
    v33 = *(v26 + 5);
    v34 = *(v27 + 6);
    result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v26);
    v35 = *(v27 + 4);
    if (v35 < v32 || v32 >= v35 && ((v67 = *(v27 + 5), v67 < v33) || v33 >= v67 && (result < v29 || v29 >= result && ((v68 = *(*v26 + 16), v68 < v30) || v30 >= v68 && ((v69 = *v26[1], v69 < v31) || v31 >= v69 && *(v26 + 6) < v34)))))
    {
      v36 = *v3;
      *v3 = *a3;
      *a3 = v36;
      v37 = *v3;
      v38 = *v4;
      v39 = **v4;
      v40 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v39);
      v41 = *(v39 + 16);
      v42 = *v38[1];
      v44 = *(v37 + 4);
      v43 = *(v37 + 5);
      v45 = *(v38 + 6);
      result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v37);
      v46 = *(v38 + 4);
      if (v46 < v44)
      {
        goto LABEL_58;
      }

      if (v44 < v46)
      {
        return result;
      }

      v47 = *(v38 + 5);
      if (v47 < v43)
      {
        goto LABEL_58;
      }

      if (v43 < v47)
      {
        return result;
      }

      if (result < v40)
      {
        goto LABEL_58;
      }

      if (v40 < result)
      {
        return result;
      }

      v48 = *(*v37 + 16);
      if (v48 < v41)
      {
        goto LABEL_58;
      }

      if (v41 < v48)
      {
        return result;
      }

      v49 = *v37[1];
      if (v49 < v42)
      {
        goto LABEL_58;
      }

      if (v42 < v49)
      {
        return result;
      }

      v50 = *(v37 + 6);
      goto LABEL_68;
    }
  }

  else
  {
    v16 = *a3;
    v17 = *v3;
    v18 = **v3;
    v19 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v18);
    v20 = *(v18 + 16);
    v21 = *v17[1];
    v22 = *(v16 + 4);
    v23 = *(v16 + 5);
    v74 = *(v17 + 6);
    result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v16);
    v25 = *(v17 + 4);
    if (v25 < v22)
    {
      v3 = a3;
LABEL_58:
      v71 = *v4;
      *v4 = *v3;
      *v3 = v71;
      return result;
    }

    if (v22 >= v25)
    {
      v64 = *(v17 + 5);
      if (v64 < v23 || v23 >= v64 && (result < v19 || v19 >= result && ((v65 = *(*v16 + 16), v65 < v20) || v20 >= v65 && ((v66 = *v16[1], v66 < v21) || v21 >= v66 && *(v16 + 6) < v74))))
      {
LABEL_57:
        v3 = a3;
        goto LABEL_58;
      }
    }

    v51 = *v4;
    *v4 = *v3;
    *v3 = v51;
    v52 = *a3;
    v53 = *v51;
    v54 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v51);
    v55 = *(v53 + 16);
    v56 = *v51[1];
    v57 = *(v52 + 4);
    v58 = *(v52 + 5);
    v45 = *(v51 + 6);
    result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v52);
    v59 = *(v51 + 4);
    if (v59 < v57)
    {
      v4 = v3;
      v3 = a3;
      goto LABEL_58;
    }

    if (v57 < v59)
    {
      return result;
    }

    v70 = *(v51 + 5);
    if (v70 < v58)
    {
LABEL_56:
      v4 = v3;
      goto LABEL_57;
    }

    if (v58 >= v70)
    {
      if (result < v54)
      {
        goto LABEL_56;
      }

      if (v54 >= result)
      {
        v72 = *(*v52 + 16);
        if (v72 < v55)
        {
          goto LABEL_56;
        }

        if (v55 >= v72)
        {
          v73 = *v52[1];
          if (v73 < v56)
          {
            goto LABEL_56;
          }

          if (v56 >= v73)
          {
            v50 = *(v52 + 6);
            v4 = v3;
            v3 = a3;
LABEL_68:
            if (v50 >= v45)
            {
              return result;
            }

            goto LABEL_58;
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_0 &,anonymous namespace::OrderedPredicate **,0>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v7 = *a4;
  v8 = *a3;
  v9 = **a3;
  OperationDepth = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v9);
  v11 = *(v9 + 16);
  v50 = *v8[1];
  v13 = *(v7 + 4);
  v12 = *(v7 + 5);
  v14 = *(v8 + 6);
  result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v7);
  v16 = *(v8 + 4);
  if (v16 < v13 || v13 >= v16 && ((v40 = *(v8 + 5), v40 < v12) || v12 >= v40 && (result < OperationDepth || OperationDepth >= result && ((v41 = *(*v7 + 16), v41 < v11) || v11 >= v41 && ((v42 = *v7[1], v42 < v50) || (v50 >= v42 ? (v43 = *(v7 + 6) >= v14) : (v43 = 1), !v43))))))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    v18 = *a3;
    v19 = *a2;
    v20 = **a2;
    v21 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v20);
    v22 = *(v20 + 16);
    v23 = *v19[1];
    v25 = *(v18 + 4);
    v24 = *(v18 + 5);
    v26 = *(v19 + 6);
    result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v18);
    v27 = *(v19 + 4);
    if (v27 < v25 || v25 >= v27 && ((v44 = *(v19 + 5), v44 < v24) || v24 >= v44 && (result < v21 || v21 >= result && ((v45 = *(*v18 + 16), v45 < v22) || v22 >= v45 && ((v46 = *v18[1], v46 < v23) || v23 >= v46 && *(v18 + 6) < v26)))))
    {
      v28 = *a2;
      *a2 = *a3;
      *a3 = v28;
      v29 = *a2;
      v30 = *a1;
      v31 = **a1;
      v32 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v31);
      v33 = *(v31 + 16);
      v34 = *v30[1];
      v36 = *(v29 + 4);
      v35 = *(v29 + 5);
      v37 = *(v30 + 6);
      result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v29);
      v38 = *(v30 + 4);
      if (v38 < v36 || v36 >= v38 && ((v47 = *(v30 + 5), v47 < v35) || v35 >= v47 && (result < v32 || v32 >= result && ((v48 = *(*v29 + 16), v48 < v33) || v33 >= v48 && ((v49 = *v29[1], v49 < v34) || v34 >= v49 && *(v29 + 6) < v37)))))
      {
        v39 = *a1;
        *a1 = *a2;
        *a2 = v39;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_0 &,anonymous namespace::OrderedPredicate **,0>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t **a5)
{
  v8 = *a5;
  v9 = *a4;
  v10 = **a4;
  OperationDepth = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v10);
  v12 = *(v10 + 16);
  v65 = *v9[1];
  v14 = *(v8 + 4);
  v13 = *(v8 + 5);
  v15 = *(v9 + 6);
  result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v8);
  v17 = *(v9 + 4);
  if (v17 < v14 || v14 >= v17 && ((v52 = *(v9 + 5), v52 < v13) || v13 >= v52 && (result < OperationDepth || OperationDepth >= result && ((v53 = *(*v8 + 16), v53 < v12) || v12 >= v53 && ((v54 = *v8[1], v54 < v65) || (v65 >= v54 ? (v55 = *(v8 + 6) >= v15) : (v55 = 1), !v55))))))
  {
    v18 = *a4;
    *a4 = *a5;
    *a5 = v18;
    v19 = *a4;
    v20 = *a3;
    v21 = **a3;
    v22 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v21);
    v23 = *(v21 + 16);
    v24 = *v20[1];
    v26 = *(v19 + 4);
    v25 = *(v19 + 5);
    v27 = *(v20 + 6);
    result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v19);
    v28 = *(v20 + 4);
    if (v28 < v26 || v26 >= v28 && ((v56 = *(v20 + 5), v56 < v25) || v25 >= v56 && (result < v22 || v22 >= result && ((v57 = *(*v19 + 16), v57 < v23) || v23 >= v57 && ((v58 = *v19[1], v58 < v24) || v24 >= v58 && *(v19 + 6) < v27)))))
    {
      v29 = *a3;
      *a3 = *a4;
      *a4 = v29;
      v30 = *a3;
      v31 = *a2;
      v32 = **a2;
      v33 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v32);
      v34 = *(v32 + 16);
      v35 = *v31[1];
      v37 = *(v30 + 4);
      v36 = *(v30 + 5);
      v38 = *(v31 + 6);
      result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v30);
      v39 = *(v31 + 4);
      if (v39 < v37 || v37 >= v39 && ((v59 = *(v31 + 5), v59 < v36) || v36 >= v59 && (result < v33 || v33 >= result && ((v60 = *(*v30 + 16), v60 < v34) || v34 >= v60 && ((v61 = *v30[1], v61 < v35) || v35 >= v61 && *(v30 + 6) < v38)))))
      {
        v40 = *a2;
        *a2 = *a3;
        *a3 = v40;
        v41 = *a2;
        v42 = *a1;
        v43 = **a1;
        v44 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v43);
        v45 = *(v43 + 16);
        v46 = *v42[1];
        v48 = *(v41 + 4);
        v47 = *(v41 + 5);
        v49 = *(v42 + 6);
        result = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v41);
        v50 = *(v42 + 4);
        if (v50 < v48 || v48 >= v50 && ((v62 = *(v42 + 5), v62 < v47) || v47 >= v62 && (result < v44 || v44 >= result && ((v63 = *(*v41 + 16), v63 < v45) || v45 >= v63 && ((v64 = *v41[1], v64 < v46) || v46 >= v64 && *(v41 + 6) < v49)))))
        {
          v51 = *a1;
          *a1 = *a2;
          *a2 = v51;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_0 &,anonymous namespace::OrderedPredicate **>(uint64_t **a1, uint64_t **a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        return 1;
      case 4:
        return 1;
      case 5:
        return 1;
    }

    goto LABEL_11;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_11:
    v16 = a1 + 2;
    v17 = a1 + 3;
    v18 = a2;
    if (a1 + 3 != a2)
    {
      v59 = 0;
      v57 = 0;
      while (1)
      {
        v58 = v17;
        v20 = *v17;
        v21 = *v16;
        v22 = **v16;
        OperationDepth = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v22);
        v24 = *(v22 + 16);
        v25 = *v21[1];
        v27 = *(v20 + 4);
        v26 = *(v20 + 5);
        v28 = *(v21 + 6);
        v29 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v20);
        v30 = *(v21 + 4);
        if (v30 >= v27 && (v27 < v30 || (v48 = *(v21 + 5), v48 >= v26) && (v26 < v48 || v29 >= OperationDepth && (OperationDepth < v29 || (v49 = *(*v20 + 16), v49 >= v24) && (v24 < v49 || (v50 = *v20[1], v50 >= v25) && (v25 >= v50 ? (v51 = *(v20 + 6) >= v28) : (v51 = 1), v51))))))
        {
          v19 = v58;
        }

        else
        {
          v31 = v59;
          v32 = *v58;
          *v58 = *v16;
          do
          {
            v33 = *(a1 + v31 + 8);
            v34 = *v33;
            v35 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v33);
            v36 = *(v34 + 16);
            v37 = **(v33 + 8);
            v38 = *(v32 + 4);
            v39 = *(v32 + 5);
            v40 = *(v33 + 24);
            v41 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v32);
            v42 = *(v33 + 16);
            if (v42 >= v38)
            {
              if (v38 < v42 || (v43 = *(v33 + 20), v43 >= v39) && (v39 < v43 || v41 >= v35 && (v35 < v41 || (v44 = *(*v32 + 16), v44 >= v36) && (v36 < v44 || (v45 = *v32[1], v45 >= v37) && (v37 >= v45 ? (v46 = *(v32 + 6) >= v40) : (v46 = 1), v46)))))
              {
                v47 = (a1 + v31 + 16);
                goto LABEL_47;
              }
            }

            *(a1 + v31 + 16) = *(a1 + v31 + 8);
            v31 -= 8;
          }

          while (v31 != -16);
          v47 = a1;
LABEL_47:
          *v47 = v32;
          ++v57;
          v18 = a2;
          v19 = v58;
          if (v57 == 8)
          {
            return v58 + 1 == a2;
          }
        }

        v16 = v19;
        v59 += 8;
        v17 = v19 + 1;
        if (v19 + 1 == v18)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  v4 = *(a2 - 1);
  v5 = *a1;
  v6 = **a1;
  v7 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(v6);
  v8 = *(v6 + 16);
  v9 = *v5[1];
  v11 = *(v4 + 16);
  v10 = *(v4 + 20);
  v12 = *(v5 + 6);
  v13 = mlir::pdl_to_pdl_interp::Position::getOperationDepth(*v4);
  v14 = *(v5 + 4);
  if (v14 < v11)
  {
    goto LABEL_5;
  }

  if (v11 < v14)
  {
    return 1;
  }

  v53 = *(v5 + 5);
  if (v53 < v10)
  {
    goto LABEL_5;
  }

  if (v10 < v53)
  {
    return 1;
  }

  if (v13 < v7)
  {
    goto LABEL_5;
  }

  if (v7 < v13)
  {
    return 1;
  }

  v54 = *(*v4 + 16);
  if (v54 < v8)
  {
    goto LABEL_5;
  }

  if (v8 < v54)
  {
    return 1;
  }

  v55 = **(v4 + 8);
  if (v55 < v9 || (result = 1, v9 >= v55) && *(v4 + 24) < v12)
  {
LABEL_5:
    v15 = *a1;
    *a1 = *(a2 - 1);
    *(a2 - 1) = v15;
    return 1;
  }

  return result;
}

int8x16_t *std::__stable_partition_impl<std::_ClassicAlgPolicy,void stableTopologicalSort<std::__wrap_iter<anonymous namespace::OrderedPredicate **>,BOOL (*)(anonymous namespace::OrderedPredicate *,anonymous namespace::OrderedPredicate *)>(std::__wrap_iter<anonymous namespace::OrderedPredicate **>,std::__wrap_iter<anonymous namespace::OrderedPredicate **>,BOOL (*)(anonymous namespace::OrderedPredicate *,anonymous namespace::OrderedPredicate *))::{lambda(std::__wrap_iter<anonymous namespace::OrderedPredicate **> const&)#2} &,std::__wrap_iter<anonymous namespace::OrderedPredicate **>,long,std::pair<anonymous namespace::OrderedPredicate **,long>>(int8x16_t *a1, const void **a2, llvm::SmallPtrSetImplBase **a3, uint64_t a4, void *a5, uint64_t a6)
{
  v8 = a1;
  if (a4 != 3)
  {
    if (a4 == 2)
    {
      v10 = a1->i64[0];
      a1->i64[0] = *a2;
      *a2 = v10;
      return a2;
    }

    v18 = a5;
    if (a6 < a4)
    {
      v19 = a4 / 2;
      __src = (a1 + 8 * (a4 / 2));
      v97 = a4 / 2;
      v21 = &__src[-1].i64[1];
      v20 = __src[-1].i64[1];
      v22 = *a3;
      v23 = **a3;
      v24 = *(*a3 + 1);
      if (v24 == v23)
      {
        goto LABEL_20;
      }

LABEL_11:
      v25 = llvm::SmallPtrSetImplBase::doFind(v22, v20);
      v24 = *v22;
      v26 = *(v22 + 1);
      if (v25)
      {
LABEL_25:
        if (v26 == v24)
        {
          v31 = 20;
        }

        else
        {
          v31 = 16;
        }

        if (v25 == &v26[*(v22 + v31)])
        {
LABEL_29:
          while (v21 != v8)
          {
            --v19;
            v32 = *--v21;
            v20 = v32;
            v22 = *a3;
            v23 = **a3;
            v24 = *(*a3 + 1);
            if (v24 != v23)
            {
              goto LABEL_11;
            }

LABEL_20:
            v29 = *(v22 + 5);
            if (!v29)
            {
LABEL_24:
              v25 = &v24[v29];
              v26 = v24;
              goto LABEL_25;
            }

            v30 = 8 * v29;
            while (*v23 != v20)
            {
              ++v23;
              v30 -= 8;
              if (!v30)
              {
                goto LABEL_24;
              }
            }

            if (v23 != &v24[*(v22 + 5)])
            {
              goto LABEL_33;
            }
          }

LABEL_34:
          v11 = a2 + 1;
          v33 = a4 - v97;
          v34 = __src;
          v35 = *a3;
          v36 = __src->i64[0];
          v37 = **a3;
          v38 = *(*a3 + 1);
          if (v38 == v37)
          {
            goto LABEL_44;
          }

LABEL_35:
          v39 = llvm::SmallPtrSetImplBase::doFind(v35, v36);
          v38 = *v35;
          v40 = *(v35 + 1);
          if (v39)
          {
LABEL_49:
            if (v40 == v38)
            {
              v45 = 20;
            }

            else
            {
              v45 = 16;
            }

            if (v39 != &v40[*(v35 + v45)])
            {
LABEL_53:
              do
              {
                if (++v34 == a2)
                {
                  goto LABEL_58;
                }

                --v33;
                v35 = *a3;
                v36 = *v34;
                v37 = **a3;
                v38 = *(*a3 + 1);
                if (v38 != v37)
                {
                  goto LABEL_35;
                }

LABEL_44:
                v43 = *(v35 + 5);
                if (!v43)
                {
LABEL_48:
                  v39 = &v38[v43];
                  v40 = v38;
                  goto LABEL_49;
                }

                v44 = 8 * v43;
                while (*v37 != v36)
                {
                  ++v37;
                  v44 -= 8;
                  if (!v44)
                  {
                    goto LABEL_48;
                  }
                }
              }

              while (v37 != &v38[*(v35 + 5)]);
            }
          }

          else
          {
            if (v40 == v38)
            {
              v41 = 20;
            }

            else
            {
              v41 = 16;
            }

            if (v40 == v38)
            {
              v42 = 20;
            }

            else
            {
              v42 = 16;
            }

            if (&v40[*(v35 + v41)] != &v40[*(v35 + v42)])
            {
              goto LABEL_53;
            }
          }

LABEL_58:
          if (v8 != __src)
          {
            if (__src == v11)
            {
              return v8;
            }

            else if (&v8->u64[1] == __src)
            {
              v46 = v8->i64[0];
              v47 = v11 - __src;
              memmove(v8, __src, v47);
              v11 = (v8->i64 + v47);
              *v11 = v46;
            }

            else if (&__src->u64[1] == v11)
            {
              v76 = (v11 - 1);
              v77 = *(v11 - 1);
              v11 = &v8->i64[1];
              if (v76 != v8)
              {
                memmove(&v8->u64[1], v8, v76 - v8);
              }

              v8->i64[0] = v77;
            }

            else
            {
              v80 = (__src - v8) >> 3;
              v81 = (v11 - __src) >> 3;
              if (v80 == v81)
              {
                v82 = &v8->i64[1];
                v83 = &__src->i64[1];
                do
                {
                  v84 = *(v82 - 1);
                  *(v82 - 1) = *(v83 - 1);
                  *(v83 - 1) = v84;
                  if (v82 == __src)
                  {
                    break;
                  }

                  ++v82;
                  v62 = v83++ == v11;
                }

                while (!v62);
                return __src;
              }

              else
              {
                v85 = (__src - v8) >> 3;
                do
                {
                  v86 = v85;
                  v85 = v81;
                  v81 = v86 % v81;
                }

                while (v81);
                v87 = (v8 + 8 * v85);
                do
                {
                  v89 = v87[-1].i64[1];
                  v87 = (v87 - 8);
                  v88 = v89;
                  v90 = (v87->i64 + __src - v8);
                  v91 = v87;
                  do
                  {
                    v92 = v90;
                    *v91 = *v90;
                    v93 = (v11 - v90) >> 3;
                    v94 = __OFSUB__(v80, v93);
                    v96 = v80 - v93;
                    v95 = (v96 < 0) ^ v94;
                    v90 = &v8->i64[v96];
                    if (v95)
                    {
                      v90 = &v92[v80];
                    }

                    v91 = v92;
                  }

                  while (v90 != v87);
                  *v92 = v88;
                }

                while (v87 != v8);
                return (v8 + v11 - __src);
              }
            }
          }

          return v11;
        }
      }

      else
      {
        if (v26 == v24)
        {
          v27 = 20;
        }

        else
        {
          v27 = 16;
        }

        if (v26 == v24)
        {
          v28 = 20;
        }

        else
        {
          v28 = 16;
        }

        if (&v26[*(v22 + v27)] == &v26[*(v22 + v28)])
        {
          goto LABEL_29;
        }
      }

LABEL_33:
      goto LABEL_34;
    }

    v11 = &a1->i64[1];
    *a5 = a1->i64[0];
    v48 = a5 + 1;
    if (&a1->u64[1] == a2)
    {
      a1->i64[0] = a1->i64[1];
    }

    else
    {
      do
      {
        while (1)
        {
          v49 = *a3;
          v50 = *v11;
          v51 = **a3;
          v52 = *(*a3 + 1);
          if (v52 == v51)
          {
            v55 = *(v49 + 5);
            if (v55)
            {
              v56 = 8 * v55;
              while (*v51 != v50)
              {
                ++v51;
                v56 -= 8;
                if (!v56)
                {
                  goto LABEL_75;
                }
              }
            }

            else
            {
LABEL_75:
              v51 = &v52[v55];
            }

            v53 = *(*a3 + 1);
          }

          else
          {
            v51 = llvm::SmallPtrSetImplBase::doFind(*a3, v50);
            v52 = *v49;
            v53 = *(v49 + 1);
            if (!v51)
            {
              if (v53 == v52)
              {
                v54 = 20;
              }

              else
              {
                v54 = 16;
              }

              v51 = &v53[*(v49 + v54)];
            }
          }

          v57 = v53 == v52 ? 20 : 16;
          v58 = &v53[*(v49 + v57)];
          v59 = *v11;
          if (v51 != v58)
          {
            break;
          }

          *v48++ = v59;
          if (++v11 == a2)
          {
            goto LABEL_82;
          }
        }

        v8->i64[0] = v59;
        v8 = (v8 + 8);
        ++v11;
      }

      while (v11 != a2);
LABEL_82:
      v8->i64[0] = *v11;
      v11 = &v8->i64[1];
      if (v48 <= v18)
      {
        return v11;
      }
    }

    v66 = (v18 + 8);
    if (v48 > v18 + 8)
    {
      v66 = v48;
    }

    v67 = v66 + ~v18;
    if (v67 < 0x18)
    {
      v68 = v11;
    }

    else
    {
      v68 = v11;
      if (v11 - v18 >= 0x20)
      {
        v69 = (v67 >> 3) + 1;
        v70 = v69 & 0x3FFFFFFFFFFFFFFCLL;
        v71 = (v18 + v70 * 8);
        v68 = &v11[v70];
        v72 = v11 + 2;
        v73 = (v18 + 16);
        v74 = v69 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v75 = *v73;
          *(v72 - 1) = *(v73 - 1);
          *v72 = v75;
          v72 += 2;
          v73 += 2;
          v74 -= 4;
        }

        while (v74);
        v18 = v71;
        if (v69 == (v69 & 0x3FFFFFFFFFFFFFFCLL))
        {
          return v11;
        }
      }
    }

    do
    {
      v78 = *v18;
      v18 += 8;
      *v68++ = v78;
    }

    while (v18 < v48);
    return v11;
  }

  v11 = &a1->i64[1];
  v12 = a1->i64[1];
  v13 = *a3;
  v14 = **a3;
  v15 = *(*a3 + 1);
  if (v15 == v14)
  {
    v60 = *(v13 + 5);
    if (v60)
    {
      v61 = 8 * v60;
      while (*v14 != v12)
      {
        ++v14;
        v61 -= 8;
        if (!v61)
        {
          goto LABEL_88;
        }
      }
    }

    else
    {
LABEL_88:
      v14 = &v15[v60];
    }

    v16 = *(*a3 + 1);
  }

  else
  {
    v14 = llvm::SmallPtrSetImplBase::doFind(*a3, v12);
    v15 = *v13;
    v16 = *(v13 + 1);
    if (!v14)
    {
      v17 = 16;
      if (v16 == v15)
      {
        v17 = 20;
      }

      v14 = &v16[*(v13 + v17)];
    }
  }

  v62 = v16 == v15;
  v63 = 16;
  if (v62)
  {
    v63 = 20;
  }

  if (v14 == &v16[*(v13 + v63)])
  {
    v65 = v8->i64[1];
    v8->i64[1] = *a2;
    *a2 = v65;
    *v8 = vextq_s8(*v8, *v8, 8uLL);
  }

  else
  {
    v64 = *v8;
    *v8 = vextq_s8(*v8, *v8, 8uLL);
    v8->i64[1] = *a2;
    *a2 = v64.i64[0];
    return a2;
  }

  return v11;
}

void OUTLINED_FUNCTION_15_11(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = *(v4 + 8);
  v7 = 24 * *(v4 + 24);

  llvm::deallocate_buffer(v6, v7);
}

void *OUTLINED_FUNCTION_30_5()
{
  *(v2 - 256) = v0 - 16;

  return llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](v1, (v2 - 256));
}

void *OUTLINED_FUNCTION_31_6@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + v2 / -24 * v1), v3, v2);
}

void OUTLINED_FUNCTION_51_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unint64_t *a59, unsigned int a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  mlir::pdl_to_pdl_interp::OptimalBranching::preOrderTraversal(v65 - 256, a59, a60, &a65);
}

uint64_t mlir::pdl_to_pdl_interp::OptimalBranching::OptimalBranching(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = *a2;
  *a2 = 0;
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v3 = *(result + 12);
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = a3;
  *(result + 48) = 0;
  return result;
}

void mlir::pdl_to_pdl_interp::OptimalBranching::solve(mlir::pdl_to_pdl_interp::OptimalBranching *this)
{
  v307[6] = *MEMORY[0x1E69E9840];
  if (!*(this + 5))
  {
LABEL_15:
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](this + 32, this + 3) = 0;
    v297 = 0;
    v298 = 0;
    v299 = 0;
    v11 = *(this + 2);
    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = (4 * v11 / 3u + 1) | ((4 * v11 / 3u + 1) >> 1);
    v13 = v12 | (v12 >> 2) | ((v12 | (v12 >> 2)) >> 4);
    llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(&v297, (((v13 | (v13 >> 8)) >> 16) | v13 | (v13 >> 8)) + 1);
    if (!*(this + 2))
    {
      goto LABEL_25;
    }

    v14 = *(this + 4);
    if (v14)
    {
      v15 = 32 * v14;
      v16 = *this;
      while ((*v16 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v16 += 4;
        v15 -= 32;
        if (!v15)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v16 = *this;
    }

    v17 = *this + 32 * v14;
    if (v16 == v17)
    {
LABEL_25:
      llvm::deallocate_buffer(v297, (16 * v299));
    }

    v18 = 0;
    v19 = *(this + 4);
    v20 = *(this + 12);
LABEL_27:
    v21 = *v16;
    if (v20)
    {
      v22 = 0x9DDFEA08EB382D69 * ((8 * *v16 - 0xAE502812AA7333) ^ HIDWORD(*v16));
      v23 = 0x9DDFEA08EB382D69 * (HIDWORD(v21) ^ (v22 >> 47) ^ v22);
      v24 = (-348639895 * ((v23 >> 47) ^ v23)) & (v20 - 1);
      v25 = *(v19 + 16 * v24);
      if (v25 == v21)
      {
        goto LABEL_29;
      }

      v26 = 1;
      while (v25 != -4096)
      {
        v27 = v24 + v26++;
        v24 = v27 & (v20 - 1);
        v25 = *(v19 + 16 * v24);
        if (v25 == v21)
        {
          goto LABEL_29;
        }
      }
    }

    if (v298)
    {
      v28 = v299;
      if (v299 <= 4 * v298 || v299 < 0x41)
      {
        goto LABEL_51;
      }

      v29 = 1 << (33 - __clz(v298 - 1));
      if (v29 <= 64)
      {
        v30 = 64;
      }

      else
      {
        v30 = v29;
      }

      if (v30 != v299)
      {
        goto LABEL_50;
      }

      v298 = 0;
      v31 = v297;
      v32 = (v299 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (!v32)
      {
        v35 = v297;
LABEL_62:
        v46 = (v31 + 16 * v28);
        do
        {
          *v35 = -4096;
          v35 = (v35 + 16);
        }

        while (v35 != v46);
        goto LABEL_64;
      }

      v33 = v32 + 1;
      v34 = (v32 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v35 = (v297 + 16 * v34);
      v36 = (v297 + 16);
      v37 = v34;
      do
      {
        *(v36 - 2) = -4096;
        *v36 = -4096;
        v36 += 4;
        v37 -= 2;
      }

      while (v37);
      if (v33 != v34)
      {
        goto LABEL_62;
      }

      while (1)
      {
LABEL_64:
        v47 = *this;
        v48 = *(this + 4);
        v49 = HIDWORD(v21);
        v50 = 8 * v21;
        if (v48)
        {
          v51 = 0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * ((v50 - 0xAE502812AA7333) ^ v49)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v50 - 0xAE502812AA7333) ^ v49)));
          v52 = (-348639895 * ((v51 >> 47) ^ v51)) & (v48 - 1);
          v53 = *(v47 + 32 * v52);
          if (v21 == v53)
          {
            goto LABEL_71;
          }

          v54 = 1;
          while (v53 != -4096)
          {
            v55 = v52 + v54++;
            v52 = v55 & (v48 - 1);
            v53 = *(v47 + 32 * v52);
            if (v21 == v53)
            {
              goto LABEL_71;
            }
          }
        }

        v52 = *(this + 4);
LABEL_71:
        v19 = *(this + 4);
        v56 = *(this + 12);
        if (!v56)
        {
          goto LABEL_131;
        }

        v57 = 0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * ((v50 - 0xAE502812AA7333) ^ v49)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v50 - 0xAE502812AA7333) ^ v49)));
        v58 = (v56 - 1) & (-348639895 * ((v57 >> 47) ^ v57));
        v59 = (v19 + 16 * v58);
        v60 = *v59;
        if (v21 != *v59)
        {
          v61 = 0;
          v62 = 1;
          while (v60 != -4096)
          {
            if (v61)
            {
              v63 = 0;
            }

            else
            {
              v63 = v60 == -8192;
            }

            if (v63)
            {
              v61 = v59;
            }

            v64 = v58 + v62++;
            v58 = v64 & (v56 - 1);
            v59 = (v19 + 16 * v58);
            v60 = *v59;
            if (v21 == *v59)
            {
              goto LABEL_87;
            }
          }

          if (v61)
          {
            v59 = v61;
          }

          v94 = *(this + 10);
          if (4 * v94 + 4 >= 3 * v56)
          {
LABEL_131:
            v288 = 8 * v21;
            v56 *= 2;
            goto LABEL_137;
          }

          if (v56 + ~v94 - *(this + 11) <= v56 >> 3)
          {
            v288 = 8 * v21;
LABEL_137:
            llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(this + 32, v56);
            v19 = *(this + 4);
            v96 = *(this + 12);
            if (v96)
            {
              v50 = v288;
              v97 = 0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * ((v288 - 0xAE502812AA7333) ^ v49)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v288 - 0xAE502812AA7333) ^ v49)));
              v98 = v96 - 1;
              v99 = v98 & (-348639895 * ((v97 >> 47) ^ v97));
              v59 = (v19 + 16 * v99);
              v100 = *v59;
              if (v21 != *v59)
              {
                v109 = 0;
                v110 = 1;
                while (v100 != -4096)
                {
                  if (v109)
                  {
                    v111 = 0;
                  }

                  else
                  {
                    v111 = v100 == -8192;
                  }

                  if (v111)
                  {
                    v109 = v59;
                  }

                  v112 = v99 + v110++;
                  v99 = v112 & v98;
                  v59 = (v19 + 16 * v99);
                  v100 = *v59;
                  if (v21 == *v59)
                  {
                    goto LABEL_153;
                  }
                }

                if (v109)
                {
                  v59 = v109;
                }
              }
            }

            else
            {
              v59 = 0;
              v50 = v288;
            }

LABEL_153:
            ++*(this + 10);
            if (*v59 != -4096)
            {
LABEL_85:
              --*(this + 11);
            }
          }

          else
          {
            *(this + 10) = v94 + 1;
            if (*v59 != -4096)
            {
              goto LABEL_85;
            }
          }

          *v59 = v21;
          v59[1] = 0;
        }

LABEL_87:
        v65 = v47 + 32 * v52;
        if (!*(v65 + 16))
        {
          goto LABEL_105;
        }

        v66 = *(v65 + 8);
        v67 = *(v65 + 24);
        if (v67)
        {
          v68 = 24 * v67;
          v69 = *(v65 + 8);
          while ((*v69 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v69 += 3;
            v68 -= 24;
            if (!v68)
            {
              goto LABEL_105;
            }
          }
        }

        else
        {
          v69 = *(v65 + 8);
        }

        v70 = (v66 + 24 * v67);
        if (v69 == v70)
        {
LABEL_105:
          v72 = 0;
        }

        else
        {
          v71 = 0;
          v72 = 0;
          v73 = v59[1];
          do
          {
            v74 = *(v69 + 2);
            if (!v73 || v74 < v72 || v72 >= v74 && *(v69 + 3) < v71)
            {
              v73 = *v69;
              v59[1] = *v69;
              v71 = *(v69 + 3);
              v72 = v74;
            }

            do
            {
              v69 += 3;
            }

            while (v69 != v70 && (*v69 | 0x1000) == 0xFFFFFFFFFFFFF000);
          }

          while (v69 != v70);
        }

        v75 = v297;
        v76 = v299;
        if (!v299)
        {
          goto LABEL_135;
        }

        v77 = 0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * ((v50 - 0xAE502812AA7333) ^ v49)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v50 - 0xAE502812AA7333) ^ v49)));
        v78 = v299 - 1;
        v79 = (v299 - 1) & (-348639895 * ((v77 >> 47) ^ v77));
        v80 = v297 + 16 * v79;
        v81 = *v80;
        if (v21 != *v80)
        {
          v82 = 0;
          v83 = 1;
          while (v81 != -4096)
          {
            if (v82)
            {
              v84 = 0;
            }

            else
            {
              v84 = v81 == -8192;
            }

            if (v84)
            {
              v82 = v80;
            }

            v85 = v79 + v83++;
            v79 = v85 & v78;
            v80 = v297 + 16 * (v85 & v78);
            v81 = *v80;
            if (v21 == *v80)
            {
              goto LABEL_122;
            }
          }

          if (v82)
          {
            v80 = v82;
          }

          if (4 * v298 + 4 >= 3 * v299)
          {
LABEL_135:
            v95 = v50;
            v76 = 2 * v299;
            goto LABEL_141;
          }

          if (v299 + ~v298 - HIDWORD(v298) <= v299 >> 3)
          {
            v95 = v50;
LABEL_141:
            llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(&v297, v76);
            v75 = v297;
            if (v299)
            {
              v101 = 0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * ((v95 - 0xAE502812AA7333) ^ v49)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v95 - 0xAE502812AA7333) ^ v49)));
              v102 = v299 - 1;
              v103 = (v299 - 1) & (-348639895 * ((v101 >> 47) ^ v101));
              v80 = v297 + 16 * v103;
              v104 = *v80;
              if (v21 != *v80)
              {
                v105 = 0;
                v106 = 1;
                while (v104 != -4096)
                {
                  if (v105)
                  {
                    v107 = 0;
                  }

                  else
                  {
                    v107 = v104 == -8192;
                  }

                  if (v107)
                  {
                    v105 = v80;
                  }

                  v108 = v103 + v106++;
                  v103 = v108 & v102;
                  v80 = v297 + 16 * (v108 & v102);
                  v104 = *v80;
                  if (v21 == *v80)
                  {
                    goto LABEL_156;
                  }
                }

                if (v105)
                {
                  v80 = v105;
                }
              }
            }

            else
            {
              v80 = 0;
            }

LABEL_156:
            LODWORD(v298) = v298 + 1;
            if (*v80 != -4096)
            {
LABEL_120:
              --HIDWORD(v298);
            }
          }

          else
          {
            LODWORD(v298) = v298 + 1;
            if (*v80 != -4096)
            {
              goto LABEL_120;
            }
          }

          *v80 = v21;
          *(v80 + 2) = 0;
          v19 = *(this + 4);
        }

LABEL_122:
        *(v80 + 2) = v72;
        v21 = v59[1];
        v18 += v72;
        v20 = *(this + 12);
        if (v20)
        {
          v86 = 0x9DDFEA08EB382D69 * ((8 * v59[1] - 0xAE502812AA7333) ^ HIDWORD(v59[1]));
          v87 = 0x9DDFEA08EB382D69 * (HIDWORD(v21) ^ (v86 >> 47) ^ v86);
          v88 = -348639895 * ((v87 >> 47) ^ v87);
          v89 = v20 - 1;
          v90 = v88 & (v20 - 1);
          v91 = *(v19 + 16 * v90);
          if (v91 == v21)
          {
LABEL_173:
            if (!v299)
            {
              goto LABEL_29;
            }

            v113 = v299 - 1;
            v114 = (v299 - 1) & v88;
            v115 = *(v75 + 2 * v114);
            if (v115 != v21)
            {
              v116 = 1;
              while (v115 != -4096)
              {
                v117 = v114 + v116++;
                v114 = v117 & v113;
                v115 = *(v75 + 2 * (v117 & v113));
                if (v115 == v21)
                {
                  goto LABEL_178;
                }
              }

              do
              {
LABEL_29:
                v16 += 4;
              }

              while (v16 != v17 && (*v16 | 0x1000) == 0xFFFFFFFFFFFFF000);
              if (v16 == v17)
              {
                goto LABEL_25;
              }

              goto LABEL_27;
            }

LABEL_178:
            v118 = 0;
            v119 = v307;
            v305 = v307;
            v306 = 0x600000000;
            v120 = v21;
            while (1)
            {
LABEL_180:
              if (v118 >= HIDWORD(v306))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v305, v307, v118 + 1, 8);
                v118 = v306;
              }

              v305[v118] = v120;
              v118 = v306 + 1;
              LODWORD(v306) = v306 + 1;
              v121 = *(this + 12);
              if (!v121)
              {
                goto LABEL_179;
              }

              v122 = *(this + 4);
              v123 = 0x9DDFEA08EB382D69 * ((8 * v120 - 0xAE502812AA7333) ^ HIDWORD(v120));
              v124 = 0x9DDFEA08EB382D69 * (HIDWORD(v120) ^ (v123 >> 47) ^ v123);
              LODWORD(v123) = -348639895 * ((v124 >> 47) ^ v124);
              v125 = v121 - 1;
              v126 = (v121 - 1) & v123;
              v127 = *(v122 + 16 * v126);
              if (v120 != v127)
              {
                break;
              }

LABEL_184:
              v120 = *(v122 + 16 * v126 + 8);
              if (v120 == v21)
              {
LABEL_190:
                v295[0] = 0;
                v295[1] = 0;
                v296 = 0;
                v292 = 0;
                v293 = 0;
                v294 = 0;
                v304 = *v305;
                v300 = &v305[v118];
                v301 = v305;
                llvm::detail::DenseSetImpl<mlir::Value,llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,llvm::DenseMapInfo<mlir::Value,void>>::DenseSetImpl<mlir::Value const*>(&v302, &v301, &v300);
                if (!*(this + 2))
                {
                  goto LABEL_397;
                }

                v130 = *(this + 4);
                if (v130)
                {
                  v131 = 32 * v130;
                  v132 = *this;
                  while ((*v132 | 0x1000) == 0xFFFFFFFFFFFFF000)
                  {
                    v132 += 4;
                    v131 -= 32;
                    if (!v131)
                    {
                      goto LABEL_397;
                    }
                  }
                }

                else
                {
                  v132 = *this;
                }

                v133 = *this + 32 * v130;
                if (v132 == v133)
                {
                  goto LABEL_397;
                }

                v134 = 0;
                v135 = 0;
                v136 = 0;
                v137 = 0;
                while (2)
                {
                  v138 = *v132;
                  v301 = *v132;
                  v139 = v302;
                  v140 = v303;
                  v141 = v303;
                  if (v303)
                  {
                    v142 = 0x9DDFEA08EB382D69 * ((8 * v138 - 0xAE502812AA7333) ^ HIDWORD(v138));
                    v143 = 0x9DDFEA08EB382D69 * (HIDWORD(v138) ^ (v142 >> 47) ^ v142);
                    v144 = -348639895 * ((v143 >> 47) ^ v143);
                    v141 = v144 & (v303 - 1);
                    v145 = *(v302 + v141);
                    if (v145 == v138)
                    {
LABEL_201:
                      if (v141 == v303)
                      {
                        goto LABEL_202;
                      }

                      if (v299)
                      {
                        v152 = (v299 - 1) & v144;
                        v153 = *(v297 + 2 * v152);
                        if (v153 == v138)
                        {
LABEL_210:
                          v154 = *(v297 + 4 * v152 + 2);
                          v289 = v136;
                          v155 = v132[1];
                          v156 = *(v132 + 6);
                          if (!*(v132 + 4))
                          {
                            goto LABEL_380;
                          }
                        }

                        else
                        {
                          v266 = 1;
                          while (v153 != -4096)
                          {
                            v267 = v152 + v266++;
                            v152 = v267 & (v299 - 1);
                            v153 = *(v297 + 2 * v152);
                            if (v153 == v138)
                            {
                              goto LABEL_210;
                            }
                          }

                          v154 = 0;
                          v289 = v136;
                          v155 = v132[1];
                          v156 = *(v132 + 6);
                          if (!*(v132 + 4))
                          {
LABEL_380:
                            llvm::deallocate_buffer(v155, (24 * v156));
                          }
                        }
                      }

                      else
                      {
                        v154 = 0;
                        v289 = v136;
                        v155 = v132[1];
                        v156 = *(v132 + 6);
                        if (!*(v132 + 4))
                        {
                          goto LABEL_380;
                        }
                      }

                      v158 = v155;
                      if (v156)
                      {
                        v159 = 24 * v156;
                        v158 = v155;
                        while ((*v158 | 0x1000) == 0xFFFFFFFFFFFFF000)
                        {
                          v158 = (v158 + 24);
                          v159 -= 24;
                          if (!v159)
                          {
                            goto LABEL_380;
                          }
                        }
                      }

                      v160 = (v155 + 24 * v156);
                      if (v158 == v160)
                      {
                        goto LABEL_380;
                      }

                      while (2)
                      {
                        v161 = *v158;
                        v162 = HIDWORD(*v158);
                        v163 = 8 * *v158;
                        if (v303)
                        {
                          v164 = 0x9DDFEA08EB382D69 * (v162 ^ ((0x9DDFEA08EB382D69 * ((v163 - 0xAE502812AA7333) ^ v162)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v163 - 0xAE502812AA7333) ^ v162)));
                          v165 = (-348639895 * ((v164 >> 47) ^ v164)) & (v303 - 1);
                          v166 = *(v302 + v165);
                          if (v166 == v161)
                          {
LABEL_222:
                            if (v165 != v303)
                            {
                              goto LABEL_268;
                            }
                          }

                          else
                          {
                            v202 = 1;
                            while (v166 != -4096)
                            {
                              v203 = v165 + v202++;
                              v165 = v203 & (v303 - 1);
                              v166 = *(v302 + v165);
                              if (v166 == v161)
                              {
                                goto LABEL_222;
                              }
                            }
                          }
                        }

                        if (v137)
                        {
                          v167 = 0x9DDFEA08EB382D69 * (v162 ^ ((0x9DDFEA08EB382D69 * ((v163 - 0xAE502812AA7333) ^ v162)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v163 - 0xAE502812AA7333) ^ v162)));
                          v168 = (-348639895 * ((v167 >> 47) ^ v167)) & (v137 - 1);
                          v169 = (v134 + 24 * v168);
                          v170 = *v169;
                          if (*v169 != v161)
                          {
                            v171 = 1;
                            while (v170 != -4096)
                            {
                              v172 = v168 + v171++;
                              v168 = v172 & (v137 - 1);
                              v169 = (v134 + 24 * v168);
                              v170 = *v169;
                              if (*v169 == v161)
                              {
                                goto LABEL_230;
                              }
                            }

                            goto LABEL_229;
                          }
                        }

                        else
                        {
LABEL_229:
                          v169 = (v134 + 24 * v137);
                        }

LABEL_230:
                        v173 = *(v158 + 3);
                        v174 = *(v158 + 2) - v154;
                        if (v169 == (v134 + 24 * v137) || (v175 = v169[2], v174 < v175) || v175 >= v174 && v169[3] > v173)
                        {
                          v281 = (v134 + 24 * v137);
                          v282 = 8 * *v158;
                          v176 = v294;
                          if (!v294)
                          {
                            goto LABEL_279;
                          }

                          v177 = 0x9DDFEA08EB382D69 * (v162 ^ ((0x9DDFEA08EB382D69 * ((v163 - 0xAE502812AA7333) ^ v162)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v163 - 0xAE502812AA7333) ^ v162)));
                          v178 = v294 - 1;
                          v179 = (v294 - 1) & (-348639895 * ((v177 >> 47) ^ v177));
                          v180 = v292 + 16 * v179;
                          v181 = *v180;
                          if (*v180 != v161)
                          {
                            v182 = 0;
                            v183 = 1;
                            while (v181 != -4096)
                            {
                              if (v182)
                              {
                                v184 = 0;
                              }

                              else
                              {
                                v184 = v181 == -8192;
                              }

                              if (v184)
                              {
                                v182 = v180;
                              }

                              v185 = v179 + v183++;
                              v179 = v185 & v178;
                              v180 = v292 + 16 * (v185 & v178);
                              v181 = *v180;
                              if (*v180 == v161)
                              {
                                goto LABEL_251;
                              }
                            }

                            if (v182)
                            {
                              v180 = v182;
                            }

                            if (4 * v293 + 4 >= 3 * v294)
                            {
LABEL_279:
                              v277 = HIDWORD(*v158);
                              v279 = *v158;
                              v269 = *(v158 + 2) - v154;
                              v271 = *(v158 + 3);
                              v273 = v160;
                              v275 = v154;
                              v284 = v134;
                              v204 = v119;
                              v176 = 2 * v294;
                              goto LABEL_296;
                            }

                            if (v294 + ~v293 - HIDWORD(v293) <= v294 >> 3)
                            {
                              v277 = HIDWORD(*v158);
                              v279 = *v158;
                              v269 = *(v158 + 2) - v154;
                              v271 = *(v158 + 3);
                              v273 = v160;
                              v275 = v154;
                              v284 = v134;
                              v204 = v119;
LABEL_296:
                              llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(&v292, v176);
                              if (v294)
                              {
                                v218 = 0x9DDFEA08EB382D69 * (v277 ^ ((0x9DDFEA08EB382D69 * ((v282 - 0xAE502812AA7333) ^ v277)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v282 - 0xAE502812AA7333) ^ v277)));
                                v219 = -348639895 * ((v218 >> 47) ^ v218);
                                v220 = v294 - 1;
                                v221 = (v294 - 1) & v219;
                                v180 = v292 + 16 * v221;
                                v222 = *v180;
                                if (*v180 != v279)
                                {
                                  v223 = 0;
                                  v224 = 1;
                                  while (v222 != -4096)
                                  {
                                    if (v223)
                                    {
                                      v225 = 0;
                                    }

                                    else
                                    {
                                      v225 = v222 == -8192;
                                    }

                                    if (v225)
                                    {
                                      v223 = v180;
                                    }

                                    v226 = v221 + v224++;
                                    v221 = v226 & v220;
                                    v180 = v292 + 16 * (v226 & v220);
                                    v222 = *v180;
                                    if (*v180 == v279)
                                    {
                                      goto LABEL_314;
                                    }
                                  }

                                  if (v223)
                                  {
                                    v180 = v223;
                                  }
                                }
                              }

                              else
                              {
                                v180 = 0;
                              }

LABEL_314:
                              v119 = v204;
                              v134 = v284;
                              v154 = v275;
                              v160 = v273;
                              v162 = v277;
                              v161 = v279;
                              v174 = v269;
                              v173 = v271;
                              LODWORD(v293) = v293 + 1;
                              if (*v180 != -4096)
                              {
LABEL_249:
                                --HIDWORD(v293);
                              }
                            }

                            else
                            {
                              LODWORD(v293) = v293 + 1;
                              if (*v180 != -4096)
                              {
                                goto LABEL_249;
                              }
                            }

                            *v180 = v161;
                            *(v180 + 1) = 0;
                          }

LABEL_251:
                          *(v180 + 1) = v301;
                          if (!v137)
                          {
                            goto LABEL_283;
                          }

                          v186 = 0x9DDFEA08EB382D69 * (v162 ^ ((0x9DDFEA08EB382D69 * ((v282 - 0xAE502812AA7333) ^ v162)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v282 - 0xAE502812AA7333) ^ v162)));
                          v187 = v137 - 1;
                          v188 = (-348639895 * ((v186 >> 47) ^ v186)) & (v137 - 1);
                          v189 = v134 + 24 * v188;
                          v190 = *v189;
                          if (*v189 == v161)
                          {
LABEL_267:
                            *(v189 + 2) = v174;
                            *(v189 + 3) = v173;
                            goto LABEL_268;
                          }

                          v191 = v173;
                          v192 = v161;
                          v193 = v160;
                          v194 = v154;
                          v195 = 0;
                          v196 = 1;
                          while (v190 != -4096)
                          {
                            if (v195)
                            {
                              v197 = 0;
                            }

                            else
                            {
                              v197 = v190 == -8192;
                            }

                            if (v197)
                            {
                              v195 = v189;
                            }

                            v198 = v188 + v196++;
                            v188 = v198 & v187;
                            v189 = v134 + 24 * (v198 & v187);
                            v190 = *v189;
                            if (*v189 == v192)
                            {
                              v154 = v194;
                              v160 = v193;
                              v173 = v191;
                              goto LABEL_267;
                            }
                          }

                          if (v195)
                          {
                            v189 = v195;
                          }

                          v154 = v194;
                          v160 = v193;
                          v161 = v192;
                          v173 = v191;
                          if (4 * v135 + 4 < (3 * v137))
                          {
                            v286 = v135;
                            v199 = v137;
                            if (~v135 - v289 + v137 <= v137 >> 3)
                            {
                              goto LABEL_284;
                            }

                            v200 = v137;
                          }

                          else
                          {
LABEL_283:
                            v199 = 2 * v137;
LABEL_284:
                            v278 = v162;
                            v280 = v161;
                            v270 = v174;
                            v272 = v173;
                            v274 = v160;
                            v276 = v154;
                            v205 = (v199 - 1) | ((v199 - 1) >> 1);
                            v206 = v205 | (v205 >> 2) | ((v205 | (v205 >> 2)) >> 4);
                            v207 = ((v206 | (v206 >> 8)) >> 16) | v206 | (v206 >> 8);
                            if ((v207 + 1) > 0x40)
                            {
                              v200 = (v207 + 1);
                            }

                            else
                            {
                              v200 = 64;
                            }

                            v290 = 24 * v200;
                            buffer = llvm::allocate_buffer(v290, 8uLL);
                            v209 = (v290 - 24) / 0x18 + 1;
                            v210 = v209 & 0x1FFFFFFFFFFFFFFELL;
                            v211 = 24 * (v209 & 0x1FFFFFFFFFFFFFFELL);
                            v212 = &buffer[v211 / 8];
                            if (v134)
                            {
                              v213 = buffer;
                              v214 = v209 & 0x1FFFFFFFFFFFFFFELL;
                              do
                              {
                                *v213 = -4096;
                                v213[3] = -4096;
                                v213 += 6;
                                v214 -= 2;
                              }

                              while (v214);
                              if (v209 != v210)
                              {
                                v215 = v290 - v211;
                                do
                                {
                                  *v212 = -4096;
                                  v212 += 3;
                                  v215 -= 24;
                                }

                                while (v215);
                              }

                              if (v137)
                              {
                                v287 = 0;
                                v216 = v200 - 1;
                                v217 = v134;
                                do
                                {
                                  v235 = *v217;
                                  if ((*v217 | 0x1000) != 0xFFFFFFFFFFFFF000)
                                  {
                                    v236 = 0x9DDFEA08EB382D69 * ((8 * *v217 - 0xAE502812AA7333) ^ HIDWORD(*v217));
                                    v237 = 0x9DDFEA08EB382D69 * (HIDWORD(v235) ^ (v236 >> 47) ^ v236);
                                    v238 = (-348639895 * ((v237 >> 47) ^ v237)) & v216;
                                    v234 = &buffer[3 * v238];
                                    v239 = *v234;
                                    if (v235 != *v234)
                                    {
                                      v240 = 0;
                                      v241 = 1;
                                      while (v239 != -4096)
                                      {
                                        if (v240)
                                        {
                                          v242 = 0;
                                        }

                                        else
                                        {
                                          v242 = v239 == -8192;
                                        }

                                        if (v242)
                                        {
                                          v240 = v234;
                                        }

                                        v243 = v238 + v241++;
                                        v238 = v243 & v216;
                                        v234 = &buffer[3 * (v243 & v216)];
                                        v239 = *v234;
                                        if (v235 == *v234)
                                        {
                                          goto LABEL_321;
                                        }
                                      }

                                      if (v240)
                                      {
                                        v234 = v240;
                                      }
                                    }

LABEL_321:
                                    *v234 = v235;
                                    *(v234 + 8) = *(v217 + 8);
                                    ++v287;
                                  }

                                  v217 = (v217 + 24);
                                }

                                while (v217 != v281);
                              }

                              llvm::deallocate_buffer(v134, (24 * v137));
                            }

                            v227 = buffer;
                            v228 = v209 & 0x1FFFFFFFFFFFFFFELL;
                            do
                            {
                              *v227 = -4096;
                              v227[3] = -4096;
                              v227 += 6;
                              v228 -= 2;
                            }

                            while (v228);
                            if (v209 != v210)
                            {
                              v229 = v290 - v211;
                              do
                              {
                                *v212 = -4096;
                                v212 += 3;
                                v229 -= 24;
                              }

                              while (v229);
                            }

                            v286 = 0;
                            v230 = 0x9DDFEA08EB382D69 * (v278 ^ ((0x9DDFEA08EB382D69 * ((v282 - 0xAE502812AA7333) ^ v278)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v282 - 0xAE502812AA7333) ^ v278)));
                            v231 = v200 - 1;
                            v232 = (v200 - 1) & (-348639895 * ((v230 >> 47) ^ v230));
                            v189 = &buffer[3 * v232];
                            v233 = *v189;
                            if (*v189 == v280)
                            {
LABEL_318:
                              v289 = 0;
                              v161 = v280;
                              v201 = v280;
                              v134 = buffer;
                              v154 = v276;
                              v160 = v274;
                              v174 = v270;
                              v173 = v272;
                              goto LABEL_266;
                            }

                            v244 = 0;
                            v245 = 1;
                            while (v233 != -4096)
                            {
                              if (v244)
                              {
                                v246 = 0;
                              }

                              else
                              {
                                v246 = v233 == -8192;
                              }

                              if (v246)
                              {
                                v244 = v189;
                              }

                              v247 = v232 + v245++;
                              v232 = v247 & v231;
                              v189 = &buffer[3 * (v247 & v231)];
                              v233 = *v189;
                              if (*v189 == v280)
                              {
                                goto LABEL_318;
                              }
                            }

                            v289 = 0;
                            if (v244)
                            {
                              v189 = v244;
                            }

                            v134 = buffer;
                            v154 = v276;
                            v160 = v274;
                            v161 = v280;
                            v174 = v270;
                            v173 = v272;
                          }

                          v201 = *v189;
LABEL_266:
                          *(v189 + 1) = 0;
                          *(v189 + 2) = 0;
                          v289 -= v201 != -4096;
                          *v189 = v161;
                          v137 = v200;
                          v135 = v286 + 1;
                          goto LABEL_267;
                        }

                        do
                        {
LABEL_268:
                          v158 = (v158 + 24);
                          if (v158 == v160)
                          {
                            goto LABEL_379;
                          }
                        }

                        while ((*v158 | 0x1000) == 0xFFFFFFFFFFFFF000);
                        if (v158 == v160)
                        {
LABEL_379:
                          v155 = v132[1];
                          v156 = *(v132 + 6);
                          goto LABEL_380;
                        }

                        continue;
                      }
                    }

                    v264 = 1;
                    while (v145 != -4096)
                    {
                      v265 = v141 + v264++;
                      v141 = v265 & (v303 - 1);
                      v145 = *(v302 + v141);
                      if (v145 == v138)
                      {
                        goto LABEL_201;
                      }
                    }

                    v141 = v303;
                    v146 = (v132 + 1);
                    v147 = v132[1];
                    v148 = *(v132 + 4);
                    if (!v148)
                    {
                      goto LABEL_381;
                    }
                  }

                  else
                  {
LABEL_202:
                    v146 = (v132 + 1);
                    v147 = v132[1];
                    v148 = *(v132 + 4);
                    if (!v148)
                    {
                      goto LABEL_381;
                    }
                  }

                  v149 = *(v146 + 16);
                  if (v149)
                  {
                    v150 = 24 * v149;
                    v151 = v147;
                    while ((*v151 | 0x1000) == 0xFFFFFFFFFFFFF000)
                    {
                      v151 += 3;
                      v150 -= 24;
                      if (!v150)
                      {
                        goto LABEL_381;
                      }
                    }

                    v283 = v134;
                    v285 = v135;
                    v157 = v119;
                  }

                  else
                  {
                    v283 = v134;
                    v285 = v135;
                    v157 = v119;
                    v151 = v147;
                  }

                  v248 = &v147[3 * v149];
                  if (v151 == v248)
                  {
                    v119 = v157;
                    v135 = v285;
                    v134 = v283;
                    goto LABEL_381;
                  }

                  v291 = v136;
                  v249 = 0;
                  v250 = 0;
                  v251 = 0;
                  v252 = v303 - 1;
LABEL_354:
                  if (v140)
                  {
                    v254 = HIDWORD(*v151);
                    v255 = 0x9DDFEA08EB382D69 * ((8 * *v151 - 0xAE502812AA7333) ^ v254);
                    v256 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v254 ^ (v255 >> 47) ^ v255)) >> 32) >> 15) ^ (-348639895 * (v254 ^ (v255 >> 47) ^ v255)))) & v252;
                    v257 = *(v139 + v256);
                    if (v257 == *v151)
                    {
LABEL_356:
                      if (v256 == v141)
                      {
                        goto LABEL_357;
                      }

                      v258 = *(v151 + 2);
                      if (v251 && v258 >= v249)
                      {
                        if (v249 < v258 || (v259 = *(v151 + 3), v259 >= v250))
                        {
LABEL_367:
                          for (i = v151 + 3; i != v248; i += 3)
                          {
                            if ((*i | 0x1000) != 0xFFFFFFFFFFFFF000)
                            {
                              break;
                            }
                          }

                          *v151 = -8192;
                          --v148;
                          v253 = *(v132 + 5) + 1;
                          *(v132 + 4) = v148;
                          *(v132 + 5) = v253;
                          v151 = i;
LABEL_353:
                          if (v151 == v248)
                          {
                            if (v251)
                            {
                              v263 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::operator[](v146, &v304);
                              *v263 = v249;
                              v263[1] = v250;
                              *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v295, &v301) = v251;
                            }

                            v119 = v157;
                            v135 = v285;
                            v134 = v283;
                            v136 = v291;
                            do
                            {
LABEL_381:
                              v132 += 4;
                              if (v132 == v133)
                              {
                                goto LABEL_397;
                              }
                            }

                            while ((*v132 | 0x1000) == 0xFFFFFFFFFFFFF000);
                            if (v132 == v133)
                            {
LABEL_397:
                              v268 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::operator[](this, &v304);
                              llvm::deallocate_buffer(*v268, (24 * *(v268 + 16)));
                            }

                            continue;
                          }

                          goto LABEL_354;
                        }
                      }

                      else
                      {
                        v259 = *(v151 + 3);
                      }

                      v251 = *v151;
                      v250 = v259;
                      v249 = *(v151 + 2);
                      goto LABEL_367;
                    }

                    v261 = 1;
                    while (v257 != -4096)
                    {
                      v262 = v256 + v261++;
                      v256 = v262 & v252;
                      v257 = *(v139 + v256);
                      if (v257 == *v151)
                      {
                        goto LABEL_356;
                      }
                    }
                  }

                  break;
                }

                do
                {
LABEL_357:
                  v151 += 3;
                }

                while (v151 != v248 && (*v151 | 0x1000) == 0xFFFFFFFFFFFFF000);
                goto LABEL_353;
              }
            }

            v128 = 1;
            while (v127 != -4096)
            {
              v129 = v126 + v128++;
              v126 = v129 & v125;
              v127 = *(v122 + 16 * v126);
              if (v120 == v127)
              {
                goto LABEL_184;
              }
            }

LABEL_179:
            v120 = 0;
            if (!v21)
            {
              goto LABEL_190;
            }

            goto LABEL_180;
          }

          v92 = 1;
          while (v91 != -4096)
          {
            v93 = v90 + v92++;
            v90 = v93 & v89;
            v91 = *(v19 + 16 * (v93 & v89));
            if (v91 == v21)
            {
              goto LABEL_173;
            }
          }
        }
      }
    }

    if (!HIDWORD(v298))
    {
      goto LABEL_64;
    }

    v28 = v299;
    if (v299 > 0x40)
    {
LABEL_50:
      llvm::deallocate_buffer(v297, (16 * v28));
    }

LABEL_51:
    if (v28)
    {
      v38 = v297;
      v39 = (v28 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v39)
      {
        v40 = v39 + 1;
        v41 = (v39 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v42 = (v297 + 16 * v41);
        v43 = (v297 + 16);
        v44 = v41;
        do
        {
          *(v43 - 2) = -4096;
          *v43 = -4096;
          v43 += 4;
          v44 -= 2;
        }

        while (v44);
        if (v40 == v41)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v42 = v297;
      }

      v45 = (v38 + 16 * v28);
      do
      {
        *v42 = -4096;
        v42 = (v42 + 16);
      }

      while (v42 != v45);
    }

LABEL_60:
    v298 = 0;
    goto LABEL_64;
  }

  v2 = *(this + 12);
  if (v2 > 4 * *(this + 10) && v2 >= 0x41)
  {
    llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::shrink_and_clear(this + 32);
    goto LABEL_15;
  }

  if (v2)
  {
    v3 = *(this + 4);
    v4 = (v2 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v4)
    {
      v5 = v4 + 1;
      v6 = (v4 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v7 = (v3 + 16 * v6);
      v8 = (v3 + 16);
      v9 = v6;
      do
      {
        *(v8 - 2) = -4096;
        *v8 = -4096;
        v8 += 4;
        v9 -= 2;
      }

      while (v9);
      if (v5 == v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = *(this + 4);
    }

    v10 = (v3 + 16 * v2);
    do
    {
      *v7 = -4096;
      v7 += 2;
    }

    while (v7 != v10);
  }

LABEL_14:
  *(this + 5) = 0;
  goto LABEL_15;
}

void mlir::pdl_to_pdl_interp::OptimalBranching::preOrderTraversal(uint64_t a1@<X0>, unint64_t *a2@<X1>, unint64_t a3@<X2>, char **a4@<X8>)
{
  v56[0] = 0;
  v56[1] = 0;
  v57 = 0;
  if (!a3)
  {
    a4[1] = 0;
    v31 = a4 + 1;
    a4[2] = 0;
    v30 = operator new(0x10uLL);
    v32 = v30 + 16;
    *v30 = *(a1 + 24);
    *(v30 + 1) = 0;
    *a4 = v30;
    *v31 = v30 + 16;
    a4[2] = v30 + 16;
    v33 = v30 + 16;
LABEL_31:
    v35 = 0;
    *v31 = v33;
    while (1)
    {
      v54 = v35;
      v55 = *&v30[16 * v35];
      v36 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::operator[](v56, &v55);
      v38 = *v36;
      v37 = v36[1];
      if (*v36 != v37)
      {
        do
        {
          while (1)
          {
            v39 = *v38;
            if (v33 >= v32)
            {
              break;
            }

            *v33 = v39;
            *(v33 + 1) = v55;
            v33 += 16;
            if (++v38 == v37)
            {
              goto LABEL_32;
            }
          }

          v40 = v33 - v30;
          v41 = (v33 - v30) >> 4;
          v42 = v41 + 1;
          if ((v41 + 1) >> 60)
          {
            a4[1] = v33;
            a4[2] = v32;
            *a4 = v30;
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          if ((v32 - v30) >> 3 > v42)
          {
            v42 = (v32 - v30) >> 3;
          }

          if ((v32 - v30) >= 0x7FFFFFFFFFFFFFF0)
          {
            v43 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v43 = v42;
          }

          if (v43)
          {
            if (v43 >> 60)
            {
              a4[1] = v33;
              a4[2] = v32;
              *a4 = v30;
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }

            v44 = operator new(16 * v43);
          }

          else
          {
            v44 = 0;
          }

          v45 = &v44[16 * v41];
          v46 = v55;
          v32 = &v44[16 * v43];
          *v45 = v39;
          *(v45 + 1) = v46;
          v33 = v45 + 16;
          memcpy(v44, v30, v40);
          if (v30)
          {
            operator delete(v30);
          }

          v30 = v44;
          ++v38;
        }

        while (v38 != v37);
      }

LABEL_32:
      a4[1] = v33;
      a4[2] = v32;
      *a4 = v30;
      v35 = v54 + 1;
      if (v54 + 1 >= ((v33 - v30) >> 4))
      {
        v47 = v56[0];
        if (v57)
        {
          v48 = (v56[0] + 16);
          v49 = 32 * v57;
          do
          {
            if ((*(v48 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v50 = *(v48 - 1);
              if (v50)
              {
                *v48 = v50;
                operator delete(v50);
              }
            }

            v48 += 4;
            v49 -= 32;
          }

          while (v49);
          v47 = v56[0];
          v51 = (32 * v57);
        }

        else
        {
          v51 = 0;
        }

        llvm::deallocate_buffer(v47, v51);
      }
    }
  }

  v5 = a2;
  v6 = &a2[a3];
  while (1)
  {
    v8 = *v5;
    if (*(a1 + 24) != *v5)
    {
      break;
    }

LABEL_5:
    if (++v5 == v6)
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      if (a3 >> 60)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v30 = operator new(16 * a3);
      a4[1] = v30;
      v31 = a4 + 1;
      v32 = &v30[16 * a3];
      *a4 = v30;
      a4[2] = v32;
      *v30 = *(a1 + 24);
      *(v30 + 1) = 0;
      v33 = v30 + 16;
      goto LABEL_31;
    }
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = 0x9DDFEA08EB382D69 * ((8 * *v5 - 0xAE502812AA7333) ^ HIDWORD(*v5));
    v12 = 0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v11 >> 47) ^ v11);
    LODWORD(v11) = -348639895 * ((v12 >> 47) ^ v12);
    v13 = v9 - 1;
    v14 = (v9 - 1) & v11;
    v15 = *(v10 + 16 * v14);
    if (v15 == v8)
    {
LABEL_9:
      v16 = *(v10 + 16 * v14 + 8);
LABEL_15:
      v55 = v16;
      v19 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::operator[](v56, &v55);
      v20 = v19;
      v22 = v19[1];
      v21 = v19[2];
      if (v22 < v21)
      {
        *v22 = v8;
        v7 = v22 + 1;
      }

      else
      {
        v23 = *v19;
        v24 = v22 - *v19;
        v25 = (v24 >> 3) + 1;
        if (v25 >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v26 = v21 - v23;
        if (v26 >> 2 > v25)
        {
          v25 = v26 >> 2;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          if (v27 >> 61)
          {
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v28 = operator new(8 * v27);
        }

        else
        {
          v28 = 0;
        }

        v29 = &v28[8 * (v24 >> 3)];
        *v29 = v8;
        v7 = v29 + 1;
        memcpy(v28, v23, v24);
        *v20 = v28;
        v20[1] = v7;
        v20[2] = &v28[8 * v27];
        if (v23)
        {
          operator delete(v23);
        }
      }

      v20[1] = v7;
      goto LABEL_5;
    }

    v17 = 1;
    while (v15 != -4096)
    {
      v18 = v14 + v17++;
      v14 = v18 & v13;
      v15 = *(v10 + 16 * v14);
      if (v15 == v8)
      {
        goto LABEL_9;
      }
    }
  }

  v16 = 0;
  goto LABEL_15;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    v5 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)))) & (v2 - 1);
    v6 = (*a1 + 32 * v5);
    v7 = *v6;
    if (*a2 == *v6)
    {
      return v6 + 1;
    }

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
      v5 = v13 & (v2 - 1);
      v6 = (*a1 + 32 * v5);
      v7 = *v6;
      if (*a2 == *v6)
      {
        return v6 + 1;
      }
    }

    if (v10)
    {
      v6 = v10;
    }
  }

  else
  {
    v6 = 0;
  }

  v16 = v6;
  v9 = *(a1 + 8);
  if (4 * v9 + 4 >= 3 * v2)
  {
    v14 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v9 - *(a1 + 12) <= v2 >> 3)
  {
    v14 = a2;
LABEL_24:
    v15 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>,mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>::LookupBucketFor<mlir::func::FuncOp>(v15, v14, &v16);
    a1 = v15;
    a2 = v14;
    v6 = v16;
    ++*(v15 + 8);
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
  *v6 = *a2;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0;
  return v6 + 1;
}

uint64_t llvm::detail::DenseSetImpl<mlir::Value,llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,llvm::DenseMapInfo<mlir::Value,void>>::DenseSetImpl<mlir::Value const*>(uint64_t a1, void *a2, void *a3)
{
  v6 = (*a3 - *a2) >> 3;
  if ((v6 - 2147483649) < 0xFFFFFFFF80000000)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v7 = *a2;
    i = *a3;
    if (*a2 == *a3)
    {
      return a1;
    }

    goto LABEL_12;
  }

  v9 = 4 * (1 << -__clz(v6 - 1));
  v10 = (v9 / 3 + 1) | ((v9 / 3 + 1) >> 1);
  v11 = v10 | (v10 >> 2) | ((v10 | (v10 >> 2)) >> 4);
  LODWORD(v11) = (((v11 | (v11 >> 8)) >> 16) | v11 | (v11 >> 8)) + 1;
  *(a1 + 16) = v11;
  buffer = llvm::allocate_buffer(8 * v11, 8uLL);
  *a1 = buffer;
  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (v13 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v15 = buffer;
    if (v14 < 3)
    {
      goto LABEL_9;
    }

    v16 = v14 + 1;
    v15 = &buffer->i8[8 * (v16 & 0x3FFFFFFFFFFFFFFCLL)];
    v17 = buffer + 1;
    v18 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v19 = v16 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v17[-1] = v18;
      *v17 = v18;
      v17 += 2;
      v19 -= 4;
    }

    while (v19);
    if (v16 != (v16 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_9:
      v20 = &buffer->i8[8 * v13];
      do
      {
        *v15 = -4096;
        v15 += 8;
      }

      while (v15 != v20);
    }
  }

  v7 = *a2;
  for (i = *a3; v7 != i; ++v7)
  {
LABEL_12:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v7, &v22);
  }

  return a1;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = (v3 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v5)
    {
      v6 = v5 + 1;
      v7 = (v5 + 1) & 0xFFFFFFFFFFFFFFELL;
      v8 = &v4[4 * v7];
      v9 = v4 + 4;
      v10 = v7;
      do
      {
        *(v9 - 4) = -4096;
        *v9 = -4096;
        v9 += 8;
        v10 -= 2;
      }

      while (v10);
      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = *result;
    }

    v11 = &v4[4 * v3];
    do
    {
      *v8 = -4096;
      v8 += 4;
    }

    while (v8 != v11);
  }

LABEL_10:
  while (a2 != a3)
  {
    v13 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
      v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v13) ^ (v14 >> 47) ^ v14);
      LODWORD(v14) = -348639895 * ((v15 >> 47) ^ v15);
      v16 = *(result + 16) - 1;
      v17 = v16 & v14;
      v12 = (*result + 32 * v17);
      v18 = *v12;
      if (v13 != *v12)
      {
        v19 = 0;
        v20 = 1;
        while (v18 != -4096)
        {
          if (v19)
          {
            v21 = 0;
          }

          else
          {
            v21 = v18 == -8192;
          }

          if (v21)
          {
            v19 = v12;
          }

          v22 = v17 + v20++;
          v17 = v22 & v16;
          v12 = (*result + 32 * v17);
          v18 = *v12;
          if (v13 == *v12)
          {
            goto LABEL_14;
          }
        }

        if (v19)
        {
          v12 = v19;
        }
      }

LABEL_14:
      *v12 = v13;
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      *(v12 + 1) = *(a2 + 1);
      v12[3] = a2[3];
      a2[1] = 0;
      a2[2] = 0;
      a2[3] = 0;
      ++*(result + 8);
    }

    a2 += 4;
  }

  return result;
}

void mlir::detail::PDLByteCodePattern::create(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v34[16] = *MEMORY[0x1E69E9840];
  v27 = a1;
  Benefit = mlir::pdl_interp::RecordMatchOp::getBenefit(&v27);
  mlir::PatternBenefit::PatternBenefit(&v26, Benefit);
  Context = mlir::Attribute::getContext((v27 + 24));
  __dst = v34;
  v33 = 0x800000000;
  v25 = *(v27 + 16 * ((*(v27 + 44) >> 23) & 1) + 72);
  if (!v25)
  {
    goto LABEL_9;
  }

  Value = mlir::ArrayAttr::getValue(&v25);
  v10 = mlir::ArrayAttr::getValue(&v25);
  v12 = (v10 + 8 * v11);
  __src = v31;
  v30 = 0x800000000;
  v13 = v12 - Value;
  v14 = (v12 - Value) >> 3;
  if (v14 < 9)
  {
    v15 = 0;
    v17 = 0;
    v16 = v31;
    if (v12 == Value)
    {
LABEL_4:
      v18 = v17 + (v13 >> 3);
      LODWORD(v30) = v17 + (v13 >> 3);
      if (v16 != v31)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v31, v14, 16);
    v15 = v30;
    v16 = __src;
    v17 = v30;
    if (v12 == Value)
    {
      goto LABEL_4;
    }
  }

  v20 = &v16[16 * v15];
  do
  {
    v21 = *Value;
    Value += 8;
    v28 = v21;
    *v20 = mlir::OpaqueAttr::getAttrData(&v28);
    v20[1] = v22;
    v20 += 2;
  }

  while (Value != v12);
  v16 = __src;
  v18 = v30 + (v13 >> 3);
  LODWORD(v30) = v30 + (v13 >> 3);
  if (__src != v31)
  {
LABEL_5:
    if (__dst != v34)
    {
      free(__dst);
      v16 = __src;
      LODWORD(v18) = v30;
    }

    __dst = v16;
    v33 = __PAIR64__(HIDWORD(v30), v18);
    __src = v31;
    v30 = 0;
    goto LABEL_9;
  }

LABEL_19:
  v23 = v33;
  if (v33 >= v18)
  {
    if (v18)
    {
      memmove(__dst, v16, 16 * v18);
    }

    goto LABEL_28;
  }

  if (HIDWORD(v33) < v18)
  {
    LODWORD(v33) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v34, v18, 16);
    v23 = 0;
    v24 = v30;
    if (!v30)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v33)
  {
    memmove(__dst, v16, 16 * v33);
    v24 = v30 - v23;
    if (v30 == v23)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v23 = 0;
  v24 = v30;
  if (v30)
  {
LABEL_27:
    memcpy(__dst + 16 * v23, __src + 16 * v23, 16 * v24);
  }

LABEL_28:
  LODWORD(v33) = v18;
  LODWORD(v30) = 0;
  if (__src != v31)
  {
    free(__src);
  }

LABEL_9:
  mlir::pdl_interp::RecordMatchOp::getRootKind(&v27, &__src);
  if (v31[0] == 1)
  {
    mlir::Pattern::Pattern(a4, __src, v30, v26, Context, __dst, v33);
    *(a4 + 88) = a3;
    *(a4 + 96) = a2;
    v19 = __dst;
    if (__dst == v34)
    {
      return;
    }
  }

  else
  {
    mlir::Pattern::Pattern(a4, v26, Context, __dst, v33);
    *(a4 + 88) = a3;
    *(a4 + 96) = a2;
    v19 = __dst;
    if (__dst == v34)
    {
      return;
    }
  }

  free(v19);
}

void mlir::detail::PDLByteCodeMutableState::cleanupAfterMatchAndRewrite(mlir::detail::PDLByteCodeMutableState *this)
{
  v2 = *(this + 9);
  for (i = *(this + 10); i != v2; i -= 16)
  {
    v5 = *(i - 16);
    v4 = v5;
    if (v5)
    {
      operator delete[](v4);
    }
  }

  *(this + 10) = v2;
  v6 = *(this + 15);
  for (j = *(this + 16); j != v6; j -= 16)
  {
    v9 = *(j - 16);
    v8 = v9;
    if (v9)
    {
      operator delete[](v8);
    }
  }

  *(this + 16) = v6;
}

void mlir::detail::PDLByteCode::PDLByteCode(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v212 = *MEMORY[0x1E69E9840];
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (*(a3 + 8))
  {
    llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::operator=(a1, a3);
  }

  *(a1 + 64) = 0u;
  v8 = a1 + 64;
  *(v8 + 16) = 0;
  *(v8 + 24) = v8 + 48;
  *(v8 + 32) = xmmword_1E0970870;
  *(v8 + 176) = v8 + 200;
  *(v8 + 184) = xmmword_1E0970870;
  *(v8 + 328) = v8 + 344;
  *(v8 + 336) = 0x2000000000;
  *(v8 + 3672) = 0u;
  *(v8 + 3688) = 0u;
  *(v8 + 3704) = 0u;
  *(v8 + 3714) = 0u;
  v161[0] = 0;
  v161[1] = 0;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  v165 = 0;
  v166[0] = 0;
  v166[1] = 0;
  v166[2] = 0x1000000000;
  v167[0] = 0;
  v167[1] = 0;
  v167[2] = 0x1000000000;
  v167[3] = 0;
  v167[4] = 0;
  v167[6] = 0;
  v167[7] = 0;
  v167[5] = 0x1000000000;
  v168 = 0;
  v169 = 0;
  v173 = 0;
  Context = mlir::Attribute::getContext((a2 + 6));
  v171 = 0;
  v172 = 0;
  v174 = v8;
  v175 = v8 + 24;
  v176 = v8 + 176;
  v177 = v8 + 328;
  v178 = (v8 + 3720);
  v179 = v8 + 3722;
  v180 = (v8 + 3724);
  v181 = (v8 + 3726);
  v182 = v8 + 3728;
  v183 = a4;
  v11 = *a5;
  v12 = *(a5 + 8);
  if (v12)
  {
    v13 = *a5;
    v14 = a2;
    if (*v11)
    {
      v15 = *v11 + 1 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      do
      {
        v17 = v13[1];
        ++v13;
        v16 = v17;
        if (v17)
        {
          v18 = v16 + 1 == 0;
        }

        else
        {
          v18 = 1;
        }
      }

      while (v18);
    }

    v19 = &v11[v12];
    if (v13 == v19)
    {
LABEL_23:
      v27 = *a6;
      v28 = *(a6 + 8);
      if (v28)
      {
        v29 = *a6;
        if (*v27)
        {
          v30 = *v27 + 1 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (v30)
        {
          do
          {
            v32 = v29[1];
            ++v29;
            v31 = v32;
            if (v32)
            {
              v33 = v31 + 1 == 0;
            }

            else
            {
              v33 = 1;
            }
          }

          while (v33);
        }

        v34 = &v27[v28];
        if (v29 == v34)
        {
LABEL_43:
          v42 = mlir::Attribute::getContext((v14 + 6));
          LOWORD(v204) = 261;
          *&v202 = "matcher";
          *(&v202 + 1) = 7;
          v43 = mlir::StringAttr::get(v42, &v202);
          v44 = mlir::SymbolTable::lookupSymbolIn(v14, v43);
          if (v44)
          {
            if (*(*(v44 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::FuncOp,void>::id)
            {
              v45 = v44;
            }

            else
            {
              v45 = 0;
            }

            v155 = v45;
          }

          else
          {
            v155 = 0;
          }

          v46 = mlir::Attribute::getContext((v14 + 6));
          LOWORD(v204) = 261;
          *&v202 = "rewriters";
          *(&v202 + 1) = 9;
          v47 = mlir::StringAttr::get(v46, &v202);
          v48 = mlir::SymbolTable::lookupSymbolIn(v14, v47);
          if (v48)
          {
            if (*(*(v48 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
            {
              v49 = v48;
            }

            else
            {
              v49 = 0;
            }
          }

          else
          {
            v49 = 0;
          }

          mlir::Region::getOps<mlir::pdl_interp::FuncOp>(&v202, (((v49 + 16 * ((*(v49 + 11) >> 23) & 1) + ((*(v49 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v49 + 10)));
          v192 = v202;
          *v193 = v203;
          v194 = v204;
          v195 = v205;
          v50 = v206;
          if (v203 == v206)
          {
LABEL_194:
            v190[1] = 0;
            v190[0] = 0;
            v191 = 0;
            v188[1] = 0;
            v188[0] = 0;
            v189 = 0;
            v187 = 0;
            v201 = 0;
            buffer = llvm::allocate_buffer(0x20uLL, 8uLL);
            *v200 = xmmword_1E097DF20;
            *buffer = v190;
            buffer[1] = &v187;
            buffer[2] = &v199;
            buffer[3] = v188;
            v199 = buffer;
            v196 = v198;
            v197 = 0;
            v198[0] = 0;
            v198[1] = 1;
            v151 = v155[10];
            v152 = &v155[4 * ((v155[11] >> 23) & 1) + 16] + ((v155[11] >> 21) & 0x7F8);
            v192 = 0uLL;
            v193[0] = 0;
            v193[1] = &v194 + 8;
            *&v194 = 0x400000000;
            v185[2] = 0;
            v185[1] = 0;
            v186 = 0;
            v153 = *(((v152 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v151 + 8);
            if (v153)
            {
              v154 = v153 - 8;
            }

            else
            {
              v154 = 0;
            }

            v185[0] = **(v154 + 48);
            *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v161, v185) = 0;
            mlir::Liveness::Liveness(&v184, v155);
          }

          v158 = v206;
LABEL_57:
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          v51 = (*(&v195 + 1))();
          LOWORD(v199) = 0;
          v184 = 0;
          LOWORD(v190[0]) = 0;
          v208 = v161;
          v209 = &v199;
          v210 = &v184;
          v211 = v190;
          v52 = v51 + 64;
          v53 = *(v51 + 44);
          v54 = (v53 >> 23) & 1;
          v55 = (v53 >> 21) & 0x7F8;
          v56 = 32 * *(v51 + 40);
          v57 = (((v51 + 64 + 16 * v54 + v55 + 7) & 0xFFFFFFFFFFFFFFF8) + v56);
          if (*v57 == v57)
          {
            goto LABEL_176;
          }

          v58 = v57[1];
          v59 = v58 ? v58 - 8 : 0;
          v60 = *(v59 + 48);
          v61 = *(v59 + 56);
          if (v61 == v60)
          {
            goto LABEL_176;
          }

          v62 = v51;
          v160 = v51 + 64;
          while (1)
          {
            v71 = *v60;
            v72 = v208;
            v73 = (*v209)++;
            v74 = *(v72 + 16);
            if (!v74)
            {
              break;
            }

            v75 = 0x9DDFEA08EB382D69 * ((8 * v71 - 0xAE502812AA7333) ^ HIDWORD(v71));
            v76 = 0x9DDFEA08EB382D69 * (HIDWORD(v71) ^ (v75 >> 47) ^ v75);
            v77 = (-348639895 * ((v76 >> 47) ^ v76)) & (v74 - 1);
            v78 = (*v72 + 16 * v77);
            v79 = *v78;
            if (v71 == *v78)
            {
              goto LABEL_82;
            }

            v80 = 0;
            v81 = 1;
            while (v79 != -4096)
            {
              if (v80)
              {
                v82 = 0;
              }

              else
              {
                v82 = v79 == -8192;
              }

              if (v82)
              {
                v80 = v78;
              }

              v83 = v77 + v81++;
              v77 = v83 & (v74 - 1);
              v78 = (*v72 + 16 * v77);
              v79 = *v78;
              if (v71 == *v78)
              {
                goto LABEL_82;
              }
            }

            v97 = (v80 ? v80 : v78);
            v98 = *(v72 + 8);
            if (4 * v98 + 4 >= 3 * v74)
            {
              break;
            }

            if (v74 + ~v98 - *(v72 + 12) <= v74 >> 3)
            {
              goto LABEL_111;
            }

            *(v72 + 8) = v98 + 1;
            if (*v97 != -4096)
            {
              goto LABEL_80;
            }

LABEL_81:
            *v97 = v71;
            *(v97 + 8) = v73;
LABEL_82:
            v84 = (*(v71 + 8) & 0xFFFFFFFFFFFFFFF8);
            if (*(*v84 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
            {
              v84 = 0;
            }

            v207 = v84;
            if (!v84)
            {
              goto LABEL_65;
            }

            v85 = *(*mlir::AffineMapAttr::getValue(&v207) + 136);
            if (v85 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
            {
              v63 = *(v72 + 24);
              v64 = (*v210)++;
              v65 = *(v72 + 40);
              if (!v65)
              {
                goto LABEL_138;
              }

              v66 = 0x9DDFEA08EB382D69 * ((8 * v71 - 0xAE502812AA7333) ^ HIDWORD(v71));
              v67 = 0x9DDFEA08EB382D69 * (HIDWORD(v71) ^ (v66 >> 47) ^ v66);
              v68 = (v65 - 1) & (-348639895 * ((v67 >> 47) ^ v67));
              v69 = (v63 + 16 * v68);
              v70 = *v69;
              if (v71 != *v69)
              {
                v109 = 0;
                v110 = 1;
                while (v70 != -4096)
                {
                  if (v109)
                  {
                    v111 = 0;
                  }

                  else
                  {
                    v111 = v70 == -8192;
                  }

                  if (v111)
                  {
                    v109 = v69;
                  }

                  v112 = v68 + v110++;
                  v68 = v112 & (v65 - 1);
                  v69 = (v63 + 16 * v68);
                  v70 = *v69;
                  if (v71 == *v69)
                  {
                    goto LABEL_65;
                  }
                }

                if (v109)
                {
                  v113 = v109;
                }

                else
                {
                  v113 = v69;
                }

                v114 = *(v72 + 32);
                if (4 * v114 + 4 < 3 * v65)
                {
                  if (v65 + ~v114 - *(v72 + 36) > v65 >> 3)
                  {
                    goto LABEL_103;
                  }
                }

                else
                {
LABEL_138:
                  v65 *= 2;
                }

                llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(v72 + 24, v65);
                v115 = *(v72 + 40);
                if (!v115)
                {
                  goto LABEL_166;
                }

                v116 = *(v72 + 24);
                v117 = 0x9DDFEA08EB382D69 * ((8 * v71 - 0xAE502812AA7333) ^ HIDWORD(v71));
                v118 = 0x9DDFEA08EB382D69 * (HIDWORD(v71) ^ (v117 >> 47) ^ v117);
                LODWORD(v117) = -348639895 * ((v118 >> 47) ^ v118);
                v119 = v115 - 1;
                v120 = (v115 - 1) & v117;
                v113 = (v116 + 16 * v120);
                v121 = *v113;
                if (v71 != *v113)
                {
                  v122 = 0;
                  v123 = 1;
                  while (v121 != -4096)
                  {
                    if (v122)
                    {
                      v124 = 0;
                    }

                    else
                    {
                      v124 = v121 == -8192;
                    }

                    if (v124)
                    {
                      v122 = v113;
                    }

                    v125 = v120 + v123++;
                    v120 = v125 & v119;
                    v113 = (v116 + 16 * (v125 & v119));
                    v121 = *v113;
                    if (v71 == *v113)
                    {
                      goto LABEL_167;
                    }
                  }

LABEL_172:
                  if (v122)
                  {
                    v113 = v122;
                  }
                }

LABEL_167:
                ++*(v72 + 32);
                if (*v113 != -4096)
                {
LABEL_104:
                  --*(v72 + 36);
                }

LABEL_105:
                *v113 = v71;
                *(v113 + 4) = v64;
              }
            }

            else if (v85 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
            {
              v86 = *(v72 + 24);
              v64 = (*v211)++;
              v87 = *(v72 + 40);
              if (!v87)
              {
                goto LABEL_154;
              }

              v88 = 0x9DDFEA08EB382D69 * ((8 * v71 - 0xAE502812AA7333) ^ HIDWORD(v71));
              v89 = 0x9DDFEA08EB382D69 * (HIDWORD(v71) ^ (v88 >> 47) ^ v88);
              v90 = (v87 - 1) & (-348639895 * ((v89 >> 47) ^ v89));
              v91 = (v86 + 16 * v90);
              v92 = *v91;
              if (v71 != *v91)
              {
                v93 = 0;
                v94 = 1;
                while (v92 != -4096)
                {
                  if (v93)
                  {
                    v95 = 0;
                  }

                  else
                  {
                    v95 = v92 == -8192;
                  }

                  if (v95)
                  {
                    v93 = v91;
                  }

                  v96 = v90 + v94++;
                  v90 = v96 & (v87 - 1);
                  v91 = (v86 + 16 * v90);
                  v92 = *v91;
                  if (v71 == *v91)
                  {
                    goto LABEL_65;
                  }
                }

                if (v93)
                {
                  v113 = v93;
                }

                else
                {
                  v113 = v91;
                }

                v114 = *(v72 + 32);
                if (4 * v114 + 4 >= 3 * v87)
                {
LABEL_154:
                  v87 *= 2;
LABEL_155:
                  llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(v72 + 24, v87);
                  v126 = *(v72 + 40);
                  if (v126)
                  {
                    v127 = *(v72 + 24);
                    v128 = 0x9DDFEA08EB382D69 * ((8 * v71 - 0xAE502812AA7333) ^ HIDWORD(v71));
                    v129 = 0x9DDFEA08EB382D69 * (HIDWORD(v71) ^ (v128 >> 47) ^ v128);
                    LODWORD(v128) = -348639895 * ((v129 >> 47) ^ v129);
                    v130 = v126 - 1;
                    v131 = (v126 - 1) & v128;
                    v113 = (v127 + 16 * v131);
                    v132 = *v113;
                    if (v71 != *v113)
                    {
                      v122 = 0;
                      v133 = 1;
                      while (v132 != -4096)
                      {
                        if (v122)
                        {
                          v134 = 0;
                        }

                        else
                        {
                          v134 = v132 == -8192;
                        }

                        if (v134)
                        {
                          v122 = v113;
                        }

                        v135 = v131 + v133++;
                        v131 = v135 & v130;
                        v113 = (v127 + 16 * (v135 & v130));
                        v132 = *v113;
                        if (v71 == *v113)
                        {
                          goto LABEL_167;
                        }
                      }

                      goto LABEL_172;
                    }

                    goto LABEL_167;
                  }

LABEL_166:
                  v113 = 0;
                  goto LABEL_167;
                }

                if (v87 + ~v114 - *(v72 + 36) <= v87 >> 3)
                {
                  goto LABEL_155;
                }

LABEL_103:
                *(v72 + 32) = v114 + 1;
                if (*v113 != -4096)
                {
                  goto LABEL_104;
                }

                goto LABEL_105;
              }
            }

LABEL_65:
            if (++v60 == v61)
            {
              v136 = *(v62 + 44);
              v54 = (v136 >> 23) & 1;
              v55 = (v136 >> 21) & 0x7F8;
              v56 = 32 * *(v62 + 40);
              v50 = v158;
              v52 = v160;
LABEL_176:
              v137 = ((v52 + 16 * v54 + v55 + 7) & 0xFFFFFFFFFFFFFFF8) + v56;
              v207 = &v208;
              for (i = *(v137 + 8); i != v137; i = *(i + 8))
              {
                v139 = i - 8;
                if (!i)
                {
                  v139 = 0;
                }

                v140 = *(v139 + 40);
                v141 = v139 + 32;
                if (v140 != v139 + 32)
                {
                  do
                  {
                    v142 = *(v140 + 8);
                    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
                    v140 = v142;
                  }

                  while (v142 != v141);
                }
              }

              if (v199 <= *v178)
              {
                v144 = v184;
                v145 = v180;
                if (v184 <= *v180)
                {
                  goto LABEL_186;
                }
              }

              else
              {
                *v178 = v199;
                v144 = v184;
                v145 = v180;
                if (v184 <= *v180)
                {
LABEL_186:
                  v146 = v190[0];
                  v147 = v181;
                  if (LOWORD(v190[0]) <= *v181)
                  {
                    goto LABEL_188;
                  }

                  goto LABEL_187;
                }
              }

              *v145 = v144;
              v146 = v190[0];
              v147 = v181;
              if (LOWORD(v190[0]) > *v181)
              {
LABEL_187:
                *v147 = v146;
                goto LABEL_188;
              }

              do
              {
LABEL_188:
                mlir::Region::OpIterator::operator++(&v192);
                v148 = v193[0];
                if (v193[0] == *(&v194 + 1))
                {
                  goto LABEL_56;
                }

                v149 = v195;
                MPSGraphDelegateCompiler.precompilationDescriptor.modify();
              }

              while (!v149());
              v148 = v193[0];
LABEL_56:
              if (v148 == v50)
              {
                goto LABEL_194;
              }

              goto LABEL_57;
            }
          }

          v74 *= 2;
LABEL_111:
          llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(v72, v74);
          v99 = *(v72 + 16);
          if (v99)
          {
            v100 = 0x9DDFEA08EB382D69 * ((8 * v71 - 0xAE502812AA7333) ^ HIDWORD(v71));
            v101 = 0x9DDFEA08EB382D69 * (HIDWORD(v71) ^ (v100 >> 47) ^ v100);
            LODWORD(v100) = -348639895 * ((v101 >> 47) ^ v101);
            v102 = v99 - 1;
            v103 = (v99 - 1) & v100;
            v97 = *v72 + 16 * v103;
            v104 = *v97;
            if (v71 != *v97)
            {
              v105 = 0;
              v106 = 1;
              while (v104 != -4096)
              {
                if (v105)
                {
                  v107 = 0;
                }

                else
                {
                  v107 = v104 == -8192;
                }

                if (v107)
                {
                  v105 = v97;
                }

                v108 = v103 + v106++;
                v103 = v108 & v102;
                v97 = *v72 + 16 * (v108 & v102);
                v104 = *v97;
                if (v71 == *v97)
                {
                  goto LABEL_123;
                }
              }

              if (v105)
              {
                v97 = v105;
              }
            }
          }

          else
          {
            v97 = 0;
          }

LABEL_123:
          ++*(v72 + 8);
          if (*v97 == -4096)
          {
            goto LABEL_81;
          }

LABEL_80:
          --*(v72 + 12);
          goto LABEL_81;
        }
      }

      else
      {
        v29 = *a6;
        v34 = &v27[v28];
        if (v27 == v34)
        {
          goto LABEL_43;
        }
      }

      v35 = 0;
      v36 = *v29;
      do
      {
        v38 = *v36;
        v37 = (v36 + 5);
        *&v202 = v35;
        v39 = llvm::StringMapImpl::hash(v37, v38, v9, v10);
        llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(v166, v37, v38, v39, &v202);
        do
        {
          v40 = v29[1];
          ++v29;
          v36 = v40;
          if (v40)
          {
            v41 = v36 + 1 == 0;
          }

          else
          {
            v41 = 1;
          }
        }

        while (v41);
        ++v35;
      }

      while (v29 != v34);
      goto LABEL_43;
    }
  }

  else
  {
    v13 = *a5;
    v14 = a2;
    v19 = &v11[v12];
    if (v11 == v19)
    {
      goto LABEL_23;
    }
  }

  v20 = 0;
  v21 = *v13;
  do
  {
    v23 = *v21;
    v22 = (v21 + 5);
    *&v202 = v20;
    v24 = llvm::StringMapImpl::hash(v22, v23, v9, v10);
    llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(v167, v22, v23, v24, &v202);
    do
    {
      v25 = v13[1];
      ++v13;
      v21 = v25;
      if (v25)
      {
        v26 = v21 + 1 == 0;
      }

      else
      {
        v26 = 1;
      }
    }

    while (v26);
    ++v20;
  }

  while (v13 != v19);
  goto LABEL_23;
}

void mlir::detail::PDLByteCode::initializeMutableState(mlir::detail::PDLByteCode *this, std::vector<unsigned int> *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1892);
  *&__x = 0;
  v5 = (a2->__end_ - a2->__begin_) >> 3;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      a2->__end_ = &a2->__begin_[2 * v4];
    }
  }

  else
  {
    std::vector<void const*>::__append(a2, v4 - v5, &__x);
  }

  begin = a2[1].__begin_;
  end = a2[1].__end_;
  v8 = *(this + 1893);
  v9 = (end - begin) >> 4;
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      v10 = &begin[4 * v8];
      while (end != v10)
      {
        v12 = *(end - 2);
        end -= 4;
        v11 = v12;
        if (v12)
        {
          operator delete[](v11);
        }
      }

      a2[1].__end_ = v10;
    }
  }

  else
  {
    std::vector<llvm::OwningArrayRef<mlir::Operation *>>::__append(&a2[1], v8 - v9);
  }

  v13 = *(this + 1894);
  mlir::ValueRange::ValueRange(&__x, 0, 0);
  v14 = a2[2].__begin_;
  v15 = (a2[2].__end_ - v14) >> 4;
  if (v13 <= v15)
  {
    if (v13 < v15)
    {
      a2[2].__end_ = &v14[4 * v13];
    }
  }

  else
  {
    std::vector<mlir::TypeRange>::__append(&a2[2], v13 - v15, &__x);
  }

  v16 = *(this + 1895);
  mlir::ValueRange::ValueRange(&__x, 0, 0);
  v17 = a2[4].__begin_;
  v18 = (a2[4].__end_ - v17) >> 4;
  if (v16 <= v18)
  {
    if (v16 < v18)
    {
      a2[4].__end_ = &v17[4 * v16];
    }
  }

  else
  {
    std::vector<mlir::TypeRange>::__append(&a2[4], v16 - v18, &__x);
  }

  v19 = a2[6].__begin_;
  v20 = a2[6].__end_;
  v21 = *(this + 1896);
  LODWORD(__x) = 0;
  v22 = v20 - v19;
  if (v21 <= v22)
  {
    if (v21 < v22)
    {
      a2[6].__end_ = &v19[v21];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(a2 + 6, v21 - v22, &__x);
  }

  v23 = *(this + 100);
  v24 = a2[7].__begin_;
  if (v23 > (a2[7].__end_cap_.__value_ - v24) >> 1)
  {
    v25 = (a2[7].__end_ - v24);
    v26 = operator new(2 * v23);
    memcpy(v26, v24, v25);
    a2[7].__begin_ = v26;
    a2[7].__end_ = &v25[v26];
    a2[7].__end_cap_.__value_ = (v26 + 2 * v23);
    if (v24)
    {
      operator delete(v24);
      LODWORD(v23) = *(this + 100);
    }
  }

  if (v23)
  {
    v27 = a2[7].__end_;
    v28 = 104 * v23;
    v29 = (*(this + 49) + 12);
    do
    {
      v31 = *v29;
      v29 += 52;
      v30 = v31;
      value = a2[7].__end_cap_.__value_;
      if (v27 < value)
      {
        *v27 = v30;
        v27 = (v27 + 2);
      }

      else
      {
        v33 = a2[7].__begin_;
        v34 = v27 - v33;
        v35 = (v27 - v33) >> 1;
        if (v35 <= -2)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v36 = value - v33;
        if (v36 <= v35 + 1)
        {
          v37 = v35 + 1;
        }

        else
        {
          v37 = v36;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v38 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (v38)
        {
          if (v38 < 0)
          {
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v39 = operator new(2 * v38);
        }

        else
        {
          v39 = 0;
        }

        v40 = &v39[2 * v35];
        *v40 = v30;
        v27 = (v40 + 2);
        memcpy(v39, v33, v34);
        a2[7].__begin_ = v39;
        a2[7].__end_ = v27;
        a2[7].__end_cap_.__value_ = &v39[2 * v38];
        if (v33)
        {
          operator delete(v33);
        }
      }

      a2[7].__end_ = v27;
      v28 -= 104;
    }

    while (v28);
  }
}

void mlir::detail::PDLByteCode::match(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v42[30] = *MEMORY[0x1E69E9840];
  **a5 = a2;
  v6 = *a5;
  v7 = (*(a5 + 8) - *a5) >> 3;
  v8 = *(a5 + 24);
  v9 = (*(a5 + 32) - v8) >> 4;
  v10 = *(a5 + 48);
  v11 = (*(a5 + 56) - v10) >> 4;
  v12 = a5 + 72;
  v13 = *(a5 + 96);
  v14 = (*(a5 + 104) - v13) >> 4;
  v15 = a5 + 120;
  v16 = *(a5 + 144);
  v17 = (*(a5 + 152) - v16) >> 2;
  v18 = *(a1 + 64);
  v19 = (*(a1 + 72) - v18) >> 3;
  v20 = *(a1 + 88);
  v21 = *(a1 + 96);
  v22 = *(a5 + 168);
  v23 = (*(a5 + 176) - v22) >> 1;
  v24 = *(a1 + 392);
  v25 = *(a1 + 400);
  v26 = *(a1 + 3736);
  v27 = (*(a1 + 3744) - v26) >> 5;
  v28 = *(a1 + 3760);
  v29 = (*(a1 + 3768) - v28) >> 5;
  v39 = v20;
  v40 = v42;
  v41 = 0x600000000;
  v42[6] = v6;
  v42[7] = v7;
  v42[8] = v8;
  v42[9] = v9;
  v42[10] = v10;
  v42[11] = v11;
  v42[12] = v12;
  v42[13] = v13;
  v42[14] = v14;
  v42[15] = v15;
  v42[16] = v16;
  v42[17] = v17;
  v42[18] = v18;
  v42[19] = v19;
  v42[20] = v20;
  v42[21] = v21;
  v42[22] = v22;
  v42[23] = v23;
  v42[24] = v24;
  v42[25] = v25;
  v42[26] = v26;
  v42[27] = v27;
  v42[28] = v28;
  v42[29] = v29;
  v30 = *a4;
  v31 = *(a4 + 2);
  if (v31)
  {
    v32 = MEMORY[0x1E69E5398];
    v33 = v31;
    while (1)
    {
      v34 = operator new(120 * v33, v32);
      if (v34)
      {
        break;
      }

      v35 = v33 >> 1;
      v36 = v33 > 1;
      v33 >>= 1;
      if (!v36)
      {
        goto LABEL_7;
      }
    }

    v38 = v34;
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v30, (v30 + 120 * v31), v31, v34, v33);
    operator delete(v38);
    v37 = v40;
    if (v40 == v42)
    {
      return;
    }

LABEL_8:
    free(v37);
    return;
  }

  v35 = 0;
LABEL_7:
  std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v30, (v30 + 120 * v31), v31, 0, v35);
  v37 = v40;
  if (v40 != v42)
  {
    goto LABEL_8;
  }
}

uint64_t anonymous namespace::ByteCodeExecutor::execute(unsigned __int16 **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v430 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v9 = *a1;
    v11 = *a1 + 1;
    v10 = **a1;
    *a1 = v11;
    result = 1;
    switch(v10)
    {
      case 0:
        *a1 = v9 + 2;
        v136 = v9[1];
        __p[0] = v428;
        __p[1] = 0x1000000000;
        v137 = *a1;
        v138 = **a1;
        *a1 += 2;
        v139 = v137[1];
        v140 = a1[29];
        __src[0] = &v411;
        __src[1] = 0x300000000;
        v413 = v415;
        v414 = 0x300000000;
        v417 = v419;
        v418 = 0x300000000;
        v420 = v422;
        v421 = 0x300000000;
        v424 = v426;
        v425 = 0x300000000;
        if (v139 >= 4)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v413, v415, v139, 16);
          if (HIDWORD(v418) < v139)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v417, v419, v139, 16);
          }
        }

        *&v429 = __p[0];
        *(&v429 + 1) = LODWORD(__p[1]);
        v349 = *&v140[16 * v136 + 12];
        if (!v349)
        {
          goto LABEL_481;
        }

        LOBYTE(v4) = (*(*v349 + 48))(v349, v5, __src, &v429);
        LOBYTE(v429) = v4;
        v350 = *a1;
        *a1 += 2 * (v138 == (v4 & 1));
        *a1 = &a1[23][*&v350[2 * (v138 == (v4 & 1))]];
        mlir::PDLResultList::~PDLResultList(__src);
        v61 = __p[0];
        if (__p[0] != v428)
        {
          goto LABEL_413;
        }

        continue;
      case 1:
        *a1 = v9 + 2;
        v153 = v9[1];
        v154 = a1[31];
        __p[0] = v428;
        __p[1] = 0x1000000000;
        v155 = *(*a1)++;
        __src[0] = &v411;
        __src[1] = 0x300000000;
        v413 = v415;
        v414 = 0x300000000;
        v417 = v419;
        v418 = 0x300000000;
        v420 = v422;
        v421 = 0x300000000;
        v424 = v426;
        v425 = 0x300000000;
        if (v155 >= 4)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v413, v415, v155, 16);
          if (HIDWORD(v418) < v155)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v417, v419, v155, 16);
          }
        }

        *&v429 = __p[0];
        *(&v429 + 1) = LODWORD(__p[1]);
        v351 = *&v154[16 * v153 + 12];
        if (!v351)
        {
LABEL_481:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        LOBYTE(v4) = (*(*v351 + 48))(v351, v5, __src, &v429);
        LOBYTE(v429) = v4;
        mlir::PDLResultList::~PDLResultList(__src);
        if (__p[0] != v428)
        {
          free(__p[0]);
        }

        if (v4)
        {
          continue;
        }

        return 0;
      case 2:
        v107 = v9[2];
        v105 = v9 + 2;
        v106 = v107;
        *a1 = v105;
        v108 = *(v105 - 1);
        v109 = a1[10];
        v110 = 21;
        if (v109 <= v108)
        {
          v111 = 21;
        }

        else
        {
          v111 = 9;
        }

        if (v109 <= v108)
        {
          v112 = a1[10];
        }

        else
        {
          v112 = 0;
        }

        v113 = *&a1[v111][4 * (v108 - v112)];
        v114 = v105 + 1;
        *a1 = v105 + 1;
        if (v109 > v106)
        {
          v110 = 9;
          v109 = 0;
        }

        v115 = v113 != *&a1[v110][4 * (v106 - v109)];
        *a1 = &v114[2 * v115];
        v8 = *&v114[2 * v115];
        goto LABEL_4;
      case 3:
        v118 = v9[3];
        v116 = v9 + 3;
        v117 = v118;
        v119 = *(v116 - 2);
        *a1 = v116;
        v120 = *(v116 - 1);
        v121 = a1[10];
        v122 = 21;
        if (v121 <= v120)
        {
          v123 = 21;
        }

        else
        {
          v123 = 9;
        }

        if (v121 <= v120)
        {
          v124 = a1[10];
        }

        else
        {
          v124 = 0;
        }

        v125 = *&a1[v123][4 * (v120 - v124)];
        v7 = v116 + 1;
        *a1 = v116 + 1;
        if (v121 > v117)
        {
          v122 = 9;
          v121 = 0;
        }

        v126 = *&a1[v122][4 * (v117 - v121)];
        if (v119 != 3)
        {
          v4 = v125[1];
          if (v4 == v126[1])
          {
            v343 = *v126;
            __src[0] = *v125;
            __src[1] = 0;
            __p[0] = v343;
            __p[1] = 0;
            if (!v4)
            {
              v346 = 0;
LABEL_308:
              v348 = 2 * (v346 != v4);
LABEL_437:
              v7 = &(*a1)[v348];
              *a1 = v7;
              goto LABEL_3;
            }

            v344 = 0;
            do
            {
              v345 = mlir::ValueRange::dereference_iterator(__src, v344);
              if (v345 != mlir::ValueRange::dereference_iterator(__p, __p[1]))
              {
                goto LABEL_436;
              }

              v344 = __src[1] + 1;
              __src[1] = v344;
              v346 = ++__p[1];
              v347 = v344 == v4 || v346 == v4;
            }

            while (!v347);
            if (v344 == v4)
            {
              goto LABEL_308;
            }
          }

LABEL_436:
          v348 = 2;
          goto LABEL_437;
        }

        v127 = v125[1];
        if (v127 != v126[1])
        {
          v7 = v116 + 3;
          *a1 = v116 + 3;
          goto LABEL_3;
        }

        if (!v127)
        {
          *a1 = v7;
          goto LABEL_3;
        }

        v128 = 0;
        v4 = *v125;
        v129 = *v126;
        while (1)
        {
          v130 = mlir::TypeRange::dereference_iterator(v4, v128);
          if (v130 != mlir::TypeRange::dereference_iterator(v129, v128))
          {
            break;
          }

          if (v127 == ++v128)
          {
            v131 = 0;
            goto LABEL_439;
          }
        }

        v131 = 2;
LABEL_439:
        v7 = &(*a1)[v131];
        *a1 = v7;
LABEL_3:
        v8 = *v7;
LABEL_4:
        *a1 = &a1[23][v8];
        continue;
      case 4:
        goto LABEL_275;
      case 5:
        *a1 = v9 + 2;
        v148 = *&a1[9][4 * v9[1]];
        v149 = *(v9 + 1);
        *a1 = v9 + 5;
        v150 = *(v148 + 44);
        if (v9[4])
        {
          if ((v150 & 0x800000) != 0)
          {
            v151 = *(v148 + 68);
          }

          else
          {
            v151 = 0;
          }

          v152 = v151 < v149;
        }

        else
        {
          if ((v150 & 0x800000) != 0)
          {
            v354 = *(v148 + 68);
          }

          else
          {
            v354 = 0;
          }

          v152 = v354 != v149;
        }

        v355 = &v9[2 * v152 + 5];
        *a1 = v355;
        v8 = *v355;
        goto LABEL_4;
      case 6:
        v158 = v9[2];
        v156 = v9 + 2;
        v157 = v158;
        *a1 = v156;
        v159 = a1[10];
        v160 = *&a1[9][4 * *(v156 - 1)];
        v161 = v156 + 1;
        *a1 = v156 + 1;
        v162 = 21;
        if (v159 > v158)
        {
          v162 = 9;
          v159 = 0;
        }

        v163 = *(v160 + 48) != *&a1[v162][4 * (v157 - v159)];
        *a1 = &v161[2 * v163];
        v8 = *&v161[2 * v163];
        goto LABEL_4;
      case 7:
        *a1 = v9 + 2;
        v141 = *(v9 + 1);
        v142 = *(*&a1[9][4 * v9[1]] + 36);
        v347 = v142 == v141;
        v143 = v142 < v141;
        v144 = !v347;
        v145 = 4 * v144;
        v146 = 4 * v143;
        if (!v9[4])
        {
          v146 = v145;
        }

        v147 = (v9 + v146 + 10);
        *a1 = v147;
        v8 = *v147;
        goto LABEL_4;
      case 8:
        v183 = v9[2];
        v181 = v9 + 2;
        v182 = v183;
        *a1 = v181;
        v184 = a1[10];
        v185 = *&a1[9][4 * *(v181 - 1)];
        *a1 = v181 + 1;
        v186 = 21;
        if (v184 <= v183)
        {
          v187 = v184;
        }

        else
        {
          v186 = 9;
          v187 = 0;
        }

        __p[0] = *&a1[v186][4 * (v182 - v187)];
        Value = mlir::ArrayAttr::getValue(__p);
        v189 = mlir::ArrayAttr::getValue(__p);
        v191 = (v189 + 8 * v190);
        v192 = v185[1];
        if (v192 != v191 - Value)
        {
          goto LABEL_432;
        }

        v4 = 0;
        if (!v192)
        {
          goto LABEL_430;
        }

        v193 = *v185;
        while (Value != v191)
        {
          v194 = mlir::TypeRange::dereference_iterator(v193, v4);
          __src[0] = *Value;
          if (v194 != mlir::AffineMapAttr::getValue(__src))
          {
            goto LABEL_432;
          }

          ++v4;
          ++Value;
          if (v192 == v4)
          {
            goto LABEL_431;
          }
        }

        Value = v191;
LABEL_430:
        if (v4 == v192)
        {
LABEL_431:
          v383 = 2 * (Value != v191);
          goto LABEL_433;
        }

LABEL_432:
        v383 = 2;
LABEL_433:
        v384 = &(*a1)[v383];
        *a1 = v384;
        *a1 = &a1[23][*v384];
        continue;
      case 9:
        *a1 = v9 + 2;
        ++*&a1[19][2 * v9[1]];
        v71 = *(a1 + 4);
        *a1 = *&a1[1][4 * v71 - 4];
        *(a1 + 4) = v71 - 1;
        continue;
      case 10:
        v62 = v9[1];
        v63 = v9[2];
        *a1 = v9 + 4;
        v64 = v9[3];
        v65 = a1[10];
        v66 = 21;
        if (v65 > v64)
        {
          v66 = 9;
          v65 = 0;
        }

        *&v429 = *&a1[v66][4 * (v64 - v65)];
        v4 = mlir::ArrayAttr::getValue(&v429);
        v67 = mlir::ArrayAttr::getValue(&v429);
        v69 = v67 + 8 * v68;
        v70 = v69 - v4;
        if (v69 == v4)
        {
          mlir::ValueRange::ValueRange(__src, 0, 0);
          *&a1[13][8 * v63] = *__src;
        }

        else
        {
          v327 = a1[15];
          if ((v70 >> 3) >> 61)
          {
            v328 = -1;
          }

          else
          {
            v328 = v69 - v4;
          }

          v329 = operator new[](v328);
          bzero(v329, v69 - v4);
          __src[0] = v329;
          __src[1] = (v70 >> 3);
          do
          {
            v330 = *v4;
            v4 += 8;
            __p[0] = v330;
            *v329++ = mlir::AffineMapAttr::getValue(__p);
          }

          while (v4 != v69);
          v331 = *(v327 + 1);
          if (v331 >= *(v327 + 2))
          {
            v332 = std::vector<llvm::OwningArrayRef<mlir::Type>>::__emplace_back_slow_path<llvm::OwningArrayRef<mlir::Type>>(v327, __src);
          }

          else
          {
            *v331 = *__src;
            __src[0] = 0;
            __src[1] = 0;
            v332 = (v331 + 1);
          }

          *(v327 + 1) = v332;
          mlir::ValueRange::ValueRange(__p, *(v332 - 2), *(v332 - 1));
          *&a1[13][8 * v63] = *__p;
          if (__src[0])
          {
            operator delete[](__src[0]);
          }
        }

        *&a1[9][4 * v62] = &a1[13][8 * v63];
        continue;
      case 11:
        v208 = v9[1];
        *a1 = v9 + 3;
        v209 = v9[2];
        v210 = a1[10];
        v211 = 21;
        if (v210 > v209)
        {
          v211 = 9;
          v210 = 0;
        }

        mlir::OperationState::OperationState(__src, a4, *&a1[v211][4 * (v209 - v210)]);
        v212 = *a1 + 1;
        v213 = **a1;
        *a1 = v212;
        v4 = __src;
        if (v213)
        {
          do
          {
            v216 = *a1;
            v217 = (*a1)[1];
            ++*a1;
            v220 = *v216;
            v218 = v216 + 2;
            v219 = v220;
            v221 = a1[10];
            v222 = v221 > v220;
            if (v221 <= v220)
            {
              v223 = 21;
            }

            else
            {
              v223 = 9;
            }

            if (v222)
            {
              v224 = 0;
            }

            else
            {
              v224 = a1[10];
            }

            v225 = *&a1[v223][4 * (v219 - v224)];
            *a1 = v218;
            if (v221 <= v217)
            {
              v226 = 21;
            }

            else
            {
              v226 = 9;
            }

            if (v221 <= v217)
            {
              v227 = v221;
            }

            else
            {
              v227 = 0;
            }

            v228 = *&a1[v226][4 * (v217 - v227)];
            if (v228)
            {
              mlir::NamedAttribute::NamedAttribute(__p, v225, v228);
              mlir::NamedAttrList::push_back(v416, __p[0], __p[1]);
            }

            --v213;
          }

          while (v213);
          v214 = *(*a1)++;
          if (!v214)
          {
            goto LABEL_271;
          }
        }

        else
        {
          v215 = *v212;
          v214 = v215;
          *a1 = v212 + 1;
          if (!v215)
          {
            goto LABEL_271;
          }
        }

        if (v214 == 0xFFFF)
        {
          v315 = __src[1];
          {
            v316 = v315[4];
            v317 = *(v315 + 10);
            if (!v317)
            {
              goto LABEL_270;
            }
          }

          else
          {
            mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
            v316 = v315[4];
            v317 = *(v315 + 10);
            if (!v317)
            {
              goto LABEL_270;
            }
          }

          do
          {
            v318 = v317 >> 1;
            v319 = &v316[2 * (v317 >> 1)];
            v321 = *v319;
            v320 = v319 + 2;
            v317 += ~(v317 >> 1);
            if (v321 < mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id)
            {
              v316 = v320;
            }

            else
            {
              v317 = v318;
            }
          }

          while (v317);
LABEL_270:
          v322 = *v316[1];
          Context = mlir::Attribute::getContext(__src);
          v4 = __src[0];
          mlir::ValueRange::ValueRange(__p, v411, v412);
          v324 = mlir::Attribute::getContext(__src);
          Dictionary = mlir::NamedAttrList::getDictionary(v416, v324);
          v326 = v424;
          mlir::ValueRange::ValueRange(&v429, v422[2], v423);
          if ((v322(Context, v4, 1, __p[0], __p[1], Dictionary, v326) & 1) == 0)
          {
            goto LABEL_272;
          }

          goto LABEL_271;
        }

        v356 = 0;
        do
        {
          while (1)
          {
            v357 = *a1;
            v358 = **a1;
            *a1 += 2;
            v359 = v357[1];
            if (v358 != 2)
            {
              break;
            }

            v360 = a1[10];
            v361 = 21;
            if (v360 > v359)
            {
              v361 = 9;
              v360 = 0;
            }

            v362 = *&a1[v361][4 * (v359 - v360)];
            v363 = v414;
            if (v414 >= HIDWORD(v414))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v413, v415, v414 + 1, 8);
              v363 = v414;
            }

            *&v413[8 * v363] = v362;
            LODWORD(v414) = v414 + 1;
            if (++v356 == v214)
            {
              goto LABEL_271;
            }
          }

          v364 = *&a1[9][4 * v359];
          v365 = *v364;
          v366 = v364[1];
          v367 = v414;
          v368 = v366 + v414;
          if (v368 > HIDWORD(v414))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v413, v415, v368, 8);
            v367 = v414;
          }

          if (v366)
          {
            v4 = 0;
            v369 = &v413[8 * v367];
            do
            {
              *&v369[8 * v4] = mlir::TypeRange::dereference_iterator(v365, v4);
              ++v4;
            }

            while (v366 != v4);
            LODWORD(v367) = v414;
          }

          LODWORD(v414) = v367 + v366;
          ++v356;
        }

        while (v356 != v214);
LABEL_271:
        *&a1[9][4 * v208] = mlir::OpBuilder::create((v5 + 8), __src);
LABEL_272:
        mlir::OperationState::~OperationState(__src);
        continue;
      case 12:
        v164 = v9[1];
        v165 = v9[2];
        __src[0] = &v411;
        __src[1] = 0x600000000;
        *a1 = v9 + 4;
        v166 = v9[3];
        if (!v9[3])
        {
          goto LABEL_273;
        }

        v167 = 0;
        v168 = 0;
        do
        {
          while (1)
          {
            v169 = *a1;
            v170 = **a1;
            *a1 += 2;
            v171 = v169[1];
            if (v170 != 2)
            {
              break;
            }

            v172 = a1[10];
            v173 = 21;
            if (v172 > v171)
            {
              v173 = 9;
              v172 = 0;
            }

            v174 = *&a1[v173][4 * (v171 - v172)];
            if (v167 >= HIDWORD(__src[1]))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(__src, &v411, v167 + 1, 8);
              v167 = __src[1];
            }

            *(__src[0] + v167) = v174;
            v167 = ++LODWORD(__src[1]);
            if (++v168 == v166)
            {
              goto LABEL_259;
            }
          }

          v175 = *&a1[9][4 * v171];
          v176 = *v175;
          v177 = v175[1];
          v178 = v167;
          v179 = v177 + v167;
          if (v179 > HIDWORD(__src[1]))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(__src, &v411, v179, 8);
            v178 = LODWORD(__src[1]);
            v167 = __src[1];
          }

          if (v177)
          {
            v4 = 0;
            v180 = __src[0] + 8 * v178;
            do
            {
              *&v180[8 * v4] = mlir::TypeRange::dereference_iterator(v176, v4);
              ++v4;
            }

            while (v177 != v4);
            v167 = __src[1];
          }

          v167 += v177;
          LODWORD(__src[1]) = v167;
          ++v168;
        }

        while (v168 != v166);
LABEL_259:
        if (v167)
        {
          v310 = a1[15];
          v4 = 8 * v167;
          v311 = v167;
          v312 = operator new[](v4);
          bzero(v312, v4);
          __p[0] = v312;
          __p[1] = v311;
          memmove(v312, __src[0], v4);
          v313 = *(v310 + 1);
          if (v313 >= *(v310 + 2))
          {
            v314 = std::vector<llvm::OwningArrayRef<mlir::Type>>::__emplace_back_slow_path<llvm::OwningArrayRef<mlir::Type>>(v310, __p);
          }

          else
          {
            *v313 = *__p;
            __p[0] = 0;
            __p[1] = 0;
            v314 = (v313 + 1);
          }

          *(v310 + 1) = v314;
          mlir::ValueRange::ValueRange(&v429, *(v314 - 2), *(v314 - 1));
          *&a1[13][8 * v165] = v429;
          if (__p[0])
          {
            operator delete[](__p[0]);
          }
        }

        else
        {
LABEL_273:
          mlir::ValueRange::ValueRange(__p, 0, 0);
          *&a1[13][8 * v165] = *__p;
        }

        *&a1[9][4 * v164] = &a1[13][8 * v165];
        v61 = __src[0];
        if (__src[0] != &v411)
        {
LABEL_413:
          free(v61);
        }

        continue;
      case 13:
        v53 = v9[1];
        *a1 = v9 + 3;
        v54 = v9[2];
        __src[0] = &v411;
        __src[1] = 0x600000000;
        v55 = LODWORD(__src[1]);
        if (LODWORD(__src[1]))
        {
          v56 = a1[18];
          LOBYTE(v4) = 8 * LOBYTE(__src[1]);
          v57 = operator new[](8 * LODWORD(__src[1]));
          bzero(v57, 8 * v55);
          __p[0] = v57;
          __p[1] = v55;
          memmove(v57, __src[0], 8 * v55);
          v58 = *(v56 + 1);
          if (v58 >= *(v56 + 2))
          {
            v59 = std::vector<llvm::OwningArrayRef<mlir::Type>>::__emplace_back_slow_path<llvm::OwningArrayRef<mlir::Type>>(v56, __p);
          }

          else
          {
            *v58 = *__p;
            __p[0] = 0;
            __p[1] = 0;
            v59 = (v58 + 1);
          }

          *(v56 + 1) = v59;
          mlir::ValueRange::ValueRange(&v429, *(v59 - 2), *(v59 - 1));
          *&a1[16][8 * v54] = v429;
          if (__p[0])
          {
            operator delete[](__p[0]);
          }
        }

        else
        {
          mlir::ValueRange::ValueRange(__p, 0, 0);
          *&a1[16][8 * v54] = *__p;
        }

        *&a1[9][4 * v53] = &a1[16][8 * v54];
        v61 = __src[0];
        if (__src[0] != &v411)
        {
          goto LABEL_413;
        }

        continue;
      case 14:
        *a1 = v9 + 2;
        (*(*v5 + 16))(v5, *&a1[9][4 * v9[1]]);
        continue;
      case 15:
        *a1 = v9 + 2;
        v229 = v9[1];
        v230 = a1[10];
        v231 = 21;
        if (v230 > v229)
        {
          v231 = 9;
          v230 = 0;
        }

        v232 = *&a1[v231][4 * (v229 - v230)];
        v233 = *(v9 + 1);
        *a1 = v9 + 5;
        v234 = v9[4];
        if (v232)
        {
          if (v232[1] <= v233)
          {
            v235 = 0;
          }

          else
          {
            v235 = *(*v232 + 8 * v233);
          }

          *&a1[9][4 * v234] = v235;
        }

        else
        {
          *&a1[9][4 * v234] = 0;
        }

        continue;
      case 16:
        *a1 = v9 + 2;
        v236 = a1[9];
        v237 = *&v236[4 * v9[1]];
        v238 = *(v9 + 1);
        *a1 = v9 + 5;
        v239 = v9[4];
        if (v237)
        {
          if (v237[1] <= v238)
          {
            *&v236[4 * v239] = 0;
          }

          else
          {
            *&a1[9][4 * v239] = mlir::TypeRange::dereference_iterator(*v237, v238);
          }
        }

        else
        {
          *&v236[4 * v239] = 0;
        }

        continue;
      case 17:
        *a1 = v9 + 2;
        v132 = a1[9];
        v133 = *&v132[4 * v9[1]];
        v134 = *(v9 + 1);
        *a1 = v9 + 5;
        v135 = v9[4];
        if (!v133)
        {
          goto LABEL_111;
        }

        if (v133[1] <= v134)
        {
          *&v132[4 * v135] = 0;
        }

        else
        {
          v133 = mlir::ValueRange::dereference_iterator(v133, v134);
          v132 = a1[9];
LABEL_111:
          *&v132[4 * v135] = v133;
        }

        continue;
      case 18:
        return result;
      case 19:
        v37 = v9[1];
        v38 = v9[2];
        v11 = v9 + 5;
        *a1 = v9 + 5;
        v39 = v9[4];
        v40 = a1[19];
        v41 = &a1[11][8 * v37];
        v42 = *&v40[2 * v39];
        if (*(v41 + 1) > v42)
        {
          *&a1[9][4 * v38] = *(*v41 + 8 * v42);
          v43 = *(a1 + 4);
          if (v43 >= *(a1 + 5))
          {
            v406 = v9;
            llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 1), a1 + 3, v43 + 1, 8);
            v9 = v406;
            v43 = *(a1 + 4);
          }

          *&a1[1][4 * v43] = v9;
          ++*(a1 + 4);
          *a1 += 2;
          continue;
        }

        *&v40[2 * v39] = 0;
LABEL_275:
        v8 = *v11;
        goto LABEL_4;
      case 20:
        v197 = v9[3];
        v195 = v9 + 3;
        v196 = v197;
        v4 = *(v195 - 2);
        *a1 = v195;
        v198 = a1[10];
        v199 = *&a1[9][4 * *(v195 - 1)];
        *a1 = v195 + 1;
        v200 = 21;
        if (v198 <= v197)
        {
          v201 = v198;
        }

        else
        {
          v200 = 9;
          v201 = 0;
        }

        v202 = *&a1[v200][4 * (v196 - v201)];
        __src[0] = v202;
        if (!*(v199 + 47))
        {
          goto LABEL_163;
        }

        AttrData = mlir::OpaqueAttr::getAttrData(__src);
        v205 = v204;
        v433.var0 = AttrData;
        v433.var1 = v205;
        InherentAttr = mlir::Operation::getInherentAttr(v199, v433);
        if ((v207 & 1) == 0)
        {
          v202 = __src[0];
LABEL_163:
          InherentAttr = mlir::DictionaryAttr::get(v199 + 56, v202);
        }

        *&a1[9][4 * v4] = InherentAttr;
        continue;
      case 21:
        v83 = v9[1];
        *a1 = v9 + 3;
        v84 = v9[2];
        v85 = a1[10];
        v86 = 21;
        if (v85 > v84)
        {
          v86 = 9;
          v85 = 0;
        }

        CallableForCallee = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*&a1[v86][4 * (v84 - v85)]);
        __src[0] = CallableForCallee;
        __src[1] = v88;
        if (CallableForCallee)
        {
          CallableForCallee = mlir::CallOpInterface::getCallableForCallee(__src);
        }

        goto LABEL_400;
      case 22:
        v83 = v9[1];
        if (v9[2] == 4)
        {
          *a1 = v9 + 4;
          __src[0] = *&a1[9][4 * v9[3]];
          if (__src[0])
          {
            goto LABEL_324;
          }
        }

        else
        {
          *a1 = v9 + 4;
          CallableForCallee = *&a1[9][4 * v9[3]];
          if (!CallableForCallee)
          {
            goto LABEL_400;
          }

          if (CallableForCallee[1])
          {
            __src[0] = mlir::ValueRange::dereference_iterator(CallableForCallee, 0);
LABEL_324:
            CallableForCallee = mlir::Value::getDefiningOp(__src);
            goto LABEL_400;
          }
        }

        CallableForCallee = 0;
LABEL_400:
        *&a1[9][4 * v83] = CallableForCallee;
        continue;
      case 23:
      case 24:
      case 25:
      case 26:
        v15 = v9[2];
        v13 = v9 + 2;
        v14 = v15;
        *a1 = v13;
        v16 = a1[9];
        v17 = *&v16[4 * *(v13 - 1)];
        *a1 = v13 + 1;
        if ((*(v17 + 46) & 0x80) != 0)
        {
          v18 = (v10 - 23);
          if (*(v17 + 68) <= v18)
          {
            *&v16[4 * v14] = 0;
          }

          else
          {
            *&v16[4 * v14] = *(*(v17 + 72) + 32 * v18 + 24);
          }
        }

        else
        {
          *&v16[4 * v14] = 0;
        }

        continue;
      case 27:
        continue;
      case 28:
        v267 = v9[4];
        v265 = v9 + 4;
        v266 = v267;
        v268 = *(v265 - 3);
        *a1 = v265;
        v269 = *&a1[9][4 * *(v265 - 1)];
        *a1 = v265 + 1;
        if ((*(v269 + 46) & 0x80) != 0)
        {
          v270 = *(v269 + 72);
          v4 = *(v269 + 68);
          v271 = a1[16];
          if (v268 == -1)
          {
            goto LABEL_461;
          }
        }

        else
        {
          v270 = 0;
          v4 = 0;
          v271 = a1[16];
          if (v268 == -1)
          {
            goto LABEL_461;
          }
        }

        {
        }

        if ((*(**(v269 + 48) + 32))(*(v269 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          if (!*(v269 + 47) || (v434.var0 = "operandSegmentSizes", v434.var1 = 19, v272 = mlir::Operation::getInherentAttr(v269, v434), (v273 & 1) == 0))
          {
            v435.var0 = "operandSegmentSizes";
            v435.var1 = 19;
            v272 = mlir::DictionaryAttr::get((v269 + 56), v435);
          }

          if (!v272)
          {
            goto LABEL_465;
          }

          v274 = v272;
          v275 = mlir::detail::DenseArrayAttrImpl<int>::classof(v272) ? v274 : 0;
          __src[0] = v275;
          if (!v275)
          {
            goto LABEL_465;
          }

          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(__src);
          if (v276 <= v268)
          {
            goto LABEL_465;
          }

          v277 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(__src);
          v278 = (v277 + 4 * v268);
          if (!v268)
          {
            v386 = 0;
LABEL_460:
            v4 = *v278;
            v270 += 32 * v386;
            goto LABEL_461;
          }

          v279 = (v268 - 1) & 0x3FFFFFFFFFFFFFFFLL;
          if (v279 >= 7)
          {
            v395 = v279 + 1;
            v396 = (v279 + 1) & 0x7FFFFFFFFFFFFFF8;
            v281 = (v277 + 4 * v396);
            v397 = (v277 + 16);
            v398 = 0uLL;
            v399 = v396;
            v400 = 0uLL;
            do
            {
              v398 = vaddq_s32(v397[-1], v398);
              v400 = vaddq_s32(*v397, v400);
              v397 += 2;
              v399 -= 8;
            }

            while (v399);
            v280 = vaddvq_s32(vaddq_s32(v400, v398));
            if (v395 == v396)
            {
              goto LABEL_459;
            }
          }

          else
          {
            v280 = 0;
            v281 = v277;
          }

          do
          {
            v401 = *v281++;
            v280 += v401;
          }

          while (v281 != v278);
LABEL_459:
          v386 = v280;
          goto LABEL_460;
        }

        v372 = v4 >= v268;
        v4 -= v268;
        if (!v372)
        {
          goto LABEL_465;
        }

        v270 += 32 * v268;
LABEL_461:
        if (v266 != 0xFFFF)
        {
          mlir::ValueRange::ValueRange(__src, v270, v4);
          v402 = &v271[8 * v266];
          *v402 = *__src;
          goto LABEL_466;
        }

        if (v4 == 1)
        {
          v402 = *(v270 + 24);
          goto LABEL_466;
        }

LABEL_465:
        v402 = 0;
LABEL_466:
        v403 = *(*a1)++;
        *&a1[9][4 * v403] = v402;
        continue;
      case 29:
      case 30:
      case 31:
      case 32:
        v19 = v10 - 29;
        v22 = v9[2];
        v20 = v9 + 2;
        v21 = v22;
        *a1 = v20;
        v23 = a1[9];
        v24 = *&v23[4 * *(v20 - 1)];
        *a1 = v20 + 1;
        v25 = v24 - 16 * (v10 - 28);
        if (*(v24 + 36) <= v19)
        {
          v25 = 0;
        }

        *&v23[4 * v21] = v25;
        continue;
      case 33:
        v284 = v9[4];
        v282 = v9 + 4;
        v283 = v284;
        v285 = *(v282 - 3);
        *a1 = v282;
        v286 = a1[9];
        v287 = *&v286[4 * *(v282 - 1)];
        *a1 = v282 + 1;
        if (*(v287 + 36) <= v285)
        {
          *&v286[4 * v283] = 0;
        }

        else if (v285 > 5)
        {
          *&v286[4 * v283] = v287 - 24 * (v285 - 5) - 96;
        }

        else
        {
          *&v286[4 * v283] = v287 - 16 * v285 - 16;
        }

        continue;
      case 34:
        v91 = v9[4];
        v89 = v9 + 4;
        v90 = v91;
        v92 = *(v89 - 3);
        *a1 = v89;
        v93 = *&a1[9][4 * *(v89 - 1)];
        *a1 = v89 + 1;
        v4 = *(v93 + 36);
        v94 = a1[16];
        if (v4)
        {
          NextResultAtOffset = v93 - 16;
        }

        else
        {
          NextResultAtOffset = 0;
        }

        if (v92 == -1)
        {
          if (v90 != 0xFFFF)
          {
            goto LABEL_417;
          }

          goto LABEL_451;
        }

        {
        }

        if ((*(**(v93 + 48) + 32))(*(v93 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedResultSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedResultSegments>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          if (!*(v93 + 47) || (v431.var0 = "resultSegmentSizes", v431.var1 = 18, v96 = mlir::Operation::getInherentAttr(v93, v431), (v97 & 1) == 0))
          {
            v432.var0 = "resultSegmentSizes";
            v432.var1 = 18;
            v96 = mlir::DictionaryAttr::get((v93 + 56), v432);
          }

          if (!v96)
          {
            goto LABEL_453;
          }

          v4 = v96;
          v98 = mlir::detail::DenseArrayAttrImpl<int>::classof(v96) ? v4 : 0;
          __src[0] = v98;
          if (!v98)
          {
            goto LABEL_453;
          }

          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(__src);
          if (v99 <= v92)
          {
            goto LABEL_453;
          }

          v100 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(__src);
          v101 = (v100 + 4 * v92);
          if (v92)
          {
            v102 = (v92 - 1) & 0x3FFFFFFFFFFFFFFFLL;
            if (v102 <= 6)
            {
              v103 = 0;
              v104 = v100;
              goto LABEL_447;
            }

            v387 = v102 + 1;
            v388 = (v102 + 1) & 0x7FFFFFFFFFFFFFF8;
            v104 = (v100 + 4 * v388);
            v389 = (v100 + 16);
            v390 = 0uLL;
            v391 = v388;
            v392 = 0uLL;
            do
            {
              v390 = vaddq_s32(v389[-1], v390);
              v392 = vaddq_s32(*v389, v392);
              v389 += 2;
              v391 -= 8;
            }

            while (v391);
            v103 = vaddvq_s32(vaddq_s32(v392, v390));
            if (v387 != v388)
            {
              do
              {
LABEL_447:
                v393 = *v104++;
                v103 += v393;
              }

              while (v104 != v101);
            }

            v385 = *v101;
            if (v103)
            {
              NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v103);
            }
          }

          else
          {
            v385 = *v101;
          }

          v4 = v385;
          if (v90 != 0xFFFF)
          {
            goto LABEL_417;
          }

          goto LABEL_451;
        }

        if (v4 < v92)
        {
          v371 = 0;
          goto LABEL_454;
        }

        if (v92)
        {
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v92);
        }

        v4 -= v92;
        if (v90 != 0xFFFF)
        {
LABEL_417:
          mlir::ValueRange::ValueRange(__src, NextResultAtOffset, v4);
          v371 = &v94[8 * v90];
          *v371 = *__src;
          goto LABEL_454;
        }

LABEL_451:
        if (v4 == 1)
        {
          v371 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
          goto LABEL_454;
        }

LABEL_453:
        v371 = 0;
LABEL_454:
        v394 = *(*a1)++;
        *&a1[9][4 * v394] = v371;
        continue;
      case 35:
        v72 = v9[1];
        *a1 = v9 + 3;
        v4 = &a1[11][8 * v9[2]];
        *&a1[9][4 * v72] = v4;
        if (*v4)
        {
          operator delete[](*v4);
        }

        *v4 = 0;
        *(v4 + 8) = 0;
        v73 = *a1;
        v74 = **a1;
        *a1 += 2;
        v75 = *&a1[9][4 * v73[1]];
        if (v74 == 4)
        {
          if (!v75)
          {
            continue;
          }

          v76 = *v75;
          if (!*v75)
          {
            v81 = operator new[](0);
            *v4 = v81;
            *(v4 + 8) = 0;
            v82 = *v75;
            if (!*v75)
            {
              continue;
            }

            do
            {
LABEL_419:
              *v81++ = v82[2];
              v82 = *v82;
            }

            while (v82);
            continue;
          }

          v77 = 0;
          v78 = -1;
          do
          {
            v76 = *v76;
            ++v78;
            v77 += 8;
          }

          while (v76);
          if (v78 > 0x1FFFFFFFFFFFFFFELL)
          {
            v79 = -1;
          }

          else
          {
            v79 = v77;
          }

          v80 = v78 + 1;
          v81 = operator new[](v79);
          *v4 = v81;
          *(v4 + 8) = v80;
          v82 = *v75;
          if (*v75)
          {
            goto LABEL_419;
          }
        }

        else
        {
          if (!v75)
          {
            continue;
          }

          __src[0] = &v411;
          __src[1] = 0x600000000;
          __p[0] = *v75;
          __p[1] = 0;
          v333 = *(v75 + 8);
          if (v333)
          {
            v334 = 0;
            while (1)
            {
              v336 = mlir::ValueRange::dereference_iterator(__p, v334);
              v337 = *v336;
              if (*v336)
              {
                v338 = 0;
                v339 = *v336;
                do
                {
                  ++v338;
                  v339 = *v339;
                }

                while (v339);
                v340 = __src[1];
                v341 = v338 + LODWORD(__src[1]);
                if (v341 <= HIDWORD(__src[1]))
                {
                  goto LABEL_292;
                }
              }

              else
              {
                LODWORD(v338) = 0;
                v340 = __src[1];
                v341 = LODWORD(__src[1]);
                if (LODWORD(__src[1]) <= HIDWORD(__src[1]))
                {
                  goto LABEL_292;
                }
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod(__src, &v411, v341, 8);
              v340 = __src[1];
LABEL_292:
              if (v337)
              {
                v342 = __src[0] + 8 * v340;
                do
                {
                  *v342++ = v337[2];
                  v337 = *v337;
                }

                while (v337);
              }

              v335 = v340 + v338;
              LODWORD(__src[1]) = v340 + v338;
              v334 = __p[1] + 1;
              __p[1] = v334;
              if (v334 == v333)
              {
                goto LABEL_422;
              }
            }
          }

          v335 = 0;
LABEL_422:
          v380 = operator new[](8 * v335);
          v381 = v335;
          if (*v4)
          {
            operator delete[](*v4);
            v381 = __src[1];
          }

          *v4 = v380;
          *(v4 + 8) = v335;
          v4 = __src[0];
          if (v381)
          {
            memmove(v380, __src[0], 8 * v381);
          }

          if (v4 != &v411)
          {
            free(v4);
          }
        }

        continue;
      case 36:
        v246 = v9[1];
        *a1 = v9 + 3;
        v247 = a1[9];
        v248 = *&v247[4 * v9[2]];
        if (v248)
        {
          v248 = *(v248 + 8) & 0xFFFFFFFFFFFFFFF8;
        }

        *&v247[4 * v246] = v248;
        continue;
      case 37:
        v240 = v9[1];
        v4 = v9[2];
        *a1 = v9 + 4;
        v241 = a1[9];
        v242 = *&v241[4 * v9[3]];
        if (v242)
        {
          mlir::ValueRange::getTypes(__src, v242);
          v243 = __src[0];
          v244 = __src[1];
          v245 = v412;
          __p[0] = __src[0];
          __p[1] = __src[1];
          if (__src[1])
          {
            v243 = mlir::ValueRange::offset_base(__p, __src[1]);
            v244 = __p[1];
          }

          mlir::TypeRange::TypeRange(__p, v243, v245 - v244);
          *&a1[13][8 * v4] = *__p;
          *&a1[9][4 * v240] = &a1[13][8 * v4];
        }

        else
        {
          *&v241[4 * v240] = 0;
        }

        continue;
      case 38:
        v260 = v9 + 2;
        *a1 = v9 + 2;
        v261 = v9[1];
        v262 = a1[10];
        v263 = 21;
        if (v262 > v261)
        {
          v263 = 9;
          v262 = 0;
        }

        v264 = *&a1[v263][4 * (v261 - v262)] == 0;
        *a1 = &v260[2 * v264];
        v8 = *&v260[2 * v264];
        goto LABEL_4;
      case 39:
        LOWORD(v429) = a1[25][v9[1]];
        LODWORD(v4) = v429;
        *a1 = v9 + 2;
        if (v4 != 0xFFFF)
        {
          *a1 = v9 + 5;
          v288 = v9[4];
          __src[0] = &v411;
          __src[1] = 0x400000000;
          if (v288 >= 5)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(__src, &v411, v288, 8);
            LODWORD(v289) = __src[1];
            goto LABEL_467;
          }

          if (v288)
          {
            LODWORD(v289) = 0;
            do
            {
LABEL_467:
              v404 = *(*a1)++;
              v405 = *(*&a1[9][4 * v404] + 24);
              if (v289 >= HIDWORD(__src[1]))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(__src, &v411, v289 + 1, 8);
                LODWORD(v289) = __src[1];
              }

              *(__src[0] + v289) = v405;
              v289 = ++LODWORD(__src[1]);
              LODWORD(v288) = v288 - 1;
            }

            while (v288);
            v382 = __src[0];
          }

          else
          {
            v289 = 0;
            v382 = &v411;
          }

          mlir::Builder::getFusedLoc((v5 + 8), v382, v289, 0);
        }

        *a1 = &a1[23][*(v9 + 1)];
        break;
      case 40:
        *a1 = v9 + 2;
        v60 = *&a1[9][4 * v9[1]];
        __src[0] = &v411;
        __src[1] = 0x1000000000;
        mlir::ValueRange::ValueRange(__p, __src[0], LODWORD(__src[1]));
        (**v5)(v5, v60, __p[0], __p[1]);
        v61 = __src[0];
        if (__src[0] != &v411)
        {
          goto LABEL_413;
        }

        continue;
      case 41:
        *a1 = v9 + 2;
        v26 = v9[1];
        v27 = a1[10];
        v28 = 21;
        if (v27 <= v26)
        {
          v29 = 21;
        }

        else
        {
          v29 = 9;
        }

        if (v27 <= v26)
        {
          v30 = a1[10];
        }

        else
        {
          v30 = 0;
        }

        v4 = *&a1[v29][4 * (v26 - v30)];
        *a1 = v9 + 3;
        v31 = v9[2];
        if (v27 > v31)
        {
          v28 = 9;
          v27 = 0;
        }

        __src[0] = *&a1[v28][4 * (v31 - v27)];
        v32 = mlir::ArrayAttr::getValue(__src);
        v33 = mlir::ArrayAttr::getValue(__src);
        v35 = v33 + 8 * v34;
        if (v35 == v32)
        {
          goto LABEL_2;
        }

        v36 = -v32;
        while (*v32 != v4)
        {
          v32 += 8;
          v36 -= 8;
          if (v32 == v35)
          {
            goto LABEL_2;
          }
        }

        v353 = (*a1 + ((-v36 - mlir::ArrayAttr::getValue(__src)) >> 1));
        goto LABEL_402;
      case 42:
        *a1 = v9 + 2;
        v305 = a1[10];
        v306 = *&a1[9][4 * v9[1]];
        *a1 = v9 + 3;
        v307 = v9[2];
        v308 = 21;
        if (v305 > v307)
        {
          v308 = 9;
          v305 = 0;
        }

        __src[0] = *&a1[v308][4 * (v307 - v305)];
        isValidIntOrFloat = mlir::DenseElementsAttr::isValidIntOrFloat(__src, 4, 1, 0);
        if (isValidIntOrFloat)
        {
          RawStringData = mlir::DenseElementsAttr::getRawStringData(__src);
          LOBYTE(v4) = mlir::DenseElementsAttr::isSplat(__src);
          mlir::ArrayAttr::getValue(__src);
          isValidIntOrFloat = mlir::DenseElementsAttr::getNumElements(__src);
        }

        else
        {
          RawStringData = 0;
        }

        if ((*(v306 + 46) & 0x80) != 0)
        {
          v296 = *(v306 + 68);
          if (!isValidIntOrFloat)
          {
            goto LABEL_2;
          }
        }

        else
        {
          v296 = 0;
          if (!isValidIntOrFloat)
          {
            goto LABEL_2;
          }
        }

        if (v4)
        {
          goto LABEL_335;
        }

        v352 = 0;
        do
        {
          if (RawStringData[v352 / 2] == v296)
          {
            goto LABEL_337;
          }

          v352 += 2;
          --isValidIntOrFloat;
        }

        while (isValidIntOrFloat);
        goto LABEL_2;
      case 43:
        v44 = v9[2];
        *a1 = v9 + 2;
        v45 = *(*&a1[9][4 * v9[1]] + 48);
        v46 = v9 + 3;
        *a1 = v9 + 3;
        if (!v44)
        {
          goto LABEL_38;
        }

        v47 = 0;
        v48 = a1[10];
        v49 = 5;
        do
        {
          *a1 = &v9[v47 + 4];
          v50 = v9[v47 + 3];
          v51 = 21;
          if (v48 <= v50)
          {
            v52 = v48;
          }

          else
          {
            v51 = 9;
            v52 = 0;
          }

          if (*&a1[v51][4 * (v50 - v52)] == v45)
          {
            v370 = &v9[v44 + v49];
            *a1 = v370;
            v8 = *v370;
            goto LABEL_4;
          }

          ++v47;
          v49 += 2;
        }

        while (v44 != v47);
        v46 = &v9[v47 + 3];
LABEL_38:
        v8 = *v46;
        goto LABEL_4;
      case 44:
        *a1 = v9 + 2;
        v290 = a1[10];
        v291 = *&a1[9][4 * v9[1]];
        *a1 = v9 + 3;
        v292 = v9[2];
        v293 = 21;
        if (v290 > v292)
        {
          v293 = 9;
          v290 = 0;
        }

        __src[0] = *&a1[v293][4 * (v292 - v290)];
        NumElements = mlir::DenseElementsAttr::isValidIntOrFloat(__src, 4, 1, 0);
        if (NumElements)
        {
          RawStringData = mlir::DenseElementsAttr::getRawStringData(__src);
          LOBYTE(v4) = mlir::DenseElementsAttr::isSplat(__src);
          mlir::ArrayAttr::getValue(__src);
          NumElements = mlir::DenseElementsAttr::getNumElements(__src);
          if (!NumElements)
          {
            goto LABEL_2;
          }

          v296 = *(v291 + 36);
          if ((v4 & 1) == 0)
          {
LABEL_327:
            v352 = 0;
            while (RawStringData[v352 / 2] != v296)
            {
              v352 += 2;
              if (!--NumElements)
              {
                goto LABEL_2;
              }
            }

            goto LABEL_337;
          }
        }

        else
        {
          RawStringData = 0;
          v296 = *(v291 + 36);
          if ((v4 & 1) == 0)
          {
            goto LABEL_327;
          }
        }

LABEL_335:
        if (*RawStringData != v296)
        {
          goto LABEL_2;
        }

        v352 = 0;
LABEL_337:
        v353 = &(*a1)[v352];
LABEL_402:
        v7 = v353 + 2;
        *a1 = v7;
        goto LABEL_3;
      case 45:
        *a1 = v9 + 2;
        v249 = v9[1];
        v250 = a1[10];
        v251 = 21;
        if (v250 <= v249)
        {
          v252 = 21;
        }

        else
        {
          v252 = 9;
        }

        if (v250 <= v249)
        {
          v253 = a1[10];
        }

        else
        {
          v253 = 0;
        }

        v4 = *&a1[v252][4 * (v249 - v253)];
        *a1 = v9 + 3;
        v254 = v9[2];
        if (v250 > v254)
        {
          v251 = 9;
          v250 = 0;
        }

        __src[0] = *&a1[v251][4 * (v254 - v250)];
        v255 = mlir::ArrayAttr::getValue(__src);
        v256 = mlir::ArrayAttr::getValue(__src);
        v258 = (v256 + 8 * v257);
        if (v255 == v258)
        {
          goto LABEL_2;
        }

        v259 = 0;
        while (1)
        {
          __src[0] = *v255;
          if (v4 == mlir::AffineMapAttr::getValue(__src))
          {
            break;
          }

          ++v255;
          v259 += 8;
          if (v255 == v258)
          {
LABEL_2:
            v7 = *a1;
            goto LABEL_3;
          }
        }

        v353 = (*a1 + (v259 >> 1));
        goto LABEL_402;
      case 46:
        *a1 = v9 + 2;
        v297 = a1[10];
        v298 = *&a1[9][4 * v9[1]];
        *a1 = v9 + 3;
        v299 = v9[2];
        v300 = 21;
        if (v297 > v299)
        {
          v300 = 9;
          v297 = 0;
        }

        __src[0] = *&a1[v300][4 * (v299 - v297)];
        v301 = mlir::ArrayAttr::getValue(__src);
        v302 = mlir::ArrayAttr::getValue(__src);
        if (!v298)
        {
          goto LABEL_2;
        }

        v304 = (v302 + 8 * v303);
        v407 = v301;
        if (v301 == v304)
        {
          goto LABEL_253;
        }

        while (2)
        {
          __p[0] = *v301;
          v4 = mlir::ArrayAttr::getValue(__p);
          v373 = mlir::ArrayAttr::getValue(__p);
          v375 = v373 + 8 * v374;
          v376 = v298[1];
          if (v376 != (v375 - v4) >> 3)
          {
            goto LABEL_384;
          }

          v377 = 0;
          if (v376)
          {
            v378 = *v298;
            while (v4 != v375)
            {
              v379 = mlir::TypeRange::dereference_iterator(v378, v377);
              __src[0] = *v4;
              if (v379 != mlir::AffineMapAttr::getValue(__src))
              {
                goto LABEL_384;
              }

              ++v377;
              v4 += 8;
              if (v376 == v377)
              {
                goto LABEL_383;
              }
            }

            v4 = v375;
          }

          if (v377 != v376)
          {
            goto LABEL_384;
          }

LABEL_383:
          if (v4 != v375)
          {
LABEL_384:
            if (++v301 == v304)
            {
LABEL_253:
              v7 = *a1;
              goto LABEL_254;
            }

            continue;
          }

          break;
        }

        v7 = (*a1 + ((v301 - v407) >> 1) + 4);
        *a1 = v7;
LABEL_254:
        v5 = a2;
        goto LABEL_3;
      default:
        continue;
    }
  }
}

uint64_t mlir::detail::PDLByteCode::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48[30] = *MEMORY[0x1E69E9840];
  v8 = *(*(a3 + 104) + 96);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      v10 = *v8;
      v11 = 8 * v9;
      do
      {
        v12 = *v10++;
        (*(*v12 + 16))(v12, a2);
        v11 -= 8;
      }

      while (v11);
    }
  }

  v13 = *a4;
  v14 = *(a3 + 16);
  if (v14)
  {
    memmove(v13, *(a3 + 8), 8 * v14);
    v13 = *a4;
  }

  v15 = *(a1 + 240);
  v16 = *(a1 + 248);
  v17 = (*(a4 + 8) - v13) >> 3;
  v18 = *(a4 + 24);
  v19 = (*(a4 + 32) - v18) >> 4;
  v20 = *(a4 + 48);
  v21 = (*(a4 + 56) - v20) >> 4;
  v22 = a4 + 72;
  v23 = *(a4 + 96);
  v24 = (*(a4 + 104) - v23) >> 4;
  v25 = a4 + 120;
  v26 = *(a4 + 144);
  v27 = (*(a4 + 152) - v26) >> 2;
  v28 = *(a1 + 64);
  v29 = (*(a1 + 72) - v28) >> 3;
  v30 = *(a4 + 168);
  v31 = (*(a4 + 176) - v30) >> 1;
  v32 = *(a1 + 392);
  v33 = *(a1 + 400);
  v34 = *(a1 + 3736);
  v35 = (*(a1 + 3744) - v34) >> 5;
  v36 = *(a1 + 3760);
  v37 = (*(a1 + 3768) - v36) >> 5;
  v45 = (v15 + 2 * *(*(a3 + 104) + 88));
  v46 = v48;
  v47 = 0x600000000;
  v48[6] = v13;
  v48[7] = v17;
  v48[8] = v18;
  v48[9] = v19;
  v48[10] = v20;
  v48[11] = v21;
  v48[12] = v22;
  v48[13] = v23;
  v48[14] = v24;
  v48[15] = v25;
  v48[16] = v26;
  v48[17] = v27;
  v48[18] = v28;
  v48[19] = v29;
  v48[20] = v15;
  v48[21] = v16;
  v48[22] = v30;
  v48[23] = v31;
  v48[24] = v32;
  v48[25] = v33;
  v48[26] = v34;
  v48[27] = v35;
  v48[28] = v36;
  v48[29] = v37;
  if (v8)
  {
    v39 = *(v8 + 8);
    if (v39)
    {
      v40 = *v8;
      v41 = 8 * v39;
      do
      {
        v42 = *v40++;
        (*(*v42 + 24))(v42, a2);
        v41 -= 8;
      }

      while (v41);
    }
  }

  if ((v38 & 1) == 0 && ((*(*a2 + 80))(a2) & 1) == 0)
  {
    llvm::report_fatal_error("Native PDL Rewrite failed, but the pattern rewriter doesn't support recovery. Failable pattern rewrites should not be used with pattern rewriters that do not support them.", 1, v43);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  return v38;
}

uint64_t *llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(llvm::StringMapImpl *a1, const void *a2, size_t a3, uint64_t a4, void *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 8;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v18 = v10[1];
        ++v10;
        v11 = v18;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 8;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  *buffer = a3;
  buffer[4] = *a5;
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v14 = *v10 == -8;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    do
    {
      v16 = v10[1];
      ++v10;
      v15 = v16;
      if (v16)
      {
        v17 = v15 == -8;
      }

      else
      {
        v17 = 1;
      }
    }

    while (v17);
  }

  return v10;
}

void anonymous namespace::Generator::generate(uint64_t a1, uint64_t a2, uint64_t a3, double a4, int32x4_t a5)
{
  v529 = *MEMORY[0x1E69E9840];
  v6 = *(*(a2 + 48) + 16);
  if (a2 && v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyConstraintOp,void>::id)
  {
    InputAttributeNames = a2;
    Name = mlir::pdl::ApplyNativeConstraintOp::getName(&InputAttributeNames);
    v9 = v8;
    v12 = llvm::StringMapImpl::hash(Name, v8, v10, v11);
    v13 = *(*llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<>((a1 + 72), Name, v9, v12) + 8);
    v14 = *(a3 + 24);
    v15 = v14[1];
    if ((v15 + 1) > v14[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v14 + 3, v15 + 1, 2);
      v15 = v14[1];
    }

    *(*v14 + 2 * v15) = 0;
    ++v14[1];
    v16 = *(a3 + 24);
    v17 = v16[1];
    if ((v17 + 1) > v16[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v16 + 3, v17 + 1, 2);
      v17 = v16[1];
    }

    *(*v16 + 2 * v17) = v13;
    ++v16[1];
    ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&InputAttributeNames, 0);
    if ((*(InputAttributeNames + 46) & 0x80) != 0)
    {
      v19 = *(InputAttributeNames + 9);
    }

    else
    {
      v19 = 0;
    }

    v20 = ODSOperandIndexAndLength;
    v21 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v22 = v21 - ODSOperandIndexAndLength;
    v23 = *(a3 + 24);
    v24 = v23[1];
    if ((v24 + 1) > v23[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v23 + 3, v24 + 1, 2);
      v24 = v23[1];
    }

    *(*v23 + 2 * v24) = v22;
    ++v23[1];
    if (v21 != v20)
    {
      v25 = (v19 + 32 * v20 + 24);
      do
      {
        v26 = *v25;
        v25 += 4;
        --v22;
      }

      while (v22);
    }

    IsNegated = mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&InputAttributeNames);
    v28 = *(a3 + 24);
    v29 = v28[1];
    if ((v29 + 1) > v28[2])
    {
      v266 = IsNegated;
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v28 + 3, v29 + 1, 2);
      IsNegated = v266;
      v29 = v28[1];
    }

    *(*v28 + 2 * v29) = IsNegated;
    ++v28[1];
    ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&InputAttributeNames, 0);
    v31 = ODSResultIndexAndLength;
    if (*(InputAttributeNames + 9))
    {
      NextResultAtOffset = InputAttributeNames - 16;
    }

    else
    {
      NextResultAtOffset = 0;
    }

    v33 = ODSResultIndexAndLength;
    if (ODSResultIndexAndLength)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
    }

    v34 = (HIDWORD(v31) + v31);
    v35 = v34 - v31;
    v36 = *(a3 + 24);
    v37 = v36[1];
    if ((v37 + 1) > v36[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v36 + 3, v37 + 1, 2);
      v37 = v36[1];
    }

    *(*v36 + 2 * v37) = v35;
    ++v36[1];
    if (v34 == v33)
    {
LABEL_24:
      mlir::SuccessorRange::SuccessorRange(&v519, InputAttributeNames);
      v39 = *(&v519 + 1);
      v38 = v519;
LABEL_25:
      v40 = a3;
LABEL_182:
      return;
    }

    v57 = 0;
    while (1)
    {
      v58 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v57);
      v59 = v58;
      v60 = *(*(*(v58 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v60 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
      {
        v61 = 0;
        v62 = *(a3 + 24);
        v63 = v62[1];
        v64 = v63 + 1;
        if ((v63 + 1) <= v62[2])
        {
          goto LABEL_70;
        }
      }

      else if (v60 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
      {
        v61 = 1;
        v62 = *(a3 + 24);
        v63 = v62[1];
        v64 = v63 + 1;
        if ((v63 + 1) <= v62[2])
        {
          goto LABEL_70;
        }
      }

      else if (v60 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        *&v519 = *(v58 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (*(*mlir::AffineMapAttr::getValue(&v519) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
        {
          v61 = 3;
        }

        else
        {
          v61 = 5;
        }

        v62 = *(a3 + 24);
        v63 = v62[1];
        v64 = v63 + 1;
        if ((v63 + 1) <= v62[2])
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v60 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
        {
          v61 = 2;
        }

        else
        {
          v61 = 4 * (v60 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
        }

        v62 = *(a3 + 24);
        v63 = v62[1];
        v64 = v63 + 1;
        if ((v63 + 1) <= v62[2])
        {
          goto LABEL_70;
        }
      }

      llvm::SmallVectorBase<unsigned long long>::grow_pod(v62, v62 + 3, v64, 2);
      v63 = v62[1];
LABEL_70:
      *(*v62 + 2 * v63) = v61;
      ++v62[1];
      if (*(*(*(v59 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        *&v519 = v59;
        v65 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &v519);
        v66 = *(a3 + 24);
        v67 = v66[1];
        if ((v67 + 1) > v66[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v66 + 3, v67 + 1, 2);
          v67 = v66[1];
        }

        *(*v66 + 2 * v67) = v65;
        ++v66[1];
      }

      v69 = *(a3 + 24);
      v68 = *(a3 + 32);
      *&v519 = v59;
      v70 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v68, &v519);
      v71 = v69[1];
      if ((v71 + 1) > v69[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(v69, v69 + 3, v71 + 1, 2);
        v71 = v69[1];
      }

      *(*v69 + 2 * v71) = v70;
      ++v69[1];
      if (v35 == ++v57)
      {
        goto LABEL_24;
      }
    }
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id)
  {
    InputAttributeNames = a2;
    v72 = mlir::pdl_interp::ApplyRewriteOp::getName(&InputAttributeNames);
    v74 = v73;
    v77 = llvm::StringMapImpl::hash(v72, v73, v75, v76);
    v78 = *(*llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<>((a1 + 48), v72, v74, v77) + 8);
    v79 = *(a3 + 24);
    v80 = v79[1];
    if ((v80 + 1) > v79[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v79 + 3, v80 + 1, 2);
      v80 = v79[1];
    }

    *(*v79 + 2 * v80) = 1;
    ++v79[1];
    v81 = *(a3 + 24);
    v82 = v81[1];
    if ((v82 + 1) > v81[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v81 + 3, v82 + 1, 2);
      v82 = v81[1];
    }

    *(*v81 + 2 * v82) = v78;
    ++v81[1];
    v83 = mlir::func::ReturnOp::getODSOperandIndexAndLength(&InputAttributeNames, 0);
    if ((*(InputAttributeNames + 46) & 0x80) != 0)
    {
      v84 = *(InputAttributeNames + 9);
    }

    else
    {
      v84 = 0;
    }

    v85 = v83;
    v86 = (HIDWORD(v83) + v83);
    v87 = v86 - v83;
    v88 = *(a3 + 24);
    v89 = v88[1];
    if ((v89 + 1) > v88[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v88 + 3, v89 + 1, 2);
      v89 = v88[1];
    }

    *(*v88 + 2 * v89) = v87;
    ++v88[1];
    if (v86 != v85)
    {
      v90 = (v84 + 32 * v85 + 24);
      do
      {
        v91 = *v90;
        v90 += 4;
        --v87;
      }

      while (v87);
    }

    v92 = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&InputAttributeNames, 0);
    v93 = v92;
    if (*(InputAttributeNames + 9))
    {
      v94 = InputAttributeNames - 16;
    }

    else
    {
      v94 = 0;
    }

    v95 = v92;
    if (v92)
    {
      v94 = mlir::detail::OpResultImpl::getNextResultAtOffset(v94, v92);
    }

    v96 = (HIDWORD(v93) + v93);
    v97 = v96 - v93;
    v98 = *(a3 + 24);
    v99 = v98[1];
    if ((v99 + 1) > v98[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v98 + 3, v99 + 1, 2);
      v99 = v98[1];
    }

    *(*v98 + 2 * v99) = v97;
    ++v98[1];
    if (v96 == v95)
    {
      return;
    }

    v100 = 0;
    while (1)
    {
      v101 = mlir::detail::OpResultImpl::getNextResultAtOffset(v94, v100);
      v102 = v101;
      v103 = *(*(*(v101 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v103 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
      {
        v104 = 0;
        v105 = *(a3 + 24);
        v106 = v105[1];
        v107 = v106 + 1;
        if ((v106 + 1) <= v105[2])
        {
          goto LABEL_114;
        }
      }

      else if (v103 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
      {
        v104 = 1;
        v105 = *(a3 + 24);
        v106 = v105[1];
        v107 = v106 + 1;
        if ((v106 + 1) <= v105[2])
        {
          goto LABEL_114;
        }
      }

      else if (v103 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        *&v519 = *(v101 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (*(*mlir::AffineMapAttr::getValue(&v519) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
        {
          v104 = 3;
        }

        else
        {
          v104 = 5;
        }

        v105 = *(a3 + 24);
        v106 = v105[1];
        v107 = v106 + 1;
        if ((v106 + 1) <= v105[2])
        {
          goto LABEL_114;
        }
      }

      else
      {
        if (v103 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
        {
          v104 = 2;
        }

        else
        {
          v104 = 4 * (v103 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
        }

        v105 = *(a3 + 24);
        v106 = v105[1];
        v107 = v106 + 1;
        if ((v106 + 1) <= v105[2])
        {
          goto LABEL_114;
        }
      }

      llvm::SmallVectorBase<unsigned long long>::grow_pod(v105, v105 + 3, v107, 2);
      v106 = v105[1];
LABEL_114:
      *(*v105 + 2 * v106) = v104;
      ++v105[1];
      if (*(*(*(v102 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        *&v519 = v102;
        v108 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &v519);
        v109 = *(a3 + 24);
        v110 = v109[1];
        if ((v110 + 1) > v109[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v109 + 3, v110 + 1, 2);
          v110 = v109[1];
        }

        *(*v109 + 2 * v110) = v108;
        ++v109[1];
      }

      v112 = *(a3 + 24);
      v111 = *(a3 + 32);
      *&v519 = v102;
      v113 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v111, &v519);
      v114 = v112[1];
      if ((v114 + 1) > v112[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(v112, v112 + 3, v114 + 1, 2);
        v114 = v112[1];
      }

      *(*v112 + 2 * v114) = v113;
      ++v112[1];
      if (v97 == ++v100)
      {
        return;
      }
    }
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::AreEqualOp,void>::id)
  {
    v115 = *(a2 + 72);
    v116 = *(v115 + 24);
    if (*(*(*(v116 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v117 = *(v115 + 56);
      mlir::SuccessorRange::SuccessorRange(&v519, a2);
      v119 = *(&v519 + 1);
      v118 = v519;
      v120 = *(a3 + 24);
      v121 = v120[1];
      if ((v121 + 1) > v120[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v120 + 3, v121 + 1, 2);
        v121 = v120[1];
      }

      *(*v120 + 2 * v121) = 2;
      ++v120[1];
      v123 = *(a3 + 24);
      v122 = *(a3 + 32);
      *&v519 = v116;
      v124 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v122, &v519);
      v125 = v123[1];
      if ((v125 + 1) > v123[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(v123, v123 + 3, v125 + 1, 2);
        v125 = v123[1];
      }

      *(*v123 + 2 * v125) = v124;
      ++v123[1];
      v127 = *(a3 + 24);
      v126 = *(a3 + 32);
      *&v519 = v117;
      goto LABEL_178;
    }

    v142 = *(a3 + 24);
    v143 = v142[1];
    if ((v143 + 1) > v142[2])
    {
      v320 = a2;
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v142 + 3, v143 + 1, 2);
      a2 = v320;
      v143 = v142[1];
    }

    *(*v142 + 2 * v143) = 3;
    ++v142[1];
    v144 = *(*(*(v116 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v144 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
    {
      v145 = 0;
    }

    else if (v144 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
    {
      v145 = 1;
    }

    else if (v144 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      *&v519 = *(v116 + 8) & 0xFFFFFFFFFFFFFFF8;
      v171 = a2;
      Value = mlir::AffineMapAttr::getValue(&v519);
      a2 = v171;
      if (*(*Value + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
      {
        v145 = 3;
      }

      else
      {
        v145 = 5;
      }
    }

    else if (v144 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      v145 = 2;
    }

    else
    {
      v145 = 4 * (v144 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
    }

    v175 = *(a3 + 24);
    v176 = v175[1];
    if ((v176 + 1) > v175[2])
    {
      v321 = a2;
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v175 + 3, v176 + 1, 2);
      a2 = v321;
      v176 = v175[1];
    }

    *(*v175 + 2 * v176) = v145;
    ++v175[1];
    v177 = *(a2 + 72);
    v178 = *(v177 + 24);
    v179 = *(v177 + 56);
    mlir::SuccessorRange::SuccessorRange(&v519, a2);
    v119 = *(&v519 + 1);
    v118 = v519;
    v181 = *(a3 + 24);
    v180 = *(a3 + 32);
    *&v519 = v178;
    v182 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v180, &v519);
    v183 = v181[1];
    if ((v183 + 1) > v181[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v181, v181 + 3, v183 + 1, 2);
      v183 = v181[1];
    }

    *(*v181 + 2 * v183) = v182;
LABEL_177:
    ++v181[1];
    v127 = *(a3 + 24);
    v126 = *(a3 + 32);
    *&v519 = v179;
LABEL_178:
    v184 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v126, &v519);
    v185 = v127[1];
    if ((v185 + 1) > v127[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v127, v127 + 3, v185 + 1, 2);
      v185 = v127[1];
    }

    *(*v127 + 2 * v185) = v184;
    ++v127[1];
    goto LABEL_181;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::BranchOp,void>::id)
  {
    mlir::SuccessorRange::SuccessorRange(&v519, a2);
    v39 = *(&v519 + 1);
    v38 = v519;
    v128 = *(a3 + 24);
    v129 = v128[1];
    if ((v129 + 1) > v128[2])
    {
      v303 = v519;
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v128 + 3, v129 + 1, 2);
      v39 = *(&v303 + 1);
      v38 = v303;
      v129 = v128[1];
    }

    *(*v128 + 2 * v129) = 4;
    ++v128[1];
    goto LABEL_25;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckAttributeOp,void>::id)
  {
    InputAttributeNames = a2;
    v130 = *(*(a2 + 72) + 24);
    AttributeValueNames = mlir::pdl::OperationOp::getAttributeValueNames(&InputAttributeNames);
    mlir::SuccessorRange::SuccessorRange(&v519, InputAttributeNames);
    v119 = *(&v519 + 1);
    v118 = v519;
    v132 = *(a3 + 24);
    v133 = v132[1];
    if ((v133 + 1) > v132[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v132 + 3, v133 + 1, 2);
      v133 = v132[1];
    }

    *(*v132 + 2 * v133) = 2;
    ++v132[1];
    v135 = *(a3 + 24);
    v134 = *(a3 + 32);
    *&v519 = v130;
    v136 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v134, &v519);
    v137 = v135[1];
    if ((v137 + 1) > v135[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v135, v135 + 3, v137 + 1, 2);
      v137 = v135[1];
    }

    *(*v135 + 2 * v137) = v136;
    ++v135[1];
    v138 = *(a3 + 24);
    v140 = v138[1];
    v141 = v140 + 1;
    if ((v140 + 1) <= v138[2])
    {
      goto LABEL_143;
    }

LABEL_166:
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v138, v138 + 3, v141, 2);
    v140 = v138[1];
LABEL_143:
    *(*v138 + 2 * v140) = v139;
    ++v138[1];
LABEL_181:
    v40 = a3;
    v38 = v118;
    v39 = v119;
    goto LABEL_182;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperandCountOp,void>::id)
  {
    InputAttributeNames = a2;
    v146 = *(*(a2 + 72) + 24);
    Count = mlir::pdl_interp::CheckOperandCountOp::getCount(&InputAttributeNames);
    InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&InputAttributeNames);
    mlir::SuccessorRange::SuccessorRange(&v519, InputAttributeNames);
    v150 = *(&v519 + 1);
    v149 = v519;
    v151 = a3;
    v152 = 5;
LABEL_159:
    return;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperationNameOp,void>::id)
  {
    InputAttributeNames = a2;
    v153 = *(*(a2 + 72) + 24);
    v154 = mlir::pdl_interp::ApplyRewriteOp::getName(&InputAttributeNames);
    mlir::OperationName::OperationName(&v518, v154, v155, *(a1 + 152));
    mlir::SuccessorRange::SuccessorRange(&v519, InputAttributeNames);
    v119 = *(&v519 + 1);
    v118 = v519;
    v156 = v518;
    v157 = *(a3 + 24);
    v158 = v157[1];
    if ((v158 + 1) > v157[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v157 + 3, v158 + 1, 2);
      v158 = v157[1];
    }

    *(*v157 + 2 * v158) = 6;
    ++v157[1];
    v160 = *(a3 + 24);
    v159 = *(a3 + 32);
    *&v519 = v153;
    v161 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v159, &v519);
    v162 = v160[1];
    if ((v162 + 1) > v160[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v160, v160 + 3, v162 + 1, 2);
      v162 = v160[1];
    }

    *(*v160 + 2 * v162) = v161;
    ++v160[1];
    goto LABEL_181;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckResultCountOp,void>::id)
  {
    InputAttributeNames = a2;
    v146 = *(*(a2 + 72) + 24);
    Count = mlir::pdl_interp::CheckOperandCountOp::getCount(&InputAttributeNames);
    InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&InputAttributeNames);
    mlir::SuccessorRange::SuccessorRange(&v519, InputAttributeNames);
    v150 = *(&v519 + 1);
    v149 = v519;
    v151 = a3;
    v152 = 7;
    goto LABEL_159;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypeOp,void>::id)
  {
    InputAttributeNames = a2;
    v163 = *(*(a2 + 72) + 24);
    Type = mlir::pdl_interp::CheckTypeOp::getType(&InputAttributeNames);
    mlir::SuccessorRange::SuccessorRange(&v519, InputAttributeNames);
    v119 = *(&v519 + 1);
    v118 = v519;
    v165 = *(a3 + 24);
    v166 = v165[1];
    if ((v166 + 1) > v165[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v165 + 3, v166 + 1, 2);
      v166 = v165[1];
    }

    *(*v165 + 2 * v166) = 2;
    ++v165[1];
    v168 = *(a3 + 24);
    v167 = *(a3 + 32);
    *&v519 = v163;
    v169 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v167, &v519);
    v170 = v168[1];
    if ((v170 + 1) > v168[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v168, v168 + 3, v170 + 1, 2);
      v170 = v168[1];
    }

    *(*v168 + 2 * v170) = v169;
    ++v168[1];
    v138 = *(a3 + 24);
    v140 = v138[1];
    v141 = v140 + 1;
    if ((v140 + 1) <= v138[2])
    {
      goto LABEL_143;
    }

    goto LABEL_166;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypesOp,void>::id)
  {
    InputAttributeNames = a2;
    v173 = *(*(a2 + 72) + 24);
    v174 = mlir::pdl::OperationOp::getAttributeValueNames(&InputAttributeNames);
    mlir::SuccessorRange::SuccessorRange(&v519, InputAttributeNames);
    return;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ContinueOp,void>::id)
  {
    v186 = *(a1 + 144);
    v187 = *(a3 + 24);
    v188 = v187[1];
    if ((v188 + 1) > v187[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v187 + 3, v188 + 1, 2);
      v188 = v187[1];
    }

    *(*v187 + 2 * v188) = 9;
    ++v187[1];
    v189 = *(a3 + 24);
    v190 = v189[1];
    if (v190 + 1 > v189[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v189, v189 + 3, v190 + 1, 2);
      v190 = v189[1];
    }

    *(*v189 + 2 * v190) = v186 - 1;
    goto LABEL_229;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id)
  {
    InputAttributeNames = a2;
    v191 = mlir::pdl::OperationOp::getAttributeValueNames(&InputAttributeNames);
    v192 = a1;
LABEL_190:
    v194 = *v193;
    if (*(InputAttributeNames + 9))
    {
      v195 = InputAttributeNames - 16;
    }

    else
    {
      v195 = 0;
    }

    *&v519 = mlir::detail::OpResultImpl::getNextResultAtOffset(v195, 0);
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v192, &v519) = v194;
    return;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateOperationOp,void>::id)
  {
    Rewriter = a2;
    if (*(a2 + 36))
    {
      v196 = a2 - 16;
    }

    else
    {
      v196 = 0;
    }

    v197 = mlir::detail::OpResultImpl::getNextResultAtOffset(v196, 0);
    v198 = mlir::pdl_interp::CreateOperationOp::getName(&Rewriter);
    mlir::OperationName::OperationName(&InputAttributeNames, v198, v199, *(a1 + 152));
    v200 = InputAttributeNames;
    v201 = *(a3 + 24);
    v202 = v201[1];
    if ((v202 + 1) > v201[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v201 + 3, v202 + 1, 2);
      v202 = v201[1];
    }

    *(*v201 + 2 * v202) = 11;
    ++v201[1];
    v204 = *(a3 + 24);
    v203 = *(a3 + 32);
    *&v519 = v197;
    v205 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v203, &v519);
    v206 = v204[1];
    if ((v206 + 1) > v204[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v204, v204 + 3, v206 + 1, 2);
      v206 = v204[1];
    }

    *(*v204 + 2 * v206) = v205;
    ++v204[1];
    v207 = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&Rewriter, 0);
    if ((*(Rewriter + 46) & 0x80) != 0)
    {
      v208 = *(Rewriter + 72);
    }

    else
    {
      v208 = 0;
    }

    v209 = v207;
    v210 = (HIDWORD(v207) + v207);
    v211 = v210 - v207;
    v212 = *(a3 + 24);
    v213 = v212[1];
    if ((v213 + 1) > v212[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v212 + 3, v213 + 1, 2);
      v213 = v212[1];
    }

    *(*v212 + 2 * v213) = v211;
    ++v212[1];
    if (v210 != v209)
    {
      v214 = (v208 + 32 * v209 + 24);
      do
      {
        v215 = *v214;
        v214 += 4;
        --v211;
      }

      while (v211);
    }

    v216 = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&Rewriter, 1u);
    if ((*(Rewriter + 46) & 0x80) != 0)
    {
      v217 = *(Rewriter + 72);
    }

    else
    {
      v217 = 0;
    }

    v218 = WORD2(v216);
    *&v519 = v217 + 32 * v216;
    *(&v519 + 1) = (HIDWORD(v216) + v216) - v216;
    v219 = *(a3 + 24);
    v220 = v219[1];
    if ((v220 + 1) > v219[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v219 + 3, v220 + 1, 2);
      v220 = v219[1];
    }

    *(*v219 + 2 * v220) = v218;
    ++v219[1];
    InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&Rewriter);
    v516 = &v519;
    v221 = mlir::ArrayAttr::getValue(&InputAttributeNames);
    v222 = *v516;
    v223 = mlir::ArrayAttr::getValue(&InputAttributeNames);
    v225 = v223 + 8 * v224;
    if (v225 != v221)
    {
      v226 = *(v516 + 1);
      if (v226)
      {
        v227 = v226 - 1;
        v228 = (v222 + 24);
        v229 = v221 + 8;
        do
        {
          v230 = *v228;
          v231 = *(a3 + 24);
          v233 = v231[1];
          if ((v233 + 1) > v231[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(v231, v231 + 3, v233 + 1, 2);
            v233 = v231[1];
          }

          *(*v231 + 2 * v233) = v232;
          ++v231[1];
          v235 = *(a3 + 24);
          v234 = *(a3 + 32);
          v518 = v230;
          v236 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v234, &v518);
          v237 = v235[1];
          if ((v237 + 1) > v235[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(v235, v235 + 3, v237 + 1, 2);
            v237 = v235[1];
          }

          *(*v235 + 2 * v237) = v236;
          ++v235[1];
          v239 = v227-- != 0;
          if (v229 == v225)
          {
            break;
          }

          v228 += 4;
          v229 += 8;
        }

        while (v239);
      }
    }

    if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&Rewriter))
    {
      return;
    }

    v189 = *(a3 + 24);
    v240 = v189[1];
    if (v240 + 1 > v189[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v189, v189 + 3, v240 + 1, 2);
      v240 = v189[1];
    }

    v241 = *v189;
    v242 = -1;
LABEL_228:
    *(v241 + 2 * v240) = v242;
LABEL_229:
    ++v189[1];
    return;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateRangeOp,void>::id)
  {
    v243 = a2;
    *&v519 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    v244 = *(*mlir::AffineMapAttr::getValue(&v519) + 136);
    if (v244 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      v247 = *(a3 + 24);
      v248 = v247[1];
      if ((v248 + 1) <= v247[2])
      {
        v246 = v243;
        v249 = 12;
        goto LABEL_252;
      }

      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v247 + 3, v248 + 1, 2);
      v249 = 12;
    }

    else
    {
      v245 = v244 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
      v246 = v243;
      if (!v245)
      {
LABEL_253:
        v267 = v246 - 16;
        if (*(v246 + 36))
        {
          v268 = v246 - 16;
        }

        else
        {
          v268 = 0;
        }

        v269 = v246;
        v270 = mlir::detail::OpResultImpl::getNextResultAtOffset(v268, 0);
        if (*(v269 + 36))
        {
          v271 = v267;
        }

        else
        {
          v271 = 0;
        }

        *&v519 = mlir::detail::OpResultImpl::getNextResultAtOffset(v271, 0);
        v272 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &v519);
        v274 = *(a3 + 24);
        v273 = *(a3 + 32);
        *&v519 = v270;
        v275 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v273, &v519);
        v276 = v274[1];
        if ((v276 + 1) > v274[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(v274, v274 + 3, v276 + 1, 2);
          v276 = v274[1];
        }

        *(*v274 + 2 * v276) = v275;
        ++v274[1];
        v277 = *(a3 + 24);
        v278 = v277[1];
        if ((v278 + 1) > v277[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v277 + 3, v278 + 1, 2);
          v278 = v277[1];
        }

        *(*v277 + 2 * v278) = v272;
        ++v277[1];
        if ((*(v243 + 46) & 0x80) != 0)
        {
          v279 = v243;
          v280 = *(v243 + 72);
          v281 = *(v279 + 68);
          v282 = *(a3 + 24);
          v283 = v282[1];
          v284 = v283 + 1;
          if ((v283 + 1) <= v282[2])
          {
            goto LABEL_265;
          }
        }

        else
        {
          v280 = 0;
          v281 = 0;
          v282 = *(a3 + 24);
          v283 = v282[1];
          v284 = v283 + 1;
          if ((v283 + 1) <= v282[2])
          {
LABEL_265:
            *(*v282 + 2 * v283) = v281;
            ++v282[1];
            if (!v281)
            {
              return;
            }

LABEL_266:
            v285 = (v280 + 24);
            do
            {
              v286 = *v285;
              v285 += 4;
              --v281;
            }

            while (v281);
            return;
          }
        }

        llvm::SmallVectorBase<unsigned long long>::grow_pod(v282, v282 + 3, v284, 2);
        *(*v282 + 2 * v282[1]++) = v281;
        if (!v281)
        {
          return;
        }

        goto LABEL_266;
      }

      v247 = *(a3 + 24);
      v248 = v247[1];
      if ((v248 + 1) <= v247[2])
      {
        v249 = 13;
LABEL_252:
        *(*v247 + 2 * v248) = v249;
        ++v247[1];
        goto LABEL_253;
      }

      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v247 + 3, v248 + 1, 2);
      v249 = 13;
    }

    v248 = v247[1];
    v246 = v243;
    goto LABEL_252;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypeOp,void>::id)
  {
    InputAttributeNames = a2;
    v250 = mlir::pdl_interp::CheckTypeOp::getType(&InputAttributeNames);
    v192 = a1;
    goto LABEL_190;
  }

  if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id)
  {
    if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::EraseOp,void>::id)
    {
      v287 = *(*(a2 + 72) + 24);
      v288 = *(a3 + 24);
      v289 = v288[1];
      if ((v289 + 1) > v288[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v288 + 3, v289 + 1, 2);
        v289 = v288[1];
      }

      *(*v288 + 2 * v289) = 14;
      goto LABEL_272;
    }

    if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ExtractOp,void>::id)
    {
      InputAttributeNames = a2;
      v290 = a2;
      if (*(a2 + 36))
      {
        v291 = a2 - 16;
      }

      else
      {
        v291 = 0;
      }

      v292 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v291, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v292 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
      {
        v293 = 15;
      }

      else if (v292 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
      {
        v293 = 17;
      }

      else
      {
        v293 = 16 * (v292 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
      }

      v304 = *(*(v290 + 72) + 24);
      Index = mlir::pdl::ResultOp::getIndex(&InputAttributeNames);
      if (*(InputAttributeNames + 9))
      {
        v306 = InputAttributeNames - 16;
      }

      else
      {
        v306 = 0;
      }

      v287 = mlir::detail::OpResultImpl::getNextResultAtOffset(v306, 0);
      v307 = *(a3 + 24);
      v308 = v307[1];
      if ((v308 + 1) > v307[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v307 + 3, v308 + 1, 2);
        v308 = v307[1];
      }

      *(*v307 + 2 * v308) = v293;
      ++v307[1];
      v310 = *(a3 + 24);
      v309 = *(a3 + 32);
      *&v519 = v304;
      v311 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v309, &v519);
      v312 = v310[1];
      if ((v312 + 1) > v310[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(v310, v310 + 3, v312 + 1, 2);
        v312 = v310[1];
      }

      *(*v310 + 2 * v312) = v311;
      ++v310[1];
      v313 = *(a3 + 24);
      v314 = v313[1];
      if (v313[2] < (v314 + 2))
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v313 + 3, v314 + 2, 2);
        v314 = v313[1];
      }

      *(*v313 + 2 * v314) = Index;
      v313[1] += 2;
      goto LABEL_313;
    }

    if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::FinalizeOp,void>::id)
    {
      if (a2 && v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ForEachOp,void>::id)
      {
        v41 = a2 + 64;
        v42 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
        if (v42)
        {
          v43 = v42 - 8;
        }

        else
        {
          v43 = 0;
        }

        v44 = **(v43 + 48);
        v45 = a2;
        *&v519 = *(*(a2 + 72) + 24);
        v46 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &v519);
        v47 = *(a3 + 24);
        v48 = v47[1];
        if ((v48 + 1) > v47[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v47 + 3, v48 + 1, 2);
          v48 = v47[1];
        }

        *(*v47 + 2 * v48) = 19;
        ++v47[1];
        v49 = *(a3 + 24);
        v50 = v49[1];
        if ((v50 + 1) > v49[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v49 + 3, v50 + 1, 2);
          v50 = v49[1];
        }

        *(*v49 + 2 * v50) = v46;
        ++v49[1];
        v52 = *(a3 + 24);
        v51 = *(a3 + 32);
        *&v519 = v44;
        v53 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v51, &v519);
        v54 = v52[1];
        if ((v54 + 1) > v52[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(v52, v52 + 3, v54 + 1, 2);
          v54 = v52[1];
        }

        *(*v52 + 2 * v54) = v53;
        ++v52[1];
        v55 = *(*(*(v44 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        if (v55 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
        {
          v56 = 0;
        }

        else if (v55 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
        {
          v56 = 1;
        }

        else if (v55 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
        {
          *&v519 = *(v44 + 8) & 0xFFFFFFFFFFFFFFF8;
          if (*(*mlir::AffineMapAttr::getValue(&v519) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
          {
            v56 = 3;
          }

          else
          {
            v56 = 5;
          }
        }

        else if (v55 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
        {
          v56 = 2;
        }

        else
        {
          v56 = 4 * (v55 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
        }

        v369 = *(a3 + 24);
        v370 = v369[1];
        if ((v370 + 1) > v369[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v369 + 3, v370 + 1, 2);
          v370 = v369[1];
        }

        *(*v369 + 2 * v370) = v56;
        ++v369[1];
        v371 = *(a1 + 144);
        v372 = *(((v41 + 16 * ((*(v45 + 44) >> 23) & 1) + ((*(v45 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
        v373 = *(a3 + 24);
        v374 = v373[1];
        if ((v374 + 1) > v373[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v373 + 3, v374 + 1, 2);
          v374 = v373[1];
        }

        *(*v373 + 2 * v374) = v371;
        ++v373[1];
        *&v519 = v372;
        v375 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::operator[](a3, &v519);
        v376 = v375;
        v377 = *(*(a3 + 24) + 8);
        v378 = v375[2];
        if (v378 >= v375[3])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v375, v375 + 4, v378 + 1, 4);
          LODWORD(v378) = v376[2];
        }

        *(*v376 + 4 * v378) = v377;
        ++v376[2];
        v379 = *(a3 + 24);
        v380 = v379[1];
        if (v379[2] < (v380 + 2))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v379 + 3, v380 + 2, 2);
          v380 = v379[1];
        }

        *(*v379 + 2 * v380) = 0;
        v379[1] += 2;
        v381 = *(a1 + 144) + 1;
        *(a1 + 144) = v381;
        v382 = *(a1 + 248);
        if (*v382 < v381)
        {
          *v382 = v381;
        }

        --*(a1 + 144);
        return;
      }

      v513 = a2;
      if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeOp,void>::id)
      {
        if (*(a2 + 36))
        {
          v322 = a2 - 16;
        }

        else
        {
          v322 = 0;
        }

        v323 = mlir::detail::OpResultImpl::getNextResultAtOffset(v322, 0);
        v324 = *(v513 + 10);
        v325 = *(*(v513 + 9) + 24);
        v326 = *(a3 + 24);
        v327 = v326[1];
        if ((v327 + 1) > v326[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v326 + 3, v327 + 1, 2);
          v327 = v326[1];
        }

        *(*v326 + 2 * v327) = 20;
        ++v326[1];
        v329 = *(a3 + 24);
        v328 = *(a3 + 32);
        *&v519 = v323;
        v330 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v328, &v519);
        v331 = v329[1];
        if ((v331 + 1) > v329[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(v329, v329 + 3, v331 + 1, 2);
          v331 = v329[1];
        }

        *(*v329 + 2 * v331) = v330;
        ++v329[1];
        v333 = *(a3 + 24);
        v332 = *(a3 + 32);
        *&v519 = v325;
        v334 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v332, &v519);
        v335 = v333[1];
        if ((v335 + 1) > v333[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(v333, v333 + 3, v335 + 1, 2);
          v335 = v333[1];
        }

        *(*v333 + 2 * v335) = v334;
        ++v333[1];
        v316 = *(a3 + 24);
        v336 = *(a3 + 32);
        InputAttributeNames = v324;
        v518 = (**(v336 + 216) + ((*(*(v336 + 184) + 8) - **(v336 + 184)) >> 3));
        llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>((v336 + 120), &InputAttributeNames, &v518, &v519);
        if (v520 == 1)
        {
          v337 = *(v336 + 184);
          v339 = *(v337 + 8);
          v338 = *(v337 + 16);
          if (v339 >= v338)
          {
            v360 = *v337;
            v361 = v339 - *v337;
            v362 = (v361 >> 3) + 1;
            if (v362 >> 61)
            {
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }

            v363 = v338 - v360;
            if (v363 >> 2 > v362)
            {
              v362 = v363 >> 2;
            }

            if (v363 >= 0x7FFFFFFFFFFFFFF8)
            {
              v364 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v364 = v362;
            }

            if (v364)
            {
              if (v364 >> 61)
              {
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              v365 = operator new(8 * v364);
            }

            else
            {
              v365 = 0;
            }

            v398 = &v365[8 * (v361 >> 3)];
            *v398 = InputAttributeNames;
            v340 = v398 + 1;
            memcpy(v365, v360, v361);
            *v337 = v365;
            *(v337 + 8) = v340;
            *(v337 + 16) = &v365[8 * v364];
            if (v360)
            {
              operator delete(v360);
            }
          }

          else
          {
            *v339 = InputAttributeNames;
            v340 = v339 + 1;
          }

          *(v337 + 8) = v340;
        }

        v317 = *(v519 + 8);
        v318 = v316[1];
        v319 = v318 + 1;
        if ((v318 + 1) <= v316[2])
        {
          goto LABEL_315;
        }

        goto LABEL_397;
      }

      if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeTypeOp,void>::id)
      {
        if (*(a2 + 36))
        {
          v341 = a2 - 16;
        }

        else
        {
          v341 = 0;
        }

        v342 = mlir::detail::OpResultImpl::getNextResultAtOffset(v341, 0);
        v343 = *(*(v513 + 9) + 24);
        v344 = *(a3 + 24);
        v345 = v344[1];
        if (v345 + 1 > v344[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v344 + 3, v345 + 1, 2);
          v345 = v344[1];
        }

        v346 = *v344;
        v347 = 21;
        goto LABEL_335;
      }

      if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetDefiningOpOp,void>::id)
      {
        if (*(a2 + 36))
        {
          v352 = a2 - 16;
        }

        else
        {
          v352 = 0;
        }

        v353 = mlir::detail::OpResultImpl::getNextResultAtOffset(v352, 0);
        v354 = *(a3 + 24);
        v355 = v354[1];
        if ((v355 + 1) > v354[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v354 + 3, v355 + 1, 2);
          v355 = v354[1];
        }

        *(*v354 + 2 * v355) = 22;
        ++v354[1];
        v357 = *(a3 + 24);
        v356 = *(a3 + 32);
        *&v519 = v353;
        v358 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v356, &v519);
        v359 = v357[1];
        if ((v359 + 1) > v357[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(v357, v357 + 3, v359 + 1, 2);
          v359 = v357[1];
        }

        *(*v357 + 2 * v359) = v358;
        goto LABEL_348;
      }

      if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandOp,void>::id)
      {
        *&v519 = a2;
        v366 = mlir::pdl::ResultOp::getIndex(&v519);
        v367 = v366;
        if (v366 <= 3)
        {
          v368 = v366 + 23;
LABEL_389:
          v394 = *(a3 + 24);
          v396 = v394 + 1;
          v395 = v394[1];
          if ((v395 + 1) > v394[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v394 + 3, v395 + 1, 2);
            v395 = v394[1];
          }

          *(*v394 + 2 * v395) = v368;
          v397 = 1;
LABEL_415:
          *v396 += v397;
          v404 = *(*(v519 + 72) + 24);
          if (*(v519 + 36))
          {
            v405 = v519 - 16;
          }

          else
          {
            v405 = 0;
          }

          v406 = mlir::detail::OpResultImpl::getNextResultAtOffset(v405, 0);
          return;
        }

        v389 = *(a3 + 24);
        v390 = v389[1];
        if (v390 + 1 > v389[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v389 + 3, v390 + 1, 2);
          v390 = v389[1];
        }

        v391 = *v389;
        v392 = 27;
      }

      else
      {
        if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandsOp,void>::id)
        {
          InputAttributeNames = a2;
          if (*(a2 + 36))
          {
            v383 = a2 - 16;
          }

          else
          {
            v383 = 0;
          }

          v287 = mlir::detail::OpResultImpl::getNextResultAtOffset(v383, 0);
          v384 = mlir::pdl::ResultsOp::getIndex(&InputAttributeNames);
          if ((v384 & 0x100000000) != 0)
          {
            v385 = v384;
          }

          else
          {
            v385 = -1;
          }

          if (*(*(*(v287 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
          {
            v288 = *(a3 + 24);
            v386 = v288[1];
            v387 = v386 + 1;
            if ((v386 + 1) > v288[2])
            {
LABEL_406:
              llvm::SmallVectorBase<unsigned long long>::grow_pod(v288, v288 + 3, v387, 2);
              v388 = -1;
LABEL_484:
              v386 = v288[1];
              goto LABEL_408;
            }

            goto LABEL_383;
          }

LABEL_407:
          *&v519 = v287;
          v388 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &v519);
          v288 = *(a3 + 24);
          v386 = v288[1];
          if ((v386 + 1) > v288[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v288 + 3, v386 + 1, 2);
            goto LABEL_484;
          }

LABEL_408:
          *(*v288 + 2 * v386) = v388;
LABEL_272:
          ++v288[1];
LABEL_313:
          v316 = *(a3 + 24);
          v315 = *(a3 + 32);
          *&v519 = v287;
          goto LABEL_314;
        }

        if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultOp,void>::id)
        {
          if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
          {
            if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetUsersOp,void>::id)
            {
              if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id)
              {
                if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::IsNotNullOp,void>::id)
                {
                  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::RecordMatchOp,void>::id)
                  {
                    v294 = a2;
                  }

                  else
                  {
                    v294 = 0;
                  }

                  if (!v294)
                  {
                    if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ReplaceOp,void>::id)
                    {
                      return;
                    }

                    if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchAttributeOp,void>::id)
                    {
                      v435 = *(a2 + 80);
                      v436 = *(*(a2 + 72) + 24);
                      mlir::SuccessorRange::SuccessorRange(&v519, a2);
                      v438 = *(&v519 + 1);
                      v437 = v519;
                      v439 = *(a3 + 24);
                      v440 = v439[1];
                      if (v440 + 1 > v439[2])
                      {
                        llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v439 + 3, v440 + 1, 2);
                        v440 = v439[1];
                      }

                      v441 = *v439;
                      v442 = 41;
                    }

                    else
                    {
                      if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypeOp,void>::id)
                      {
                        if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypesOp,void>::id)
                        {
                          v447 = *(a2 + 80);
                          v448 = *(*(a2 + 72) + 24);
                          mlir::SuccessorRange::SuccessorRange(&v519, a2);
                          return;
                        }

                        if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperandCountOp,void>::id)
                        {
                          v421 = *(a2 + 80);
                          v422 = *(*(a2 + 72) + 24);
                          mlir::SuccessorRange::SuccessorRange(&v519, a2);
                          v424 = *(&v519 + 1);
                          v423 = v519;
                          v425 = a3;
                          v426 = 42;
                        }

                        else
                        {
                          if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperationNameOp,void>::id)
                          {
                            *&v519 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
                            v449 = mlir::ArrayAttr::getValue(&v519);
                            v450 = mlir::ArrayAttr::getValue(&v519);
                            v452 = v451;
                            v453 = *(*(v513 + 9) + 24);
                            mlir::SuccessorRange::SuccessorRange(&v519, v513);
                            v454 = v519;
                            v455 = *(a3 + 24);
                            v456 = v455[1];
                            if ((v456 + 1) > v455[2])
                            {
                              llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v455 + 3, v456 + 1, 2);
                              v456 = v455[1];
                            }

                            v457 = (v450 + 8 * v452);
                            *(*v455 + 2 * v456) = 43;
                            ++v455[1];
                            v459 = *(a3 + 24);
                            v458 = *(a3 + 32);
                            *&v519 = v453;
                            v460 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v458, &v519);
                            v461 = v459[1];
                            if ((v461 + 1) > v459[2])
                            {
                              llvm::SmallVectorBase<unsigned long long>::grow_pod(v459, v459 + 3, v461 + 1, 2);
                              v461 = v459[1];
                            }

                            *(*v459 + 2 * v461) = v460;
                            ++v459[1];
                            v462 = *(a3 + 24);
                            v463 = v462[1];
                            if ((v463 + 1) > v462[2])
                            {
                              llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v462 + 3, v463 + 1, 2);
                              v463 = v462[1];
                            }

                            *(*v462 + 2 * v463) = (v457 - v449) >> 3;
                            ++v462[1];
                            while (v449 != v457)
                            {
                              v464 = *v449++;
                              InputAttributeNames = v464;
                              AttrData = mlir::OpaqueAttr::getAttrData(&InputAttributeNames);
                              mlir::OperationName::OperationName(&v519, AttrData, v466, *(a1 + 152));
                            }

                            v40 = a3;
                            v39 = *(&v454 + 1);
                            v38 = v454;
                            goto LABEL_182;
                          }

                          v421 = *(a2 + 80);
                          v422 = *(*(a2 + 72) + 24);
                          mlir::SuccessorRange::SuccessorRange(&v519, a2);
                          v424 = *(&v519 + 1);
                          v423 = v519;
                          v425 = a3;
                          v426 = 44;
                        }

                        return;
                      }

                      v435 = *(a2 + 80);
                      v436 = *(*(a2 + 72) + 24);
                      mlir::SuccessorRange::SuccessorRange(&v519, a2);
                      v438 = *(&v519 + 1);
                      v437 = v519;
                      v439 = *(a3 + 24);
                      v440 = v439[1];
                      if (v440 + 1 > v439[2])
                      {
                        llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v439 + 3, v440 + 1, 2);
                        v440 = v439[1];
                      }

                      v441 = *v439;
                      v442 = 45;
                    }

                    *(v441 + 2 * v440) = v442;
                    ++v439[1];
                    v444 = *(a3 + 24);
                    v443 = *(a3 + 32);
                    *&v519 = v436;
                    v445 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v443, &v519);
                    v446 = v444[1];
                    if ((v446 + 1) > v444[2])
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(v444, v444 + 3, v446 + 1, 2);
                      v446 = v444[1];
                    }

                    *(*v444 + 2 * v446) = v445;
                    ++v444[1];
                    v40 = a3;
                    v38 = v437;
                    v39 = v438;
                    goto LABEL_182;
                  }

                  v518 = v294;
                  v295 = *(a1 + 208);
                  v296 = *(a1 + 256);
                  v297 = *(v296 + 4);
                  if (v297)
                  {
                    v298 = *v296;
                    v299 = v297 - 1;
                    v300 = (v297 - 1) & ((v294 >> 4) ^ (v294 >> 9));
                    v301 = *(v298 + 16 * v300);
                    if (v301 == v294)
                    {
LABEL_300:
                      v302 = *(v298 + 16 * v300 + 8);
                      goto LABEL_490;
                    }

                    v467 = 1;
                    while (v301 != -4096)
                    {
                      v468 = v300 + v467++;
                      v300 = v468 & v299;
                      v301 = *(v298 + 16 * v300);
                      if (v301 == v294)
                      {
                        goto LABEL_300;
                      }
                    }
                  }

                  v302 = 0;
LABEL_490:
                  v469 = *(v295 + 8);
                  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v518);
                  InputAttributeNames = mlir::SymbolRefAttr::getLeafReference(&Rewriter);
                  v470 = mlir::OpaqueAttr::getAttrData(&InputAttributeNames);
                  v472 = v471;
                  v475 = llvm::StringMapImpl::hash(v470, v471, v473, v474);
                  v476 = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<>((a1 + 96), v470, v472, v475);
                  mlir::detail::PDLByteCodePattern::create(v294, v302, *(*v476 + 8), &v519);
                  v477 = *(v295 + 8);
                  if (v477 >= *(v295 + 12))
                  {
                    llvm::SmallVectorTemplateBase<mlir::detail::PDLByteCodePattern,false>::growAndEmplaceBack<mlir::detail::PDLByteCodePattern>(v295, &v519);
                    v486 = v525;
                    if (v525 == &v528)
                    {
                      goto LABEL_512;
                    }

                    goto LABEL_511;
                  }

                  v478 = *v295 + 104 * v477;
                  v479 = v519;
                  *(v478 + 16) = v520;
                  *v478 = v479;
                  v480 = (v478 + 40);
                  *(v478 + 24) = v478 + 40;
                  *(v478 + 32) = 0x200000000;
                  v481 = v522;
                  if (!v522 || v478 == &v519)
                  {
LABEL_502:
                    v484 = v524[1];
                    *(v478 + 72) = v478 + 88;
                    *(v478 + 56) = v484;
                    *(v478 + 80) = 0;
                    v485 = v526;
                    if (v526 && v478 != &v519)
                    {
                      if (v525 == &v528)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(v478 + 72, (v478 + 88), v526, 16);
                        if (v526)
                        {
                          memcpy(*(v478 + 72), v525, 16 * v526);
                        }

                        *(v478 + 80) = v485;
                      }

                      else
                      {
                        *(v478 + 72) = v525;
                        *(v478 + 80) = v485;
                        *(v478 + 84) = v527;
                        v525 = &v528;
                        v527 = 0;
                      }

                      v526 = 0;
                    }

                    *(v478 + 88) = v528;
                    ++*(v295 + 8);
                    v486 = v525;
                    if (v525 == &v528)
                    {
                      goto LABEL_512;
                    }

LABEL_511:
                    free(v486);
LABEL_512:
                    if (__src != v524)
                    {
                      free(__src);
                    }

                    mlir::SuccessorRange::SuccessorRange(&v519, v518);
                    v487 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v518, 1u);
                    if ((*(v518 + 46) & 0x80) != 0)
                    {
                      v488 = *(v518 + 9);
                    }

                    else
                    {
                      v488 = 0;
                    }

                    v489 = v487;
                    v490 = (HIDWORD(v487) + v487);
                    v491 = v490 - v487;
                    v492 = v519;
                    v493 = *(a3 + 24);
                    v494 = v493[1];
                    if ((v494 + 1) > v493[2])
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v493 + 3, v494 + 1, 2);
                      v494 = v493[1];
                    }

                    *(*v493 + 2 * v494) = 39;
                    ++v493[1];
                    v495 = *(a3 + 24);
                    v496 = v495[1];
                    if ((v496 + 1) > v495[2])
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v495 + 3, v496 + 1, 2);
                      v496 = v495[1];
                    }

                    *(*v495 + 2 * v496) = v469;
                    ++v495[1];
                    v497 = *(a3 + 24);
                    v498 = v497[1];
                    if ((v498 + 1) > v497[2])
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v497 + 3, v498 + 1, 2);
                      v498 = v497[1];
                    }

                    *(*v497 + 2 * v498) = v491;
                    ++v497[1];
                    if (v490 != v489)
                    {
                      v508 = (v488 + 32 * v489 + 24);
                      do
                      {
                        v510 = *(a3 + 24);
                        v509 = *(a3 + 32);
                        InputAttributeNames = *v508;
                        v511 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v509, &InputAttributeNames);
                        v512 = v510[1];
                        if ((v512 + 1) > v510[2])
                        {
                          llvm::SmallVectorBase<unsigned long long>::grow_pod(v510, v510 + 3, v512 + 1, 2);
                          v512 = v510[1];
                        }

                        *(*v510 + 2 * v512) = v511;
                        ++v510[1];
                        v508 += 4;
                        --v491;
                      }

                      while (v491);
                    }

                    v499 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v518, 0);
                    if ((*(v518 + 46) & 0x80) != 0)
                    {
                      v500 = *(v518 + 9);
                    }

                    else
                    {
                      v500 = 0;
                    }

                    v501 = v499;
                    v502 = (HIDWORD(v499) + v499);
                    v503 = v502 - v499;
                    v504 = *(a3 + 24);
                    v505 = v504[1];
                    if ((v505 + 1) > v504[2])
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v504 + 3, v505 + 1, 2);
                      v505 = v504[1];
                    }

                    *(*v504 + 2 * v505) = v503;
                    ++v504[1];
                    if (v502 != v501)
                    {
                      v506 = (v500 + 32 * v501 + 24);
                      do
                      {
                        v507 = *v506;
                        v506 += 4;
                        --v503;
                      }

                      while (v503);
                    }

                    return;
                  }

                  v482 = __src;
                  if (__src != v524)
                  {
                    *(v478 + 24) = __src;
                    *(v478 + 32) = v481;
                    *(v478 + 36) = v523;
                    __src = v524;
                    v523 = 0;
LABEL_501:
                    v522 = 0;
                    goto LABEL_502;
                  }

                  if (v522 < 3)
                  {
                    v483 = v522;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(v478 + 24, (v478 + 40), v522, 8);
                    v483 = v522;
                    if (!v522)
                    {
LABEL_500:
                      *(v478 + 32) = v481;
                      goto LABEL_501;
                    }

                    v482 = __src;
                    v480 = *(v478 + 24);
                  }

                  memcpy(v480, v482, 8 * v483);
                  goto LABEL_500;
                }

                v179 = *(*(a2 + 72) + 24);
                mlir::SuccessorRange::SuccessorRange(&v519, a2);
                v119 = *(&v519 + 1);
                v118 = v519;
                v181 = *(a3 + 24);
                v420 = v181[1];
                if ((v420 + 1) > v181[2])
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v181 + 3, v420 + 1, 2);
                  v420 = v181[1];
                }

                *(*v181 + 2 * v420) = 38;
                goto LABEL_177;
              }

              v417 = *(*(*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
              if (*(a2 + 36))
              {
                v418 = a2 - 16;
              }

              else
              {
                v418 = 0;
              }

              v419 = mlir::detail::OpResultImpl::getNextResultAtOffset(v418, 0);
              v342 = v419;
              if (v417 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
              {
                *&v519 = v419;
                v427 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &v519);
                v343 = *(*(v513 + 9) + 24);
                v428 = *(a3 + 24);
                v429 = v428[1];
                if ((v429 + 1) > v428[2])
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v428 + 3, v429 + 1, 2);
                  v429 = v428[1];
                }

                *(*v428 + 2 * v429) = 37;
                ++v428[1];
                v431 = *(a3 + 24);
                v430 = *(a3 + 32);
                *&v519 = v342;
                v432 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v430, &v519);
                v433 = v431[1];
                if ((v433 + 1) > v431[2])
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod(v431, v431 + 3, v433 + 1, 2);
                  v433 = v431[1];
                }

                *(*v431 + 2 * v433) = v432;
                ++v431[1];
                v349 = *(a3 + 24);
                v434 = v349[1];
                if ((v434 + 1) > v349[2])
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v349 + 3, v434 + 1, 2);
                  v434 = v349[1];
                }

                *(*v349 + 2 * v434) = v427;
                goto LABEL_338;
              }

              v343 = *(*(v513 + 9) + 24);
              v344 = *(a3 + 24);
              v345 = v344[1];
              if (v345 + 1 > v344[2])
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v344 + 3, v345 + 1, 2);
                v345 = v344[1];
              }

              v346 = *v344;
              v347 = 36;
LABEL_335:
              *(v346 + 2 * v345) = v347;
              ++v344[1];
              v349 = *(a3 + 24);
              v348 = *(a3 + 32);
              *&v519 = v342;
              v350 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v348, &v519);
              v351 = v349[1];
              if ((v351 + 1) > v349[2])
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod(v349, v349 + 3, v351 + 1, 2);
                v351 = v349[1];
              }

              *(*v349 + 2 * v351) = v350;
LABEL_338:
              ++v349[1];
              v316 = *(a3 + 24);
              v315 = *(a3 + 32);
              *&v519 = v343;
LABEL_314:
              v317 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v315, &v519);
              v318 = v316[1];
              v319 = v318 + 1;
              if ((v318 + 1) <= v316[2])
              {
LABEL_315:
                *(*v316 + 2 * v318) = v317;
                ++v316[1];
                return;
              }

LABEL_397:
              llvm::SmallVectorBase<unsigned long long>::grow_pod(v316, v316 + 3, v319, 2);
              v318 = v316[1];
              goto LABEL_315;
            }

            if (*(a2 + 36))
            {
              v407 = a2 - 16;
            }

            else
            {
              v407 = 0;
            }

            v408 = mlir::detail::OpResultImpl::getNextResultAtOffset(v407, 0);
            *&v519 = v408;
            v409 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &v519);
            v410 = *(a3 + 24);
            v411 = v410[1];
            if ((v411 + 1) > v410[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v410 + 3, v411 + 1, 2);
              v411 = v410[1];
            }

            *(*v410 + 2 * v411) = 35;
            ++v410[1];
            v413 = *(a3 + 24);
            v412 = *(a3 + 32);
            *&v519 = v408;
            v414 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v412, &v519);
            v415 = v413[1];
            if ((v415 + 1) > v413[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(v413, v413 + 3, v415 + 1, 2);
              v415 = v413[1];
            }

            *(*v413 + 2 * v415) = v414;
            ++v413[1];
            v357 = *(a3 + 24);
            v416 = v357[1];
            if ((v416 + 1) > v357[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v357 + 3, v416 + 1, 2);
              v416 = v357[1];
            }

            *(*v357 + 2 * v416) = v409;
LABEL_348:
            ++v357[1];
            return;
          }

          InputAttributeNames = a2;
          if (*(a2 + 36))
          {
            v399 = a2 - 16;
          }

          else
          {
            v399 = 0;
          }

          v287 = mlir::detail::OpResultImpl::getNextResultAtOffset(v399, 0);
          v400 = mlir::pdl::ResultsOp::getIndex(&InputAttributeNames);
          if ((v400 & 0x100000000) != 0)
          {
            v401 = v400;
          }

          else
          {
            v401 = -1;
          }

          if (*(*(*(v287 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
          {
            v288 = *(a3 + 24);
            v386 = v288[1];
            v387 = v386 + 1;
            if ((v386 + 1) > v288[2])
            {
              goto LABEL_406;
            }

LABEL_383:
            v388 = -1;
            goto LABEL_408;
          }

          goto LABEL_407;
        }

        *&v519 = a2;
        v393 = mlir::pdl::ResultOp::getIndex(&v519);
        v367 = v393;
        if (v393 <= 3)
        {
          v368 = v393 + 29;
          goto LABEL_389;
        }

        v389 = *(a3 + 24);
        v390 = v389[1];
        if (v390 + 1 > v389[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v389 + 3, v390 + 1, 2);
          v390 = v389[1];
        }

        v391 = *v389;
        v392 = 33;
      }

      *(v391 + 2 * v390) = v392;
      ++v389[1];
      v402 = *(a3 + 24);
      v396 = v402 + 1;
      v403 = v402[1];
      if (v402[2] < (v403 + 2))
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v402 + 3, v403 + 2, 2);
        v403 = v402[1];
      }

      *(*v402 + 2 * v403) = v367;
      v397 = 2;
      goto LABEL_415;
    }

    v189 = *(a3 + 24);
    v240 = v189[1];
    if (v240 + 1 > v189[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v189, v189 + 3, v240 + 1, 2);
      v240 = v189[1];
    }

    v241 = *v189;
    v242 = 18;
    goto LABEL_228;
  }

  InputAttributeNames = a2;
  v251 = a2 - 16;
  if (*(a2 + 36))
  {
    v252 = a2 - 16;
  }

  else
  {
    v252 = 0;
  }

  v253 = a2;
  v254 = mlir::detail::OpResultImpl::getNextResultAtOffset(v252, 0);
  if (*(v253 + 36))
  {
    v255 = v251;
  }

  else
  {
    v255 = 0;
  }

  *&v519 = mlir::detail::OpResultImpl::getNextResultAtOffset(v255, 0);
  v256 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &v519);
  v257 = mlir::pdl::OperationOp::getAttributeValueNames(&InputAttributeNames);
  v258 = *(a3 + 24);
  v259 = v258[1];
  if ((v259 + 1) > v258[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v258 + 3, v259 + 1, 2);
    v259 = v258[1];
  }

  *(*v258 + 2 * v259) = 10;
  ++v258[1];
  v261 = *(a3 + 24);
  v260 = *(a3 + 32);
  *&v519 = v254;
  v262 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v260, &v519);
  v263 = v261[1];
  if ((v263 + 1) > v261[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v261, v261 + 3, v263 + 1, 2);
    v263 = v261[1];
  }

  *(*v261 + 2 * v263) = v262;
  ++v261[1];
  v264 = *(a3 + 24);
  v265 = v264[1];
  if ((v265 + 1) > v264[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v264 + 3, v265 + 1, 2);
    v265 = v264[1];
  }

  *(*v264 + 2 * v265) = v256;
  ++v264[1];
}

void anonymous namespace::Generator::generate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[8] = *MEMORY[0x1E69E9840];
  v14 = a2;
  v15 = v17;
  v16 = 0x800000000;
  llvm::ReversePostOrderTraversal<mlir::Region *,llvm::GraphTraits<mlir::Region *>>::Initialize(&v15, &v14);
  v5 = v15;
  if (v16)
  {
    v6 = v15 + 8 * v16;
    do
    {
      v7 = *(v6 - 1);
      v6 -= 8;
      v12 = *(*(a1 + 192) + 8);
      v13 = v7;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned long>((a1 + 160), &v13, &v12, v11);
      v8 = v13 + 32;
      v9 = *(v13 + 40);
      if (v9 != v13 + 32)
      {
        do
        {
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          v9 = *(v9 + 8);
        }

        while (v9 != v8);
      }
    }

    while (v6 != v5);
    v5 = v15;
  }

  if (v5 != v17)
  {
    free(v5);
  }
}

uint64_t *anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_3::operator()(uint64_t **a1, uint64_t a2)
{
  v14 = a2;
  v4 = *a1;
  v3 = a1[1];
  v5 = (*v3)++;
  LOWORD(v12) = v5;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::try_emplace<unsigned short>(v4, &v14, &v12, v13);
  v7 = *(v14 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v7 = 0;
  }

  v12 = v7;
  if (v7)
  {
    result = mlir::AffineMapAttr::getValue(&v12);
    v8 = *(*result + 136);
    if (v8 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      v9 = a1[2];
    }

    else
    {
      if (v8 != &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
      {
        return result;
      }

      v9 = a1[3];
    }

    v10 = (*v9)++;
    v11 = v10;
    return llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::try_emplace<unsigned short>(v4 + 3, &v14, &v11, v13);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = *a1 + 16 * v6;
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 8;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = *a1 + 16 * (v14 & v5);
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 8;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::LookupBucketFor<mlir::func::FuncOp>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  *(v7 + 8) = 0;
  return v7 + 8;
}