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

void OUTLINED_FUNCTION_16_6()
{

  operator new();
}

void OUTLINED_FUNCTION_17_8()
{
  v2 = *(v0 + 8);
  v3 = 24 * *(v0 + 24);

  llvm::deallocate_buffer(v2, v3);
}

void *OUTLINED_FUNCTION_32_3()
{
  *(v2 - 256) = v0 - 16;

  return llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](v1, (v2 - 256));
}

void OUTLINED_FUNCTION_53_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unint64_t *a59, unsigned int a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  mlir::pdl_to_pdl_interp::OptimalBranching::preOrderTraversal(v65 - 256, a59, a60, &a65);
}

void OUTLINED_FUNCTION_54_3(uint64_t a1)
{

  operator new();
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
    llvm::DenseMap<mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>::shrink_and_clear(this + 32);
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
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  if (!a3)
  {
    a4[1] = 0;
    a4[2] = 0;
    operator new();
  }

  v7 = a2;
  v8 = &a2[a3];
  while (1)
  {
    v11 = *v7;
    v22 = v11;
    if (*(a1 + 24) == v11)
    {
      goto LABEL_5;
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
      v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v14 >> 47) ^ v14);
      LODWORD(v14) = -348639895 * ((v15 >> 47) ^ v15);
      v16 = v12 - 1;
      v17 = (v12 - 1) & v14;
      v18 = *(v13 + 16 * v17);
      if (v18 == v11)
      {
LABEL_9:
        v9 = *(v13 + 16 * v17 + 8);
        goto LABEL_4;
      }

      v19 = 1;
      while (v18 != -4096)
      {
        v20 = v17 + v19++;
        v17 = v20 & v16;
        v18 = *(v13 + 16 * v17);
        if (v18 == v11)
        {
          goto LABEL_9;
        }
      }
    }

    v9 = 0;
LABEL_4:
    v21 = v9;
    v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::operator[](v23, &v21);
    std::vector<mlir::Operation *>::push_back[abi:nn200100](v10, &v22);
LABEL_5:
    if (++v7 == v8)
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      if (!(a3 >> 60))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }
  }
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::LookupBucketFor<mlir::Value>(v15, v14, &v16);
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

void *mlir::detail::PDLByteCodeMutableState::cleanupAfterMatchAndRewrite(void *this)
{
  v1 = this;
  v2 = this[9];
  for (i = this[10]; i != v2; i -= 16)
  {
    v4 = *(i - 16);
    this = v4;
    if (v4)
    {
      this = MEMORY[0x1AC55A040](this, 0x20C8093837F09);
    }
  }

  v1[10] = v2;
  v5 = v1[15];
  for (j = v1[16]; j != v5; j -= 16)
  {
    v7 = *(j - 16);
    this = v7;
    if (v7)
    {
      this = MEMORY[0x1AC55A040](this, 0x20C8093837F09);
    }
  }

  v1[16] = v5;
  return this;
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
  *(v8 + 32) = xmmword_1A75DA830;
  *(v8 + 176) = v8 + 200;
  *(v8 + 184) = xmmword_1A75DA830;
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
            if (*(*(v44 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::FuncOp,void>::id)
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
            if (*(*(v48 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
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

          mlir::Region::getOps<mlir::pdl_interp::FuncOp>(&v202, (((v49 + 64 + 16 * ((*(v49 + 44) >> 23) & 1) + ((*(v49 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v49 + 40)));
          v192 = v202;
          *v193 = v203;
          v194 = v204;
          v195 = v205;
          v50 = v206;
          v51 = v203;
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
            *v200 = xmmword_1A7595C10;
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
            v193[1] = (&v194 + 8);
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
          ZinIrHalH13g::~ZinIrHalH13g(v51);
          v52 = (*(&v195 + 1))();
          LOWORD(v199) = 0;
          v184 = 0;
          LOWORD(v190[0]) = 0;
          v208 = v161;
          v209 = &v199;
          v210 = &v184;
          v211 = v190;
          v53 = v52 + 64;
          v54 = *(v52 + 44);
          v55 = (v54 >> 23) & 1;
          v56 = (v54 >> 21) & 0x7F8;
          v57 = 32 * *(v52 + 40);
          v58 = (((v52 + 64 + 16 * v55 + v56 + 7) & 0xFFFFFFFFFFFFFFF8) + v57);
          if (*v58 == v58)
          {
            goto LABEL_176;
          }

          v59 = v58[1];
          v60 = v59 ? v59 - 8 : 0;
          v61 = *(v60 + 48);
          v62 = *(v60 + 56);
          if (v62 == v61)
          {
            goto LABEL_176;
          }

          v63 = v52;
          v160 = v52 + 64;
          while (1)
          {
            v72 = *v61;
            v73 = v208;
            v74 = (*v209)++;
            v75 = *(v73 + 16);
            if (!v75)
            {
              break;
            }

            v76 = 0x9DDFEA08EB382D69 * ((8 * v72 - 0xAE502812AA7333) ^ HIDWORD(v72));
            v77 = 0x9DDFEA08EB382D69 * (HIDWORD(v72) ^ (v76 >> 47) ^ v76);
            v78 = (-348639895 * ((v77 >> 47) ^ v77)) & (v75 - 1);
            v79 = (*v73 + 16 * v78);
            v80 = *v79;
            if (v72 == *v79)
            {
              goto LABEL_82;
            }

            v81 = 0;
            v82 = 1;
            while (v80 != -4096)
            {
              if (v81)
              {
                v83 = 0;
              }

              else
              {
                v83 = v80 == -8192;
              }

              if (v83)
              {
                v81 = v79;
              }

              v84 = v78 + v82++;
              v78 = v84 & (v75 - 1);
              v79 = (*v73 + 16 * v78);
              v80 = *v79;
              if (v72 == *v79)
              {
                goto LABEL_82;
              }
            }

            v98 = (v81 ? v81 : v79);
            v99 = *(v73 + 8);
            if (4 * v99 + 4 >= 3 * v75)
            {
              break;
            }

            if (v75 + ~v99 - *(v73 + 12) <= v75 >> 3)
            {
              goto LABEL_111;
            }

            *(v73 + 8) = v99 + 1;
            if (*v98 != -4096)
            {
              goto LABEL_80;
            }

LABEL_81:
            *v98 = v72;
            *(v98 + 8) = v74;
LABEL_82:
            v85 = (*(v72 + 8) & 0xFFFFFFFFFFFFFFF8);
            if (*(*v85 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
            {
              v85 = 0;
            }

            v207 = v85;
            if (!v85)
            {
              goto LABEL_65;
            }

            v86 = *(*mlir::AffineMapAttr::getValue(&v207) + 136);
            if (v86 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
            {
              v64 = *(v73 + 24);
              v65 = (*v210)++;
              v66 = *(v73 + 40);
              if (!v66)
              {
                goto LABEL_138;
              }

              v67 = 0x9DDFEA08EB382D69 * ((8 * v72 - 0xAE502812AA7333) ^ HIDWORD(v72));
              v68 = 0x9DDFEA08EB382D69 * (HIDWORD(v72) ^ (v67 >> 47) ^ v67);
              v69 = (v66 - 1) & (-348639895 * ((v68 >> 47) ^ v68));
              v70 = (v64 + 16 * v69);
              v71 = *v70;
              if (v72 != *v70)
              {
                v110 = 0;
                v111 = 1;
                while (v71 != -4096)
                {
                  if (v110)
                  {
                    v112 = 0;
                  }

                  else
                  {
                    v112 = v71 == -8192;
                  }

                  if (v112)
                  {
                    v110 = v70;
                  }

                  v113 = v69 + v111++;
                  v69 = v113 & (v66 - 1);
                  v70 = (v64 + 16 * v69);
                  v71 = *v70;
                  if (v72 == *v70)
                  {
                    goto LABEL_65;
                  }
                }

                if (v110)
                {
                  v114 = v110;
                }

                else
                {
                  v114 = v70;
                }

                v115 = *(v73 + 32);
                if (4 * v115 + 4 < 3 * v66)
                {
                  if (v66 + ~v115 - *(v73 + 36) > v66 >> 3)
                  {
                    goto LABEL_103;
                  }
                }

                else
                {
LABEL_138:
                  v66 *= 2;
                }

                llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(v73 + 24, v66);
                v116 = *(v73 + 40);
                if (!v116)
                {
                  goto LABEL_166;
                }

                v117 = *(v73 + 24);
                v118 = 0x9DDFEA08EB382D69 * ((8 * v72 - 0xAE502812AA7333) ^ HIDWORD(v72));
                v119 = 0x9DDFEA08EB382D69 * (HIDWORD(v72) ^ (v118 >> 47) ^ v118);
                LODWORD(v118) = -348639895 * ((v119 >> 47) ^ v119);
                v120 = v116 - 1;
                v121 = (v116 - 1) & v118;
                v114 = (v117 + 16 * v121);
                v122 = *v114;
                if (v72 != *v114)
                {
                  v123 = 0;
                  v124 = 1;
                  while (v122 != -4096)
                  {
                    if (v123)
                    {
                      v125 = 0;
                    }

                    else
                    {
                      v125 = v122 == -8192;
                    }

                    if (v125)
                    {
                      v123 = v114;
                    }

                    v126 = v121 + v124++;
                    v121 = v126 & v120;
                    v114 = (v117 + 16 * (v126 & v120));
                    v122 = *v114;
                    if (v72 == *v114)
                    {
                      goto LABEL_167;
                    }
                  }

LABEL_172:
                  if (v123)
                  {
                    v114 = v123;
                  }
                }

LABEL_167:
                ++*(v73 + 32);
                if (*v114 != -4096)
                {
LABEL_104:
                  --*(v73 + 36);
                }

LABEL_105:
                *v114 = v72;
                *(v114 + 4) = v65;
              }
            }

            else if (v86 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
            {
              v87 = *(v73 + 24);
              v65 = (*v211)++;
              v88 = *(v73 + 40);
              if (!v88)
              {
                goto LABEL_154;
              }

              v89 = 0x9DDFEA08EB382D69 * ((8 * v72 - 0xAE502812AA7333) ^ HIDWORD(v72));
              v90 = 0x9DDFEA08EB382D69 * (HIDWORD(v72) ^ (v89 >> 47) ^ v89);
              v91 = (v88 - 1) & (-348639895 * ((v90 >> 47) ^ v90));
              v92 = (v87 + 16 * v91);
              v93 = *v92;
              if (v72 != *v92)
              {
                v94 = 0;
                v95 = 1;
                while (v93 != -4096)
                {
                  if (v94)
                  {
                    v96 = 0;
                  }

                  else
                  {
                    v96 = v93 == -8192;
                  }

                  if (v96)
                  {
                    v94 = v92;
                  }

                  v97 = v91 + v95++;
                  v91 = v97 & (v88 - 1);
                  v92 = (v87 + 16 * v91);
                  v93 = *v92;
                  if (v72 == *v92)
                  {
                    goto LABEL_65;
                  }
                }

                if (v94)
                {
                  v114 = v94;
                }

                else
                {
                  v114 = v92;
                }

                v115 = *(v73 + 32);
                if (4 * v115 + 4 >= 3 * v88)
                {
LABEL_154:
                  v88 *= 2;
LABEL_155:
                  llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(v73 + 24, v88);
                  v127 = *(v73 + 40);
                  if (v127)
                  {
                    v128 = *(v73 + 24);
                    v129 = 0x9DDFEA08EB382D69 * ((8 * v72 - 0xAE502812AA7333) ^ HIDWORD(v72));
                    v130 = 0x9DDFEA08EB382D69 * (HIDWORD(v72) ^ (v129 >> 47) ^ v129);
                    LODWORD(v129) = -348639895 * ((v130 >> 47) ^ v130);
                    v131 = v127 - 1;
                    v132 = (v127 - 1) & v129;
                    v114 = (v128 + 16 * v132);
                    v133 = *v114;
                    if (v72 != *v114)
                    {
                      v123 = 0;
                      v134 = 1;
                      while (v133 != -4096)
                      {
                        if (v123)
                        {
                          v135 = 0;
                        }

                        else
                        {
                          v135 = v133 == -8192;
                        }

                        if (v135)
                        {
                          v123 = v114;
                        }

                        v136 = v132 + v134++;
                        v132 = v136 & v131;
                        v114 = (v128 + 16 * (v136 & v131));
                        v133 = *v114;
                        if (v72 == *v114)
                        {
                          goto LABEL_167;
                        }
                      }

                      goto LABEL_172;
                    }

                    goto LABEL_167;
                  }

LABEL_166:
                  v114 = 0;
                  goto LABEL_167;
                }

                if (v88 + ~v115 - *(v73 + 36) <= v88 >> 3)
                {
                  goto LABEL_155;
                }

LABEL_103:
                *(v73 + 32) = v115 + 1;
                if (*v114 != -4096)
                {
                  goto LABEL_104;
                }

                goto LABEL_105;
              }
            }

LABEL_65:
            if (++v61 == v62)
            {
              v137 = *(v63 + 44);
              v55 = (v137 >> 23) & 1;
              v56 = (v137 >> 21) & 0x7F8;
              v57 = 32 * *(v63 + 40);
              v50 = v158;
              v53 = v160;
LABEL_176:
              v138 = ((v53 + 16 * v55 + v56 + 7) & 0xFFFFFFFFFFFFFFF8) + v57;
              v207 = &v208;
              for (i = *(v138 + 8); i != v138; i = *(i + 8))
              {
                v140 = i - 8;
                if (!i)
                {
                  v140 = 0;
                }

                v141 = *(v140 + 40);
                v142 = (v140 + 32);
                if (v141 != (v140 + 32))
                {
                  do
                  {
                    v143 = *(v141 + 1);
                    ZinIrHalH13g::~ZinIrHalH13g(v141);
                    v141 = v143;
                  }

                  while (v143 != v142);
                }
              }

              if (v199 <= *v178)
              {
                v145 = v184;
                v146 = v180;
                if (v184 <= *v180)
                {
                  goto LABEL_186;
                }
              }

              else
              {
                *v178 = v199;
                v145 = v184;
                v146 = v180;
                if (v184 <= *v180)
                {
LABEL_186:
                  v147 = v190[0];
                  v148 = v181;
                  if (LOWORD(v190[0]) <= *v181)
                  {
                    goto LABEL_188;
                  }

                  goto LABEL_187;
                }
              }

              *v146 = v145;
              v147 = v190[0];
              v148 = v181;
              if (LOWORD(v190[0]) > *v181)
              {
LABEL_187:
                *v148 = v147;
                goto LABEL_188;
              }

              do
              {
LABEL_188:
                mlir::Region::OpIterator::operator++(&v192);
                v51 = v193[0];
                if (v193[0] == *(&v194 + 1))
                {
                  goto LABEL_56;
                }

                v149 = v195;
                ZinIrHalH13g::~ZinIrHalH13g(v193[0]);
              }

              while (!v149());
              v51 = v193[0];
LABEL_56:
              if (v51 == v50)
              {
                goto LABEL_194;
              }

              goto LABEL_57;
            }
          }

          v75 *= 2;
LABEL_111:
          llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(v73, v75);
          v100 = *(v73 + 16);
          if (v100)
          {
            v101 = 0x9DDFEA08EB382D69 * ((8 * v72 - 0xAE502812AA7333) ^ HIDWORD(v72));
            v102 = 0x9DDFEA08EB382D69 * (HIDWORD(v72) ^ (v101 >> 47) ^ v101);
            LODWORD(v101) = -348639895 * ((v102 >> 47) ^ v102);
            v103 = v100 - 1;
            v104 = (v100 - 1) & v101;
            v98 = *v73 + 16 * v104;
            v105 = *v98;
            if (v72 != *v98)
            {
              v106 = 0;
              v107 = 1;
              while (v105 != -4096)
              {
                if (v106)
                {
                  v108 = 0;
                }

                else
                {
                  v108 = v105 == -8192;
                }

                if (v108)
                {
                  v106 = v98;
                }

                v109 = v104 + v107++;
                v104 = v109 & v103;
                v98 = *v73 + 16 * (v109 & v103);
                v105 = *v98;
                if (v72 == *v98)
                {
                  goto LABEL_123;
                }
              }

              if (v106)
              {
                v98 = v106;
              }
            }
          }

          else
          {
            v98 = 0;
          }

LABEL_123:
          ++*(v73 + 8);
          if (*v98 == -4096)
          {
            goto LABEL_81;
          }

LABEL_80:
          --*(v73 + 12);
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
  v30 = *MEMORY[0x1E69E9840];
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
          MEMORY[0x1AC55A040](v11, 0x20C8093837F09);
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

  v23 = a2 + 7;
  if (*(this + 100) > ((a2[7].__end_cap_.__value_ - a2[7].__begin_) >> 1))
  {
    operator new();
  }

  v24 = *(this + 100);
  if (v24)
  {
    v25 = *(this + 49);
    v26 = 104 * v24;
    v27 = (v25 + 12);
    do
    {
      v28 = *v27;
      v27 += 52;
      LOWORD(__x) = v28;
      std::vector<mlir::PatternBenefit>::push_back[abi:nn200100](v23, &__x);
      v26 -= 104;
    }

    while (v26);
  }
}

void std::vector<mlir::PatternBenefit>::push_back[abi:nn200100](uint64_t a1, _WORD *a2)
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
  v8 = v7 >> 1;
  if (v7 >> 1 <= -2)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v9 = v3 - v6;
  if (v9 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  *(2 * v8) = *a2;
  v5 = 2 * v8 + 2;
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
  v403 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v8 = *a1;
    v10 = *a1 + 1;
    v9 = **a1;
    *a1 = v10;
    result = 1;
    switch(v9)
    {
      case 0:
        *a1 = v8 + 2;
        v123 = v8[1];
        v399[0] = v400;
        v399[1] = 0x1000000000;
        v124 = *a1;
        v125 = **a1;
        *a1 += 2;
        v126 = v124[1];
        v127 = a1[29];
        __src[0] = &v383;
        __src[1] = 0x300000000;
        v385 = v387;
        v386 = 0x300000000;
        v389 = v391;
        v390 = 0x300000000;
        v392 = v394;
        v393 = 0x300000000;
        v396 = v398;
        v397 = 0x300000000;
        if (v126 >= 4)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v385, v387, v126, 16);
          if (HIDWORD(v390) < v126)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v389, v391, v126, 16);
          }
        }

        v401 = v399[0];
        v402 = LODWORD(v399[1]);
        v324 = *&v127[16 * v123 + 12];
        if (!v324)
        {
          goto LABEL_450;
        }

        LOBYTE(v4) = (*(*v324 + 48))(v324, a2, __src, &v401);
        LOBYTE(v401) = v4;
        v325 = *a1;
        *a1 += 2 * (v125 == (v4 & 1));
        *a1 = &a1[23][*&v325[2 * (v125 == (v4 & 1))]];
        mlir::PDLResultList::~PDLResultList(__src);
        v54 = v399[0];
        if (v399[0] != v400)
        {
          goto LABEL_393;
        }

        continue;
      case 1:
        *a1 = v8 + 2;
        v140 = v8[1];
        v141 = a1[31];
        v399[0] = v400;
        v399[1] = 0x1000000000;
        v142 = *(*a1)++;
        __src[0] = &v383;
        __src[1] = 0x300000000;
        v385 = v387;
        v386 = 0x300000000;
        v389 = v391;
        v390 = 0x300000000;
        v392 = v394;
        v393 = 0x300000000;
        v396 = v398;
        v397 = 0x300000000;
        if (v142 >= 4)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v385, v387, v142, 16);
          if (HIDWORD(v390) < v142)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v389, v391, v142, 16);
          }
        }

        v401 = v399[0];
        v402 = LODWORD(v399[1]);
        v326 = *&v141[16 * v140 + 12];
        if (!v326)
        {
LABEL_450:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        LOBYTE(v4) = (*(*v326 + 48))(v326, a2, __src, &v401);
        LOBYTE(v401) = v4;
        mlir::PDLResultList::~PDLResultList(__src);
        if (v399[0] != v400)
        {
          free(v399[0]);
        }

        if (v4)
        {
          continue;
        }

        return 0;
      case 2:
        v94 = v8[2];
        v92 = v8 + 2;
        v93 = v94;
        *a1 = v92;
        v95 = *(v92 - 1);
        v96 = a1[10];
        v97 = 21;
        if (v96 <= v95)
        {
          v98 = 21;
        }

        else
        {
          v98 = 9;
        }

        if (v96 <= v95)
        {
          v99 = a1[10];
        }

        else
        {
          v99 = 0;
        }

        v100 = *&a1[v98][4 * (v95 - v99)];
        v101 = v92 + 1;
        *a1 = v92 + 1;
        if (v96 > v93)
        {
          v97 = 9;
          v96 = 0;
        }

        v102 = v100 != *&a1[v97][4 * (v93 - v96)];
        *a1 = &v101[2 * v102];
        v7 = *&v101[2 * v102];
        goto LABEL_4;
      case 3:
        v105 = v8[3];
        v103 = v8 + 3;
        v104 = v105;
        v106 = *(v103 - 2);
        *a1 = v103;
        v107 = *(v103 - 1);
        v108 = a1[10];
        v109 = 21;
        if (v108 <= v107)
        {
          v110 = 21;
        }

        else
        {
          v110 = 9;
        }

        if (v108 <= v107)
        {
          v111 = a1[10];
        }

        else
        {
          v111 = 0;
        }

        v112 = *&a1[v110][4 * (v107 - v111)];
        v6 = v103 + 1;
        *a1 = v103 + 1;
        if (v108 > v104)
        {
          v109 = 9;
          v108 = 0;
        }

        v113 = *&a1[v109][4 * (v104 - v108)];
        if (v106 != 3)
        {
          v4 = v112[1];
          if (v4 != v113[1])
          {
            goto LABEL_407;
          }

          v318 = *v113;
          __src[0] = *v112;
          __src[1] = 0;
          v399[0] = v318;
          v399[1] = 0;
          if (!v4)
          {
            v321 = 0;
            goto LABEL_295;
          }

          v319 = 0;
          do
          {
            v320 = mlir::ValueRange::dereference_iterator(__src, v319);
            if (v320 != mlir::ValueRange::dereference_iterator(v399, v399[1]))
            {
              goto LABEL_407;
            }

            v319 = __src[1] + 1;
            __src[1] = v319;
            v321 = ++v399[1];
            v322 = v319 == v4 || v321 == v4;
          }

          while (!v322);
          if (v319 == v4)
          {
LABEL_295:
            v323 = 2 * (v321 != v4);
          }

          else
          {
LABEL_407:
            v323 = 2;
          }

          v6 = &(*a1)[v323];
          *a1 = v6;
          goto LABEL_3;
        }

        v114 = v112[1];
        if (v114 != v113[1])
        {
          v6 = v103 + 3;
          *a1 = v103 + 3;
          goto LABEL_3;
        }

        if (!v114)
        {
          *a1 = v6;
          goto LABEL_3;
        }

        v115 = 0;
        v4 = *v112;
        v116 = *v113;
        while (1)
        {
          v117 = mlir::TypeRange::dereference_iterator(v4, v115);
          if (v117 != mlir::TypeRange::dereference_iterator(v116, v115))
          {
            break;
          }

          if (v114 == ++v115)
          {
            v118 = 0;
            goto LABEL_410;
          }
        }

        v118 = 2;
LABEL_410:
        v6 = &(*a1)[v118];
        *a1 = v6;
LABEL_3:
        v7 = *v6;
LABEL_4:
        *a1 = &a1[23][v7];
        continue;
      case 4:
        goto LABEL_268;
      case 5:
        *a1 = v8 + 2;
        v135 = *&a1[9][4 * v8[1]];
        v136 = *(v8 + 1);
        *a1 = v8 + 5;
        v137 = *(v135 + 44);
        if (v8[4])
        {
          if ((v137 & 0x800000) != 0)
          {
            v138 = *(v135 + 68);
          }

          else
          {
            v138 = 0;
          }

          v139 = v138 < v136;
        }

        else
        {
          if ((v137 & 0x800000) != 0)
          {
            v329 = *(v135 + 68);
          }

          else
          {
            v329 = 0;
          }

          v139 = v329 != v136;
        }

        v330 = &v8[2 * v139 + 5];
        *a1 = v330;
        v7 = *v330;
        goto LABEL_4;
      case 6:
        v145 = v8[2];
        v143 = v8 + 2;
        v144 = v145;
        *a1 = v143;
        v146 = a1[10];
        v147 = *&a1[9][4 * *(v143 - 1)];
        v148 = v143 + 1;
        *a1 = v143 + 1;
        v149 = 21;
        if (v146 > v145)
        {
          v149 = 9;
          v146 = 0;
        }

        v150 = *(v147 + 48) != *&a1[v149][4 * (v144 - v146)];
        *a1 = &v148[2 * v150];
        v7 = *&v148[2 * v150];
        goto LABEL_4;
      case 7:
        *a1 = v8 + 2;
        v128 = *(v8 + 1);
        v129 = *(*&a1[9][4 * v8[1]] + 36);
        v322 = v129 == v128;
        v130 = v129 < v128;
        v131 = !v322;
        v132 = 4 * v131;
        v133 = 4 * v130;
        if (!v8[4])
        {
          v133 = v132;
        }

        v134 = (v8 + v133 + 10);
        *a1 = v134;
        v7 = *v134;
        goto LABEL_4;
      case 8:
        v170 = v8[2];
        v168 = v8 + 2;
        v169 = v170;
        *a1 = v168;
        v171 = a1[10];
        v172 = *&a1[9][4 * *(v168 - 1)];
        *a1 = v168 + 1;
        v173 = 21;
        if (v171 <= v170)
        {
          v174 = v171;
        }

        else
        {
          v173 = 9;
          v174 = 0;
        }

        v399[0] = *&a1[v173][4 * (v169 - v174)];
        Value = mlir::ArrayAttr::getValue(v399);
        v176 = mlir::ArrayAttr::getValue(v399);
        v178 = (v176 + 8 * v177);
        v179 = v172[1];
        if (v179 != v178 - Value)
        {
          goto LABEL_403;
        }

        v4 = 0;
        if (!v179)
        {
          goto LABEL_401;
        }

        v180 = *v172;
        while (Value != v178)
        {
          v181 = mlir::TypeRange::dereference_iterator(v180, v4);
          __src[0] = *Value;
          if (v181 != mlir::AffineMapAttr::getValue(__src))
          {
            goto LABEL_403;
          }

          ++v4;
          ++Value;
          if (v179 == v4)
          {
            goto LABEL_402;
          }
        }

        Value = v178;
LABEL_401:
        if (v4 == v179)
        {
LABEL_402:
          v357 = 2 * (Value != v178);
          goto LABEL_404;
        }

LABEL_403:
        v357 = 2;
LABEL_404:
        v358 = &(*a1)[v357];
        *a1 = v358;
        v7 = *v358;
        goto LABEL_4;
      case 9:
        *a1 = v8 + 2;
        ++*&a1[19][2 * v8[1]];
        v62 = *(a1 + 4);
        *a1 = *&a1[1][4 * v62 - 4];
        *(a1 + 4) = v62 - 1;
        continue;
      case 10:
        v55 = v8[1];
        v56 = v8[2];
        *a1 = v8 + 4;
        v57 = v8[3];
        v58 = a1[10];
        v59 = 21;
        if (v58 > v57)
        {
          v59 = 9;
          v58 = 0;
        }

        v401 = *&a1[v59][4 * (v57 - v58)];
        v4 = mlir::ArrayAttr::getValue(&v401);
        v60 = mlir::ArrayAttr::getValue(&v401);
        if (v60 + 8 * v61 != v4)
        {
          operator new[]();
        }

        mlir::ValueRange::ValueRange(__src, 0, 0);
        *&a1[13][8 * v56] = *__src;
        *&a1[9][4 * v55] = &a1[13][8 * v56];
        continue;
      case 11:
        v194 = v8[1];
        *a1 = v8 + 3;
        v195 = v8[2];
        v196 = a1[10];
        v197 = 21;
        if (v196 > v195)
        {
          v197 = 9;
          v196 = 0;
        }

        mlir::OperationState::OperationState(__src, a4, *&a1[v197][4 * (v195 - v196)]);
        v198 = *a1 + 1;
        v199 = **a1;
        *a1 = v198;
        v4 = __src;
        if (v199)
        {
          do
          {
            v202 = *a1;
            v203 = (*a1)[1];
            ++*a1;
            v206 = *v202;
            v204 = v202 + 2;
            v205 = v206;
            v207 = a1[10];
            v208 = v207 > v206;
            if (v207 <= v206)
            {
              v209 = 21;
            }

            else
            {
              v209 = 9;
            }

            if (v208)
            {
              v210 = 0;
            }

            else
            {
              v210 = a1[10];
            }

            v211 = *&a1[v209][4 * (v205 - v210)];
            *a1 = v204;
            if (v207 <= v203)
            {
              v212 = 21;
            }

            else
            {
              v212 = 9;
            }

            if (v207 <= v203)
            {
              v213 = v207;
            }

            else
            {
              v213 = 0;
            }

            v214 = *&a1[v212][4 * (v203 - v213)];
            if (v214)
            {
              ZinMirCacheTensors::ZinMirCacheTensors(v399, v211, v214);
              mlir::NamedAttrList::push_back(v388, v399[0], v399[1]);
            }

            --v199;
          }

          while (v199);
          v200 = *(*a1)++;
          if (!v200)
          {
            goto LABEL_264;
          }
        }

        else
        {
          v201 = *v198;
          v200 = v201;
          *a1 = v198 + 1;
          if (!v201)
          {
            goto LABEL_264;
          }
        }

        if (v200 == 0xFFFF)
        {
          v297 = __src[1];
          {
            v298 = v297[4];
            v299 = *(v297 + 10);
            if (v299)
            {
              do
              {
LABEL_259:
                v300 = v299 >> 1;
                v301 = &v298[2 * (v299 >> 1)];
                v303 = *v301;
                v302 = v301 + 2;
                v299 += ~(v299 >> 1);
                if (v303 < mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id)
                {
                  v298 = v302;
                }

                else
                {
                  v299 = v300;
                }
              }

              while (v299);
            }
          }

          else
          {
            mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
            v298 = v297[4];
            v299 = *(v297 + 10);
            if (v299)
            {
              goto LABEL_259;
            }
          }

          v304 = *v298[1];
          Context = mlir::Attribute::getContext(__src);
          v4 = __src[0];
          mlir::ValueRange::ValueRange(v399, v383, v384);
          v306 = mlir::Attribute::getContext(__src);
          Dictionary = mlir::NamedAttrList::getDictionary(v388, v306);
          v308 = v396;
          mlir::ValueRange::ValueRange(&v401, v394[2], v395);
          if ((v304(Context, v4, 1, v399[0], v399[1], Dictionary, v308) & 1) == 0)
          {
            goto LABEL_265;
          }

          goto LABEL_264;
        }

        v331 = 0;
        do
        {
          while (1)
          {
            v332 = *a1;
            v333 = **a1;
            *a1 += 2;
            v334 = v332[1];
            if (v333 != 2)
            {
              break;
            }

            v335 = a1[10];
            v336 = 21;
            if (v335 > v334)
            {
              v336 = 9;
              v335 = 0;
            }

            v337 = *&a1[v336][4 * (v334 - v335)];
            v338 = v386;
            if (v386 >= HIDWORD(v386))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v385, v387, v386 + 1, 8);
              v338 = v386;
            }

            *&v385[8 * v338] = v337;
            LODWORD(v386) = v386 + 1;
            if (++v331 == v200)
            {
              goto LABEL_264;
            }
          }

          v339 = *&a1[9][4 * v334];
          v340 = *v339;
          v341 = v339[1];
          v342 = v386;
          v343 = v341 + v386;
          if (v343 > HIDWORD(v386))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v385, v387, v343, 8);
            v342 = v386;
          }

          if (v341)
          {
            v4 = 0;
            v344 = &v385[8 * v342];
            do
            {
              *&v344[8 * v4] = mlir::TypeRange::dereference_iterator(v340, v4);
              ++v4;
            }

            while (v341 != v4);
            LODWORD(v342) = v386;
          }

          LODWORD(v386) = v342 + v341;
          ++v331;
        }

        while (v331 != v200);
LABEL_264:
        *&a1[9][4 * v194] = mlir::OpBuilder::create((a2 + 8), __src);
LABEL_265:
        mlir::OperationState::~OperationState(__src);
        continue;
      case 12:
        v151 = v8[1];
        v152 = v8[2];
        __src[0] = &v383;
        __src[1] = 0x600000000;
        *a1 = v8 + 4;
        v153 = v8[3];
        if (!v8[3])
        {
          goto LABEL_266;
        }

        v154 = 0;
        v155 = 0;
        do
        {
          while (1)
          {
            v156 = *a1;
            v157 = **a1;
            *a1 += 2;
            v158 = v156[1];
            if (v157 != 2)
            {
              break;
            }

            v159 = a1[10];
            v160 = 21;
            if (v159 > v158)
            {
              v160 = 9;
              v159 = 0;
            }

            v161 = *&a1[v160][4 * (v158 - v159)];
            if (v154 >= HIDWORD(__src[1]))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(__src, &v383, v154 + 1, 8);
              v154 = __src[1];
            }

            *(__src[0] + v154) = v161;
            v154 = ++LODWORD(__src[1]);
            if (++v155 == v153)
            {
              goto LABEL_253;
            }
          }

          v162 = *&a1[9][4 * v158];
          v163 = *v162;
          v164 = v162[1];
          v165 = v154;
          v166 = v164 + v154;
          if (v166 > HIDWORD(__src[1]))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(__src, &v383, v166, 8);
            v165 = LODWORD(__src[1]);
            v154 = __src[1];
          }

          if (v164)
          {
            v4 = 0;
            v167 = __src[0] + 8 * v165;
            do
            {
              *&v167[8 * v4] = mlir::TypeRange::dereference_iterator(v163, v4);
              ++v4;
            }

            while (v164 != v4);
            v154 = __src[1];
          }

          v154 += v164;
          LODWORD(__src[1]) = v154;
          ++v155;
        }

        while (v155 != v153);
LABEL_253:
        if (v154)
        {
          operator new[]();
        }

LABEL_266:
        mlir::ValueRange::ValueRange(v399, 0, 0);
        *&a1[13][8 * v152] = *v399;
        *&a1[9][4 * v151] = &a1[13][8 * v152];
        v54 = __src[0];
        if (__src[0] != &v383)
        {
LABEL_393:
          free(v54);
        }

        continue;
      case 13:
        v52 = v8[1];
        *a1 = v8 + 3;
        v53 = v8[2];
        __src[0] = &v383;
        __src[1] = 0x600000000;
        if (LODWORD(__src[1]))
        {
          operator new[]();
        }

        mlir::ValueRange::ValueRange(v399, 0, 0);
        *&a1[16][8 * v53] = *v399;
        *&a1[9][4 * v52] = &a1[16][8 * v53];
        v54 = __src[0];
        if (__src[0] != &v383)
        {
          goto LABEL_393;
        }

        continue;
      case 14:
        *a1 = v8 + 2;
        (*(*a2 + 16))(a2, *&a1[9][4 * v8[1]]);
        continue;
      case 15:
        *a1 = v8 + 2;
        v215 = v8[1];
        v216 = a1[10];
        v217 = 21;
        if (v216 > v215)
        {
          v217 = 9;
          v216 = 0;
        }

        v218 = *&a1[v217][4 * (v215 - v216)];
        v219 = *(v8 + 1);
        *a1 = v8 + 5;
        v220 = v8[4];
        if (v218)
        {
          if (v218[1] <= v219)
          {
            v221 = 0;
          }

          else
          {
            v221 = *(*v218 + 8 * v219);
          }

          *&a1[9][4 * v220] = v221;
        }

        else
        {
          *&a1[9][4 * v220] = 0;
        }

        continue;
      case 16:
        *a1 = v8 + 2;
        v222 = a1[9];
        v223 = *&v222[4 * v8[1]];
        v224 = *(v8 + 1);
        *a1 = v8 + 5;
        v225 = v8[4];
        if (v223)
        {
          if (v223[1] <= v224)
          {
            *&v222[4 * v225] = 0;
          }

          else
          {
            *&a1[9][4 * v225] = mlir::TypeRange::dereference_iterator(*v223, v224);
          }
        }

        else
        {
          *&v222[4 * v225] = 0;
        }

        continue;
      case 17:
        *a1 = v8 + 2;
        v119 = a1[9];
        v120 = *&v119[4 * v8[1]];
        v121 = *(v8 + 1);
        *a1 = v8 + 5;
        v122 = v8[4];
        if (!v120)
        {
          goto LABEL_106;
        }

        if (v120[1] <= v121)
        {
          *&v119[4 * v122] = 0;
        }

        else
        {
          v120 = mlir::ValueRange::dereference_iterator(v120, v121);
          v119 = a1[9];
LABEL_106:
          *&v119[4 * v122] = v120;
        }

        continue;
      case 18:
        return result;
      case 19:
        v36 = v8[1];
        v37 = v8[2];
        v10 = v8 + 5;
        *a1 = v8 + 5;
        v38 = v8[4];
        v39 = a1[19];
        v40 = &a1[11][8 * v36];
        v41 = *&v39[2 * v38];
        if (*(v40 + 1) > v41)
        {
          *&a1[9][4 * v37] = *(*v40 + 8 * v41);
          v42 = *(a1 + 4);
          if (v42 >= *(a1 + 5))
          {
            v378 = v8;
            llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 1), a1 + 3, v42 + 1, 8);
            v8 = v378;
            v42 = *(a1 + 4);
          }

          *&a1[1][4 * v42] = v8;
          ++*(a1 + 4);
          *a1 += 2;
          continue;
        }

        *&v39[2 * v38] = 0;
LABEL_268:
        v7 = *v10;
        goto LABEL_4;
      case 20:
        v184 = v8[3];
        v182 = v8 + 3;
        v183 = v184;
        v4 = *(v182 - 2);
        *a1 = v182;
        v185 = a1[10];
        v186 = *&a1[9][4 * *(v182 - 1)];
        *a1 = v182 + 1;
        v187 = 21;
        if (v185 <= v184)
        {
          v188 = v185;
        }

        else
        {
          v187 = 9;
          v188 = 0;
        }

        v189 = *&a1[v187][4 * (v183 - v188)];
        __src[0] = v189;
        if (!*(v186 + 47))
        {
          goto LABEL_158;
        }

        AttrData = mlir::OpaqueAttr::getAttrData(__src);
        InherentAttr = mlir::Operation::getInherentAttr(v186, AttrData, v191);
        if ((v193 & 1) == 0)
        {
          v189 = __src[0];
LABEL_158:
          InherentAttr = mlir::DictionaryAttr::get(v186 + 56, v189);
        }

        *&a1[9][4 * v4] = InherentAttr;
        continue;
      case 21:
        v70 = v8[1];
        *a1 = v8 + 3;
        v71 = v8[2];
        v72 = a1[10];
        v73 = 21;
        if (v72 > v71)
        {
          v73 = 9;
          v72 = 0;
        }

        FunctionType = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*&a1[v73][4 * (v71 - v72)]);
        __src[0] = FunctionType;
        __src[1] = v75;
        if (FunctionType)
        {
          FunctionType = mlir::FunctionOpInterface::getFunctionType(__src);
        }

        goto LABEL_387;
      case 22:
        v70 = v8[1];
        if (v8[2] == 4)
        {
          *a1 = v8 + 4;
          __src[0] = *&a1[9][4 * v8[3]];
          if (__src[0])
          {
            goto LABEL_311;
          }
        }

        else
        {
          *a1 = v8 + 4;
          FunctionType = *&a1[9][4 * v8[3]];
          if (!FunctionType)
          {
            goto LABEL_387;
          }

          if (FunctionType[1])
          {
            __src[0] = mlir::ValueRange::dereference_iterator(FunctionType, 0);
LABEL_311:
            FunctionType = mlir::Value::getDefiningOp(__src);
            goto LABEL_387;
          }
        }

        FunctionType = 0;
LABEL_387:
        *&a1[9][4 * v70] = FunctionType;
        continue;
      case 23:
      case 24:
      case 25:
      case 26:
        v14 = v8[2];
        v12 = v8 + 2;
        v13 = v14;
        *a1 = v12;
        v15 = a1[9];
        v16 = *&v15[4 * *(v12 - 1)];
        *a1 = v12 + 1;
        if ((*(v16 + 46) & 0x80) != 0)
        {
          v17 = (v9 - 23);
          if (*(v16 + 68) <= v17)
          {
            *&v15[4 * v13] = 0;
          }

          else
          {
            *&v15[4 * v13] = *(*(v16 + 72) + 32 * v17 + 24);
          }
        }

        else
        {
          *&v15[4 * v13] = 0;
        }

        continue;
      case 27:
        continue;
      case 28:
        v253 = v8[4];
        v251 = v8 + 4;
        v252 = v253;
        v254 = *(v251 - 3);
        *a1 = v251;
        v255 = *&a1[9][4 * *(v251 - 1)];
        *a1 = v251 + 1;
        if ((*(v255 + 46) & 0x80) != 0)
        {
          v256 = *(v255 + 72);
          v4 = *(v255 + 68);
          v257 = a1[16];
          if (v254 == -1)
          {
            goto LABEL_395;
          }
        }

        else
        {
          v256 = 0;
          v4 = 0;
          v257 = a1[16];
          if (v254 == -1)
          {
            goto LABEL_395;
          }
        }

        {
        }

        if (!(*(**(v255 + 48) + 32))(*(v255 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          v347 = v4 >= v254;
          v4 -= v254;
          if (!v347)
          {
            goto LABEL_366;
          }

          v256 += 32 * v254;
LABEL_395:
          if (v252 != 0xFFFF)
          {
            goto LABEL_396;
          }

          goto LABEL_432;
        }

        if (!*(v255 + 47) || (v258 = mlir::Operation::getInherentAttr(v255, "operandSegmentSizes", 19), (v259 & 1) == 0))
        {
          v258 = mlir::DictionaryAttr::get(v255 + 56, "operandSegmentSizes", 0x13uLL);
        }

        if (!v258 || ((v260 = v258, !mlir::detail::DenseArrayAttrImpl<int>::classof(v258)) ? (v261 = 0) : (v261 = v260), (__src[0] = v261) == 0 || (mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(__src), v262 <= v254)))
        {
LABEL_366:
          v348 = 0;
          goto LABEL_435;
        }

        v263 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(__src);
        v264 = (v263 + 4 * v254);
        if (!v254)
        {
          v4 = *v264;
          if (v252 != 0xFFFF)
          {
            goto LABEL_396;
          }

          goto LABEL_432;
        }

        v265 = (v254 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        if (v265 < 7)
        {
          v266 = 0;
          v267 = v263;
          do
          {
LABEL_430:
            v374 = *v267++;
            v266 += v374;
          }

          while (v267 != v264);
          goto LABEL_431;
        }

        v368 = v265 + 1;
        v369 = (v265 + 1) & 0x7FFFFFFFFFFFFFF8;
        v267 = (v263 + 4 * v369);
        v370 = (v263 + 16);
        v371 = 0uLL;
        v372 = v369;
        v373 = 0uLL;
        do
        {
          v371 = vaddq_s32(v370[-1], v371);
          v373 = vaddq_s32(*v370, v373);
          v370 += 2;
          v372 -= 8;
        }

        while (v372);
        v266 = vaddvq_s32(vaddq_s32(v373, v371));
        if (v368 != v369)
        {
          goto LABEL_430;
        }

LABEL_431:
        v4 = *v264;
        v256 += 32 * v266;
        if (v252 != 0xFFFF)
        {
LABEL_396:
          mlir::ValueRange::ValueRange(__src, v256, v4);
          v348 = &v257[8 * v252];
          *v348 = *__src;
          goto LABEL_435;
        }

LABEL_432:
        if (v4 == 1)
        {
          v348 = *(v256 + 24);
        }

        else
        {
          v348 = 0;
        }

LABEL_435:
        v375 = *(*a1)++;
        *&a1[9][4 * v375] = v348;
        continue;
      case 29:
      case 30:
      case 31:
      case 32:
        v18 = v9 - 29;
        v21 = v8[2];
        v19 = v8 + 2;
        v20 = v21;
        *a1 = v19;
        v22 = a1[9];
        v23 = *&v22[4 * *(v19 - 1)];
        *a1 = v19 + 1;
        v24 = v23 - 16 * (v9 - 28);
        if (*(v23 + 36) <= v18)
        {
          v24 = 0;
        }

        *&v22[4 * v20] = v24;
        continue;
      case 33:
        v270 = v8[4];
        v268 = v8 + 4;
        v269 = v270;
        v271 = *(v268 - 3);
        *a1 = v268;
        v272 = a1[9];
        v273 = *&v272[4 * *(v268 - 1)];
        *a1 = v268 + 1;
        if (*(v273 + 36) <= v271)
        {
          *&v272[4 * v269] = 0;
        }

        else if (v271 > 5)
        {
          *&v272[4 * v269] = v273 - 24 * (v271 - 5) - 96;
        }

        else
        {
          *&v272[4 * v269] = v273 - 16 * v271 - 16;
        }

        continue;
      case 34:
        v78 = v8[4];
        v76 = v8 + 4;
        v77 = v78;
        v79 = *(v76 - 3);
        *a1 = v76;
        v80 = *&a1[9][4 * *(v76 - 1)];
        *a1 = v76 + 1;
        v4 = *(v80 + 36);
        v81 = a1[16];
        if (v4)
        {
          NextResultAtOffset = v80 - 16;
        }

        else
        {
          NextResultAtOffset = 0;
        }

        if (v79 == -1)
        {
          goto LABEL_359;
        }

        {
        }

        if ((*(**(v80 + 48) + 32))(*(v80 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedResultSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedResultSegments>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          if (!*(v80 + 47) || (v83 = mlir::Operation::getInherentAttr(v80, "resultSegmentSizes", 18), (v84 & 1) == 0))
          {
            v83 = mlir::DictionaryAttr::get(v80 + 56, "resultSegmentSizes", 0x12uLL);
          }

          if (!v83)
          {
            goto LABEL_425;
          }

          v4 = v83;
          v85 = mlir::detail::DenseArrayAttrImpl<int>::classof(v83) ? v4 : 0;
          __src[0] = v85;
          if (!v85)
          {
            goto LABEL_425;
          }

          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(__src);
          if (v86 <= v79)
          {
            goto LABEL_425;
          }

          v87 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(__src);
          v88 = (v87 + 4 * v79);
          if (v79)
          {
            v89 = (v79 - 1) & 0x3FFFFFFFFFFFFFFFLL;
            if (v89 <= 6)
            {
              v90 = 0;
              v91 = v87;
              goto LABEL_419;
            }

            v360 = v89 + 1;
            v361 = (v89 + 1) & 0x7FFFFFFFFFFFFFF8;
            v91 = (v87 + 4 * v361);
            v362 = (v87 + 16);
            v363 = 0uLL;
            v364 = v361;
            v365 = 0uLL;
            do
            {
              v363 = vaddq_s32(v362[-1], v363);
              v365 = vaddq_s32(*v362, v365);
              v362 += 2;
              v364 -= 8;
            }

            while (v364);
            v90 = vaddvq_s32(vaddq_s32(v365, v363));
            if (v360 != v361)
            {
              do
              {
LABEL_419:
                v366 = *v91++;
                v90 += v366;
              }

              while (v91 != v88);
            }

            v359 = *v88;
            if (v90)
            {
              NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v90);
            }
          }

          else
          {
            v359 = *v88;
          }

          v4 = v359;
          if (v77 != 0xFFFF)
          {
            goto LABEL_360;
          }

          goto LABEL_423;
        }

        if (v4 < v79)
        {
          goto LABEL_425;
        }

        if (v79)
        {
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v79);
        }

        v4 -= v79;
LABEL_359:
        if (v77 != 0xFFFF)
        {
LABEL_360:
          mlir::ValueRange::ValueRange(__src, NextResultAtOffset, v4);
          v346 = &v81[8 * v77];
          *v346 = *__src;
          goto LABEL_426;
        }

LABEL_423:
        if (v4 == 1)
        {
          v346 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
          goto LABEL_426;
        }

LABEL_425:
        v346 = 0;
LABEL_426:
        v367 = *(*a1)++;
        *&a1[9][4 * v367] = v346;
        continue;
      case 35:
        v63 = v8[1];
        *a1 = v8 + 3;
        v4 = &a1[11][8 * v8[2]];
        *&a1[9][4 * v63] = v4;
        if (*v4)
        {
          MEMORY[0x1AC55A040](*v4, 0x20C8093837F09);
        }

        *v4 = 0;
        *(v4 + 8) = 0;
        v64 = *a1;
        v65 = **a1;
        *a1 += 2;
        v66 = *&a1[9][4 * v64[1]];
        if (v65 == 4)
        {
          if (v66)
          {
            v67 = *v66;
            if (*v66)
            {
              v68 = 0;
              v69 = -1;
              do
              {
                v67 = *v67;
                ++v69;
                v68 += 8;
              }

              while (v67);
              operator new[]();
            }

            operator new[]();
          }
        }

        else if (v66)
        {
          __src[0] = &v383;
          __src[1] = 0x600000000;
          v399[0] = *v66;
          v399[1] = 0;
          v309 = *(v66 + 8);
          if (!v309)
          {
LABEL_398:
            operator new[]();
          }

          v310 = 0;
          while (2)
          {
            v311 = mlir::ValueRange::dereference_iterator(v399, v310);
            v312 = *v311;
            if (*v311)
            {
              v313 = 0;
              v314 = *v311;
              do
              {
                ++v313;
                v314 = *v314;
              }

              while (v314);
              v315 = __src[1];
              v316 = v313 + LODWORD(__src[1]);
              if (v316 > HIDWORD(__src[1]))
              {
LABEL_278:
                llvm::SmallVectorBase<unsigned int>::grow_pod(__src, &v383, v316, 8);
                v315 = __src[1];
              }
            }

            else
            {
              LODWORD(v313) = 0;
              v315 = __src[1];
              v316 = LODWORD(__src[1]);
              if (LODWORD(__src[1]) > HIDWORD(__src[1]))
              {
                goto LABEL_278;
              }
            }

            if (v312)
            {
              v317 = __src[0] + 8 * v315;
              do
              {
                *v317++ = v312[2];
                v312 = *v312;
              }

              while (v312);
            }

            LODWORD(__src[1]) = v315 + v313;
            v310 = v399[1] + 1;
            v399[1] = v310;
            if (v310 == v309)
            {
              goto LABEL_398;
            }

            continue;
          }
        }

        continue;
      case 36:
        v232 = v8[1];
        *a1 = v8 + 3;
        v233 = a1[9];
        v234 = *&v233[4 * v8[2]];
        if (v234)
        {
          v234 = *(v234 + 8) & 0xFFFFFFFFFFFFFFF8;
        }

        *&v233[4 * v232] = v234;
        continue;
      case 37:
        v226 = v8[1];
        v4 = v8[2];
        *a1 = v8 + 4;
        v227 = a1[9];
        v228 = *&v227[4 * v8[3]];
        if (v228)
        {
          mlir::ValueRange::getTypes(__src, v228);
          v229 = __src[0];
          v230 = __src[1];
          v231 = v384;
          v399[0] = __src[0];
          v399[1] = __src[1];
          if (__src[1])
          {
            v229 = mlir::ValueRange::offset_base(v399, __src[1]);
            v230 = v399[1];
          }

          mlir::TypeRange::TypeRange(v399, v229, v231 - v230);
          *&a1[13][8 * v4] = *v399;
          *&a1[9][4 * v226] = &a1[13][8 * v4];
        }

        else
        {
          *&v227[4 * v226] = 0;
        }

        continue;
      case 38:
        v246 = v8 + 2;
        *a1 = v8 + 2;
        v247 = v8[1];
        v248 = a1[10];
        v249 = 21;
        if (v248 > v247)
        {
          v249 = 9;
          v248 = 0;
        }

        v250 = *&a1[v249][4 * (v247 - v248)] == 0;
        *a1 = &v246[2 * v250];
        v7 = *&v246[2 * v250];
        goto LABEL_4;
      case 39:
        LOWORD(v401) = a1[25][v8[1]];
        LODWORD(v4) = v401;
        *a1 = v8 + 2;
        if (v4 != 0xFFFF)
        {
          *a1 = v8 + 5;
          v274 = v8[4];
          __src[0] = &v383;
          __src[1] = 0x400000000;
          if (v274 >= 5)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(__src, &v383, v274, 8);
            LODWORD(v275) = __src[1];
            goto LABEL_436;
          }

          if (v274)
          {
            LODWORD(v275) = 0;
            do
            {
LABEL_436:
              v376 = *(*a1)++;
              v377 = *(*&a1[9][4 * v376] + 24);
              if (v275 >= HIDWORD(__src[1]))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(__src, &v383, v275 + 1, 8);
                LODWORD(v275) = __src[1];
              }

              *(__src[0] + v275) = v377;
              v275 = ++LODWORD(__src[1]);
              LODWORD(v274) = v274 - 1;
            }

            while (v274);
            v356 = __src[0];
          }

          else
          {
            v275 = 0;
            v356 = &v383;
          }

          mlir::Builder::getFusedLoc((a2 + 8), v356, v275, 0);
        }

        *a1 = &a1[23][*(v8 + 1)];
        break;
      case 40:
        *a1 = v8 + 2;
        __src[0] = &v383;
        __src[1] = 0x1000000000;
        mlir::ValueRange::ValueRange(v399, __src[0], LODWORD(__src[1]));
        (**a2)();
        v54 = __src[0];
        if (__src[0] != &v383)
        {
          goto LABEL_393;
        }

        continue;
      case 41:
        *a1 = v8 + 2;
        v25 = v8[1];
        v26 = a1[10];
        v27 = 21;
        if (v26 <= v25)
        {
          v28 = 21;
        }

        else
        {
          v28 = 9;
        }

        if (v26 <= v25)
        {
          v29 = a1[10];
        }

        else
        {
          v29 = 0;
        }

        v4 = *&a1[v28][4 * (v25 - v29)];
        *a1 = v8 + 3;
        v30 = v8[2];
        if (v26 > v30)
        {
          v27 = 9;
          v26 = 0;
        }

        __src[0] = *&a1[v27][4 * (v30 - v26)];
        v31 = mlir::ArrayAttr::getValue(__src);
        v32 = mlir::ArrayAttr::getValue(__src);
        v34 = v32 + 8 * v33;
        if (v34 == v31)
        {
          goto LABEL_2;
        }

        v35 = -v31;
        while (*v31 != v4)
        {
          v31 += 8;
          v35 -= 8;
          if (v31 == v34)
          {
            goto LABEL_2;
          }
        }

        v328 = (*a1 + ((-v35 - mlir::ArrayAttr::getValue(__src)) >> 1));
        goto LABEL_389;
      case 42:
        *a1 = v8 + 2;
        v292 = a1[10];
        v293 = *&a1[9][4 * v8[1]];
        *a1 = v8 + 3;
        v294 = v8[2];
        v295 = 21;
        if (v292 > v294)
        {
          v295 = 9;
          v292 = 0;
        }

        __src[0] = *&a1[v295][4 * (v294 - v292)];
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

        if ((*(v293 + 46) & 0x80) != 0)
        {
          v282 = *(v293 + 68);
          if (!isValidIntOrFloat)
          {
            goto LABEL_2;
          }
        }

        else
        {
          v282 = 0;
          if (!isValidIntOrFloat)
          {
            goto LABEL_2;
          }
        }

        if (v4)
        {
          goto LABEL_322;
        }

        v327 = 0;
        do
        {
          if (RawStringData[v327 / 2] == v282)
          {
            goto LABEL_324;
          }

          v327 += 2;
          --isValidIntOrFloat;
        }

        while (isValidIntOrFloat);
        goto LABEL_2;
      case 43:
        v43 = v8[2];
        *a1 = v8 + 2;
        v44 = *(*&a1[9][4 * v8[1]] + 48);
        v45 = v8 + 3;
        *a1 = v8 + 3;
        if (!v43)
        {
          goto LABEL_38;
        }

        v46 = 0;
        v47 = a1[10];
        v48 = 5;
        do
        {
          *a1 = &v8[v46 + 4];
          v49 = v8[v46 + 3];
          v50 = 21;
          if (v47 <= v49)
          {
            v51 = v47;
          }

          else
          {
            v50 = 9;
            v51 = 0;
          }

          if (*&a1[v50][4 * (v49 - v51)] == v44)
          {
            v345 = &v8[v43 + v48];
            *a1 = v345;
            v7 = *v345;
            goto LABEL_4;
          }

          ++v46;
          v48 += 2;
        }

        while (v43 != v46);
        v45 = &v8[v46 + 3];
LABEL_38:
        v7 = *v45;
        goto LABEL_4;
      case 44:
        *a1 = v8 + 2;
        v276 = a1[10];
        v277 = *&a1[9][4 * v8[1]];
        *a1 = v8 + 3;
        v278 = v8[2];
        v279 = 21;
        if (v276 > v278)
        {
          v279 = 9;
          v276 = 0;
        }

        __src[0] = *&a1[v279][4 * (v278 - v276)];
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

          v282 = *(v277 + 36);
          if ((v4 & 1) == 0)
          {
LABEL_314:
            v327 = 0;
            while (RawStringData[v327 / 2] != v282)
            {
              v327 += 2;
              if (!--NumElements)
              {
                goto LABEL_2;
              }
            }

            goto LABEL_324;
          }
        }

        else
        {
          RawStringData = 0;
          v282 = *(v277 + 36);
          if ((v4 & 1) == 0)
          {
            goto LABEL_314;
          }
        }

LABEL_322:
        if (*RawStringData != v282)
        {
          goto LABEL_2;
        }

        v327 = 0;
LABEL_324:
        v328 = &(*a1)[v327];
LABEL_389:
        v6 = v328 + 2;
        *a1 = v6;
        goto LABEL_3;
      case 45:
        *a1 = v8 + 2;
        v235 = v8[1];
        v236 = a1[10];
        v237 = 21;
        if (v236 <= v235)
        {
          v238 = 21;
        }

        else
        {
          v238 = 9;
        }

        if (v236 <= v235)
        {
          v239 = a1[10];
        }

        else
        {
          v239 = 0;
        }

        v4 = *&a1[v238][4 * (v235 - v239)];
        *a1 = v8 + 3;
        v240 = v8[2];
        if (v236 > v240)
        {
          v237 = 9;
          v236 = 0;
        }

        __src[0] = *&a1[v237][4 * (v240 - v236)];
        v241 = mlir::ArrayAttr::getValue(__src);
        v242 = mlir::ArrayAttr::getValue(__src);
        v244 = (v242 + 8 * v243);
        if (v241 == v244)
        {
          goto LABEL_2;
        }

        v245 = 0;
        while (1)
        {
          __src[0] = *v241;
          if (v4 == mlir::AffineMapAttr::getValue(__src))
          {
            break;
          }

          ++v241;
          v245 += 8;
          if (v241 == v244)
          {
LABEL_2:
            v6 = *a1;
            goto LABEL_3;
          }
        }

        v328 = (*a1 + (v245 >> 1));
        goto LABEL_389;
      case 46:
        *a1 = v8 + 2;
        v283 = a1[10];
        v284 = *&a1[9][4 * v8[1]];
        *a1 = v8 + 3;
        v285 = v8[2];
        v286 = 21;
        if (v283 > v285)
        {
          v286 = 9;
          v283 = 0;
        }

        __src[0] = *&a1[v286][4 * (v285 - v283)];
        v287 = mlir::ArrayAttr::getValue(__src);
        v288 = mlir::ArrayAttr::getValue(__src);
        if (!v284)
        {
          v291 = *a1;
          goto LABEL_335;
        }

        v290 = (v288 + 8 * v289);
        v379 = v287;
        if (v287 == v290)
        {
LABEL_248:
          v291 = *a1;
          goto LABEL_335;
        }

        while (2)
        {
          v399[0] = *v287;
          v4 = mlir::ArrayAttr::getValue(v399);
          v349 = mlir::ArrayAttr::getValue(v399);
          v351 = v349 + 8 * v350;
          v352 = v284[1];
          if (v352 != (v351 - v4) >> 3)
          {
            goto LABEL_371;
          }

          v353 = 0;
          if (v352)
          {
            v354 = *v284;
            while (v4 != v351)
            {
              v355 = mlir::TypeRange::dereference_iterator(v354, v353);
              __src[0] = *v4;
              if (v355 != mlir::AffineMapAttr::getValue(__src))
              {
                goto LABEL_371;
              }

              ++v353;
              v4 += 8;
              if (v352 == v353)
              {
                goto LABEL_370;
              }
            }

            v4 = v351;
          }

          if (v353 != v352)
          {
            goto LABEL_371;
          }

LABEL_370:
          if (v4 != v351)
          {
LABEL_371:
            if (++v287 == v290)
            {
              goto LABEL_248;
            }

            continue;
          }

          break;
        }

        v291 = (*a1 + ((v287 - v379) >> 1) + 4);
        *a1 = v291;
LABEL_335:
        *a1 = &a1[23][*v291];
        continue;
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

uint64_t *llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(llvm::StringMapImpl *a1, void *a2, size_t a3, uint64_t a4, void *a5)
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

void anonymous namespace::Generator::generate(uint64_t result, uint64_t a2, uint64_t a3, double a4, int32x4_t a5)
{
  v5 = a3;
  v534 = *MEMORY[0x1E69E9840];
  v7 = *(*(a2 + 48) + 16);
  if (a2 && v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyConstraintOp,void>::id)
  {
    v520[0] = a2;
    Name = mlir::pdl::ApplyNativeConstraintOp::getName(v520);
    v10 = v9;
    v13 = llvm::StringMapImpl::hash(Name, v9, v11, v12);
    v14 = *(*llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<>((result + 72), Name, v10, v13) + 8);
    v15 = *(v5 + 24);
    v16 = v15[1];
    if ((v16 + 1) > v15[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v15 + 3, v16 + 1, 2);
      v16 = v15[1];
    }

    *(*v15 + 2 * v16) = 0;
    ++v15[1];
    v17 = *(v5 + 24);
    v18 = v17[1];
    if ((v18 + 1) > v17[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v17 + 3, v18 + 1, 2);
      v18 = v17[1];
    }

    *(*v17 + 2 * v18) = v14;
    ++v17[1];
    ODSOperandIndexAndLength = mlir::pdl::ApplyNativeConstraintOp::getODSOperandIndexAndLength(v520, 0);
    if ((*(v520[0] + 46) & 0x80) != 0)
    {
      v20 = *(v520[0] + 9);
    }

    else
    {
      v20 = 0;
    }

    v21 = ODSOperandIndexAndLength;
    v22 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v23 = v22 - ODSOperandIndexAndLength;
    v24 = *(v5 + 24);
    v25 = v24[1];
    if ((v25 + 1) > v24[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v24 + 3, v25 + 1, 2);
      v25 = v24[1];
    }

    *(*v24 + 2 * v25) = v23;
    ++v24[1];
    if (v22 != v21)
    {
      v26 = (v20 + 32 * v21 + 24);
      do
      {
        v27 = *v26;
        v26 += 4;
        --v23;
      }

      while (v23);
    }

    IsNegated = mlir::pdl::ApplyNativeConstraintOp::getIsNegated(v520);
    v29 = *(v5 + 24);
    v30 = v29[1];
    if ((v30 + 1) > v29[2])
    {
      v269 = IsNegated;
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v29 + 3, v30 + 1, 2);
      IsNegated = v269;
      v30 = v29[1];
    }

    *(*v29 + 2 * v30) = IsNegated;
    ++v29[1];
    ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(v520, 0);
    v32 = ODSResultIndexAndLength;
    if (*(v520[0] + 9))
    {
      NextResultAtOffset = v520[0] - 16;
    }

    else
    {
      NextResultAtOffset = 0;
    }

    v34 = result;
    v35 = ODSResultIndexAndLength;
    if (ODSResultIndexAndLength)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
    }

    v36 = (HIDWORD(v32) + v32);
    v37 = v36 - v32;
    v38 = *(v5 + 24);
    v39 = v38[1];
    if ((v39 + 1) > v38[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v38 + 3, v39 + 1, 2);
      v39 = v38[1];
    }

    *(*v38 + 2 * v39) = v37;
    ++v38[1];
    if (v36 == v35)
    {
LABEL_24:
      mlir::SuccessorRange::SuccessorRange(&v524, v520[0]);
      v41 = *(&v524 + 1);
      v40 = v524;
LABEL_25:
      v42 = v5;
LABEL_184:
      return;
    }

    v59 = 0;
    while (1)
    {
      v60 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v59);
      v61 = v60;
      v62 = *(*(*(v60 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v62 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
      {
        v63 = 0;
        v64 = *(a3 + 24);
        v65 = v64[1];
        v66 = v65 + 1;
        if ((v65 + 1) <= v64[2])
        {
          goto LABEL_70;
        }
      }

      else if (v62 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
      {
        v63 = 1;
        v64 = *(a3 + 24);
        v65 = v64[1];
        v66 = v65 + 1;
        if ((v65 + 1) <= v64[2])
        {
          goto LABEL_70;
        }
      }

      else if (v62 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        *&v524 = *(v60 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (*(*mlir::AffineMapAttr::getValue(&v524) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
        {
          v63 = 3;
        }

        else
        {
          v63 = 5;
        }

        v64 = *(a3 + 24);
        v65 = v64[1];
        v66 = v65 + 1;
        if ((v65 + 1) <= v64[2])
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v62 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
        {
          v63 = 2;
        }

        else
        {
          v63 = 4 * (v62 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
        }

        v64 = *(a3 + 24);
        v65 = v64[1];
        v66 = v65 + 1;
        if ((v65 + 1) <= v64[2])
        {
          goto LABEL_70;
        }
      }

      llvm::SmallVectorBase<unsigned long long>::grow_pod(v64, v64 + 3, v66, 2);
      v65 = v64[1];
LABEL_70:
      *(*v64 + 2 * v65) = v63;
      ++v64[1];
      if (*(*(*(v61 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        *&v524 = v61;
        v67 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v34 + 24, &v524);
        v68 = *(a3 + 24);
        v69 = v68[1];
        if ((v69 + 1) > v68[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v68 + 3, v69 + 1, 2);
          v69 = v68[1];
        }

        *(*v68 + 2 * v69) = v67;
        ++v68[1];
      }

      v5 = a3;
      v71 = *(a3 + 24);
      v70 = *(a3 + 32);
      *&v524 = v61;
      v72 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v70, &v524);
      v73 = v71[1];
      if ((v73 + 1) > v71[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(v71, v71 + 3, v73 + 1, 2);
        v73 = v71[1];
      }

      *(*v71 + 2 * v73) = v72;
      ++v71[1];
      if (v37 == ++v59)
      {
        goto LABEL_24;
      }
    }
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id)
  {
    v520[0] = a2;
    v74 = mlir::pdl_interp::ApplyRewriteOp::getName(v520);
    v76 = v75;
    v79 = llvm::StringMapImpl::hash(v74, v75, v77, v78);
    v80 = *(*llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<>((result + 48), v74, v76, v79) + 8);
    v81 = *(v5 + 24);
    v82 = v81[1];
    if ((v82 + 1) > v81[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v81 + 3, v82 + 1, 2);
      v82 = v81[1];
    }

    *(*v81 + 2 * v82) = 1;
    ++v81[1];
    v83 = *(v5 + 24);
    v84 = v83[1];
    if ((v84 + 1) > v83[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v83 + 3, v84 + 1, 2);
      v84 = v83[1];
    }

    *(*v83 + 2 * v84) = v80;
    ++v83[1];
    v85 = mlir::pdl::ApplyNativeConstraintOp::getODSOperandIndexAndLength(v520, 0);
    if ((*(v520[0] + 46) & 0x80) != 0)
    {
      v86 = *(v520[0] + 9);
    }

    else
    {
      v86 = 0;
    }

    v87 = v85;
    v88 = (HIDWORD(v85) + v85);
    v89 = v88 - v85;
    v90 = *(v5 + 24);
    v91 = v90[1];
    if ((v91 + 1) > v90[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v90 + 3, v91 + 1, 2);
      v91 = v90[1];
    }

    *(*v90 + 2 * v91) = v89;
    ++v90[1];
    if (v88 != v87)
    {
      v92 = (v86 + 32 * v87 + 24);
      do
      {
        v93 = *v92;
        v92 += 4;
        --v89;
      }

      while (v89);
    }

    v94 = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(v520, 0);
    v95 = v94;
    if (*(v520[0] + 9))
    {
      v96 = v520[0] - 16;
    }

    else
    {
      v96 = 0;
    }

    v97 = result;
    v98 = v94;
    if (v94)
    {
      v96 = mlir::detail::OpResultImpl::getNextResultAtOffset(v96, v94);
    }

    v99 = (HIDWORD(v95) + v95);
    v100 = v99 - v95;
    v101 = *(v5 + 24);
    v102 = v101[1];
    if ((v102 + 1) > v101[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v101 + 3, v102 + 1, 2);
      v102 = v101[1];
    }

    *(*v101 + 2 * v102) = v100;
    ++v101[1];
    if (v99 == v98)
    {
      return;
    }

    v103 = 0;
    while (1)
    {
      v104 = mlir::detail::OpResultImpl::getNextResultAtOffset(v96, v103);
      v105 = v104;
      v106 = *(*(*(v104 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v106 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
      {
        v107 = 0;
        v108 = *(a3 + 24);
        v109 = v108[1];
        v110 = v109 + 1;
        if ((v109 + 1) <= v108[2])
        {
          goto LABEL_114;
        }
      }

      else if (v106 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
      {
        v107 = 1;
        v108 = *(a3 + 24);
        v109 = v108[1];
        v110 = v109 + 1;
        if ((v109 + 1) <= v108[2])
        {
          goto LABEL_114;
        }
      }

      else if (v106 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        *&v524 = *(v104 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (*(*mlir::AffineMapAttr::getValue(&v524) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
        {
          v107 = 3;
        }

        else
        {
          v107 = 5;
        }

        v108 = *(a3 + 24);
        v109 = v108[1];
        v110 = v109 + 1;
        if ((v109 + 1) <= v108[2])
        {
          goto LABEL_114;
        }
      }

      else
      {
        if (v106 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
        {
          v107 = 2;
        }

        else
        {
          v107 = 4 * (v106 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
        }

        v108 = *(a3 + 24);
        v109 = v108[1];
        v110 = v109 + 1;
        if ((v109 + 1) <= v108[2])
        {
          goto LABEL_114;
        }
      }

      llvm::SmallVectorBase<unsigned long long>::grow_pod(v108, v108 + 3, v110, 2);
      v109 = v108[1];
LABEL_114:
      *(*v108 + 2 * v109) = v107;
      ++v108[1];
      if (*(*(*(v105 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        *&v524 = v105;
        v111 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v97 + 24, &v524);
        v112 = *(a3 + 24);
        v113 = v112[1];
        if ((v113 + 1) > v112[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v112 + 3, v113 + 1, 2);
          v113 = v112[1];
        }

        *(*v112 + 2 * v113) = v111;
        ++v112[1];
      }

      v115 = *(a3 + 24);
      v114 = *(a3 + 32);
      *&v524 = v105;
      v116 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v114, &v524);
      v117 = v115[1];
      if ((v117 + 1) > v115[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(v115, v115 + 3, v117 + 1, 2);
        v117 = v115[1];
      }

      *(*v115 + 2 * v117) = v116;
      ++v115[1];
      if (v100 == ++v103)
      {
        return;
      }
    }
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::AreEqualOp,void>::id)
  {
    v118 = *(a2 + 72);
    v119 = *(v118 + 24);
    if (*(*(*(v119 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v146 = *(a3 + 24);
      v147 = v146[1];
      if ((v147 + 1) > v146[2])
      {
        v324 = a2;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v146 + 3, v147 + 1, 2);
        a2 = v324;
        v147 = v146[1];
      }

      *(*v146 + 2 * v147) = 3;
      ++v146[1];
      v148 = *(*(*(v119 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v148 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
      {
        v149 = 0;
      }

      else if (v148 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
      {
        v149 = 1;
      }

      else if (v148 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        *&v524 = *(v119 + 8) & 0xFFFFFFFFFFFFFFF8;
        v170 = a2;
        Value = mlir::AffineMapAttr::getValue(&v524);
        a2 = v170;
        if (*(*Value + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
        {
          v149 = 3;
        }

        else
        {
          v149 = 5;
        }
      }

      else if (v148 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
      {
        v149 = 2;
      }

      else
      {
        v149 = 4 * (v148 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
      }

      v174 = *(v5 + 24);
      v175 = v174[1];
      if ((v175 + 1) > v174[2])
      {
        v325 = a2;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v174 + 3, v175 + 1, 2);
        a2 = v325;
        v175 = v174[1];
      }

      *(*v174 + 2 * v175) = v149;
      ++v174[1];
      v176 = *(a2 + 72);
      v177 = *(v176 + 24);
      v178 = *(v176 + 56);
      mlir::SuccessorRange::SuccessorRange(&v524, a2);
      v122 = *(&v524 + 1);
      v121 = v524;
      v180 = *(v5 + 24);
      v179 = *(v5 + 32);
      *&v524 = v177;
      v181 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v179, &v524);
      v182 = v180[1];
      if ((v182 + 1) > v180[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(v180, v180 + 3, v182 + 1, 2);
        v182 = v180[1];
      }

      *(*v180 + 2 * v182) = v181;
      ++v180[1];
      v130 = *(v5 + 24);
      v129 = *(v5 + 32);
      *&v524 = v178;
    }

    else
    {
      v120 = *(v118 + 56);
      mlir::SuccessorRange::SuccessorRange(&v524, a2);
      v122 = *(&v524 + 1);
      v121 = v524;
      v123 = *(v5 + 24);
      v124 = v123[1];
      if ((v124 + 1) > v123[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v123 + 3, v124 + 1, 2);
        v124 = v123[1];
      }

      *(*v123 + 2 * v124) = 2;
      ++v123[1];
      v126 = *(v5 + 24);
      v125 = *(v5 + 32);
      *&v524 = v119;
      v127 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v125, &v524);
      v128 = v126[1];
      if ((v128 + 1) > v126[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(v126, v126 + 3, v128 + 1, 2);
        v128 = v126[1];
      }

      *(*v126 + 2 * v128) = v127;
      ++v126[1];
      v130 = *(v5 + 24);
      v129 = *(v5 + 32);
      *&v524 = v120;
    }

    v168 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v129, &v524);
    v169 = v130[1];
    if ((v169 + 1) > v130[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v130, v130 + 3, v169 + 1, 2);
      v169 = v130[1];
      v5 = a3;
    }

    goto LABEL_181;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::BranchOp,void>::id)
  {
    mlir::SuccessorRange::SuccessorRange(&v524, a2);
    v41 = *(&v524 + 1);
    v40 = v524;
    v131 = *(v5 + 24);
    v132 = v131[1];
    if ((v132 + 1) > v131[2])
    {
      v309 = v524;
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v131 + 3, v132 + 1, 2);
      v41 = *(&v309 + 1);
      v40 = v309;
      v132 = v131[1];
    }

    *(*v131 + 2 * v132) = 4;
    ++v131[1];
    goto LABEL_25;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckAttributeOp,void>::id)
  {
    Rewriter = a2;
    v133 = *(*(a2 + 72) + 24);
    AttributeValueNames = mlir::pdl::OperationOp::getAttributeValueNames(&Rewriter);
LABEL_139:
    v135 = AttributeValueNames;
    mlir::SuccessorRange::SuccessorRange(&v524, Rewriter);
    v122 = *(&v524 + 1);
    v121 = v524;
    v136 = *(v5 + 24);
    v137 = v136[1];
    if ((v137 + 1) > v136[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v136 + 3, v137 + 1, 2);
      v137 = v136[1];
    }

    *(*v136 + 2 * v137) = 2;
    ++v136[1];
    v139 = *(v5 + 24);
    v138 = *(v5 + 32);
    *&v524 = v133;
    v140 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v138, &v524);
    v141 = v139[1];
    if ((v141 + 1) > v139[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v139, v139 + 3, v141 + 1, 2);
      v141 = v139[1];
    }

    *(*v139 + 2 * v141) = v140;
    ++v139[1];
    v142 = *(v5 + 24);
    v143 = *(v5 + 32);
    v520[0] = v135;
    InputAttributeNames = (**(v143 + 216) + ((*(*(v143 + 184) + 8) - **(v143 + 184)) >> 3));
    llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>((v143 + 120), v520, &InputAttributeNames, &v524);
    if (v525 == 1)
    {
      std::vector<void const*>::push_back[abi:nn200100](*(v143 + 184), v520);
    }

    v144 = *(v524 + 8);
    v145 = v142[1];
    if ((v145 + 1) > v142[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v142, v142 + 3, v145 + 1, 2);
      v145 = v142[1];
    }

    *(*v142 + 2 * v145) = v144;
    ++v142[1];
    goto LABEL_182;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperandCountOp,void>::id)
  {
    v520[0] = a2;
    v150 = *(*(a2 + 72) + 24);
    Count = mlir::pdl_interp::CheckOperandCountOp::getCount(v520);
    InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(v520);
    mlir::SuccessorRange::SuccessorRange(&v524, v520[0]);
    v154 = *(&v524 + 1);
    v153 = v524;
    v155 = v5;
    v156 = 5;
LABEL_166:
    return;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperationNameOp,void>::id)
  {
    Rewriter = a2;
    v157 = *(*(a2 + 72) + 24);
    v158 = mlir::pdl_interp::ApplyRewriteOp::getName(&Rewriter);
    mlir::OperationName::OperationName(&v522, v158, v159, *(result + 152));
    mlir::SuccessorRange::SuccessorRange(&v524, Rewriter);
    v122 = *(&v524 + 1);
    v121 = v524;
    v160 = v522;
    v161 = *(v5 + 24);
    v162 = v161[1];
    if ((v162 + 1) > v161[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v161 + 3, v162 + 1, 2);
      v162 = v161[1];
    }

    *(*v161 + 2 * v162) = 6;
    ++v161[1];
    v164 = *(v5 + 24);
    v163 = *(v5 + 32);
    *&v524 = v157;
    v165 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v163, &v524);
    v166 = v164[1];
    if ((v166 + 1) > v164[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v164, v164 + 3, v166 + 1, 2);
      v166 = v164[1];
    }

    *(*v164 + 2 * v166) = v165;
    ++v164[1];
    v130 = *(v5 + 24);
    v167 = *(v5 + 32);
    v520[0] = v160;
    InputAttributeNames = (**(v167 + 216) + ((*(*(v167 + 184) + 8) - **(v167 + 184)) >> 3));
    llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>((v167 + 120), v520, &InputAttributeNames, &v524);
    if (v525 == 1)
    {
      std::vector<void const*>::push_back[abi:nn200100](*(v167 + 184), v520);
    }

    v168 = *(v524 + 8);
    v169 = v130[1];
    if ((v169 + 1) > v130[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v130, v130 + 3, v169 + 1, 2);
      v169 = v130[1];
    }

LABEL_181:
    *(*v130 + 2 * v169) = v168;
    ++v130[1];
LABEL_182:
    v42 = v5;
LABEL_183:
    v40 = v121;
    v41 = v122;
    goto LABEL_184;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckResultCountOp,void>::id)
  {
    v520[0] = a2;
    v150 = *(*(a2 + 72) + 24);
    Count = mlir::pdl_interp::CheckOperandCountOp::getCount(v520);
    InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(v520);
    mlir::SuccessorRange::SuccessorRange(&v524, v520[0]);
    v154 = *(&v524 + 1);
    v153 = v524;
    v155 = v5;
    v156 = 7;
    goto LABEL_166;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypeOp,void>::id)
  {
    Rewriter = a2;
    v133 = *(*(a2 + 72) + 24);
    AttributeValueNames = mlir::pdl_interp::CheckTypeOp::getType(&Rewriter);
    goto LABEL_139;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypesOp,void>::id)
  {
    v520[0] = a2;
    v172 = *(*(a2 + 72) + 24);
    v173 = mlir::pdl::OperationOp::getAttributeValueNames(v520);
    mlir::SuccessorRange::SuccessorRange(&v524, v520[0]);
    return;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ContinueOp,void>::id)
  {
    v183 = *(result + 144);
    v184 = *(a3 + 24);
    v185 = v184[1];
    if ((v185 + 1) > v184[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v184 + 3, v185 + 1, 2);
      v185 = v184[1];
    }

    *(*v184 + 2 * v185) = 9;
    ++v184[1];
    v186 = *(v5 + 24);
    v187 = v186[1];
    if (v187 + 1 > v186[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v186 + 3, v187 + 1, 2);
      v187 = v186[1];
    }

    *(*v186 + 2 * v187) = v183 - 1;
    goto LABEL_239;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id)
  {
    Rewriter = a2;
    Type = mlir::pdl::OperationOp::getAttributeValueNames(&Rewriter);
LABEL_192:
    v520[0] = Type;
    InputAttributeNames = (**(result + 216) + ((*(*(result + 184) + 8) - **(result + 184)) >> 3));
    llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>((result + 120), v520, &InputAttributeNames, &v524);
    if (v525 == 1)
    {
      std::vector<void const*>::push_back[abi:nn200100](*(result + 184), v520);
    }

    v189 = *(v524 + 8);
    if (*(Rewriter + 9))
    {
      v190 = Rewriter - 16;
    }

    else
    {
      v190 = 0;
    }

    *&v524 = mlir::detail::OpResultImpl::getNextResultAtOffset(v190, 0);
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](result, &v524) = v189;
    return;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateOperationOp,void>::id)
  {
    v521 = a2;
    if (*(a2 + 36))
    {
      v191 = a2 - 16;
    }

    else
    {
      v191 = 0;
    }

    v192 = mlir::detail::OpResultImpl::getNextResultAtOffset(v191, 0);
    v193 = mlir::pdl_interp::CreateOperationOp::getName(&v521);
    mlir::OperationName::OperationName(&Rewriter, v193, v194, *(result + 152));
    v195 = Rewriter;
    v196 = *(v5 + 24);
    v197 = v196[1];
    if ((v197 + 1) > v196[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v196 + 3, v197 + 1, 2);
      v197 = v196[1];
    }

    *(*v196 + 2 * v197) = 11;
    ++v196[1];
    v199 = *(v5 + 24);
    v198 = *(v5 + 32);
    *&v524 = v192;
    v200 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v198, &v524);
    v201 = v199[1];
    if ((v201 + 1) > v199[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v199, v199 + 3, v201 + 1, 2);
      v201 = v199[1];
    }

    *(*v199 + 2 * v201) = v200;
    ++v199[1];
    v202 = *(v5 + 24);
    v203 = *(v5 + 32);
    v520[0] = v195;
    InputAttributeNames = (**(v203 + 216) + ((*(*(v203 + 184) + 8) - **(v203 + 184)) >> 3));
    llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>((v203 + 120), v520, &InputAttributeNames, &v524);
    if (v525 == 1)
    {
      std::vector<void const*>::push_back[abi:nn200100](*(v203 + 184), v520);
    }

    v204 = *(v524 + 8);
    v205 = v202[1];
    if ((v205 + 1) > v202[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v202, v202 + 3, v205 + 1, 2);
      v205 = v202[1];
    }

    *(*v202 + 2 * v205) = v204;
    ++v202[1];
    v206 = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v521, 0);
    if ((*(v521 + 46) & 0x80) != 0)
    {
      v207 = *(v521 + 72);
    }

    else
    {
      v207 = 0;
    }

    v208 = v206;
    v209 = (HIDWORD(v206) + v206);
    v210 = v209 - v206;
    v211 = *(v5 + 24);
    v212 = v211[1];
    if ((v212 + 1) > v211[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v211 + 3, v212 + 1, 2);
      v212 = v211[1];
    }

    *(*v211 + 2 * v212) = v210;
    ++v211[1];
    if (v209 != v208)
    {
      v213 = (v207 + 32 * v208 + 24);
      do
      {
        v214 = *v213;
        v213 += 4;
        --v210;
      }

      while (v210);
    }

    v215 = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v521, 1u);
    if ((*(v521 + 46) & 0x80) != 0)
    {
      v216 = *(v521 + 72);
    }

    else
    {
      v216 = 0;
    }

    v217 = WORD2(v215);
    v520[0] = (v216 + 32 * v215);
    v520[1] = ((HIDWORD(v215) + v215) - v215);
    v218 = *(v5 + 24);
    v219 = v218[1];
    if ((v219 + 1) > v218[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v218 + 3, v219 + 1, 2);
      v219 = v218[1];
    }

    *(*v218 + 2 * v219) = v217;
    ++v218[1];
    InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v521);
    v519 = v520;
    v220 = mlir::ArrayAttr::getValue(&InputAttributeNames);
    v221 = *v519;
    v222 = mlir::ArrayAttr::getValue(&InputAttributeNames);
    v224 = v222 + 8 * v223;
    if (v224 != v220)
    {
      v225 = v519[1];
      if (v225)
      {
        v226 = v225 - 1;
        v227 = (v221 + 24);
        v228 = v220 + 8;
        do
        {
          v229 = *v227;
          v230 = *(v5 + 24);
          v231 = *(v5 + 32);
          Rewriter = *(v228 - 8);
          v522 = **(v231 + 216) + ((*(*(v231 + 184) + 8) - **(v231 + 184)) >> 3);
          llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>((v231 + 120), &Rewriter, &v522, &v524);
          if (v525 == 1)
          {
            std::vector<void const*>::push_back[abi:nn200100](*(v231 + 184), &Rewriter);
          }

          v232 = *(v524 + 8);
          v233 = v230[1];
          if ((v233 + 1) > v230[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(v230, v230 + 3, v233 + 1, 2);
            v233 = v230[1];
          }

          *(*v230 + 2 * v233) = v232;
          ++v230[1];
          v235 = *(v5 + 24);
          v234 = *(v5 + 32);
          *&v524 = v229;
          v236 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v234, &v524);
          v237 = v235[1];
          if ((v237 + 1) > v235[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(v235, v235 + 3, v237 + 1, 2);
            v237 = v235[1];
          }

          *(*v235 + 2 * v237) = v236;
          ++v235[1];
          v239 = v226-- != 0;
          if (v228 == v224)
          {
            break;
          }

          v227 += 4;
          v228 += 8;
        }

        while (v239);
      }
    }

    if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v521))
    {
      return;
    }

    v186 = *(v5 + 24);
    v240 = v186[1];
    if (v240 + 1 > v186[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v186 + 3, v240 + 1, 2);
      v240 = v186[1];
    }

    v241 = *v186;
    v242 = -1;
    goto LABEL_238;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateRangeOp,void>::id)
  {
    v243 = a2;
    *&v524 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    v244 = *(*mlir::AffineMapAttr::getValue(&v524) + 136);
    if (v244 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      v247 = *(v5 + 24);
      v248 = v247[1];
      if ((v248 + 1) <= v247[2])
      {
        v246 = v243;
        v249 = 12;
        goto LABEL_266;
      }

      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v247 + 3, v248 + 1, 2);
      v249 = 12;
    }

    else
    {
      v245 = v244 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
      v246 = v243;
      if (!v245)
      {
LABEL_267:
        v270 = v246 - 16;
        if (*(v246 + 36))
        {
          v271 = v246 - 16;
        }

        else
        {
          v271 = 0;
        }

        v272 = v246;
        v273 = mlir::detail::OpResultImpl::getNextResultAtOffset(v271, 0);
        if (*(v272 + 36))
        {
          v274 = v270;
        }

        else
        {
          v274 = 0;
        }

        *&v524 = mlir::detail::OpResultImpl::getNextResultAtOffset(v274, 0);
        v275 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](result + 24, &v524);
        v277 = *(v5 + 24);
        v276 = *(v5 + 32);
        *&v524 = v273;
        v278 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v276, &v524);
        v279 = v277[1];
        if ((v279 + 1) > v277[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(v277, v277 + 3, v279 + 1, 2);
          v279 = v277[1];
        }

        *(*v277 + 2 * v279) = v278;
        ++v277[1];
        v280 = *(v5 + 24);
        v281 = v280[1];
        if ((v281 + 1) > v280[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v280 + 3, v281 + 1, 2);
          v281 = v280[1];
        }

        *(*v280 + 2 * v281) = v275;
        ++v280[1];
        if ((*(v243 + 46) & 0x80) != 0)
        {
          v282 = v243;
          v283 = *(v243 + 72);
          v284 = *(v282 + 68);
          v285 = *(v5 + 24);
          v286 = v285[1];
          v287 = v286 + 1;
          if ((v286 + 1) <= v285[2])
          {
            goto LABEL_279;
          }
        }

        else
        {
          v283 = 0;
          v284 = 0;
          v285 = *(v5 + 24);
          v286 = v285[1];
          v287 = v286 + 1;
          if ((v286 + 1) <= v285[2])
          {
LABEL_279:
            *(*v285 + 2 * v286) = v284;
            ++v285[1];
            if (!v284)
            {
              return;
            }

LABEL_280:
            v288 = (v283 + 24);
            do
            {
              v289 = *v288;
              v288 += 4;
              --v284;
            }

            while (v284);
            return;
          }
        }

        llvm::SmallVectorBase<unsigned long long>::grow_pod(v285, v285 + 3, v287, 2);
        *(*v285 + 2 * v285[1]++) = v284;
        if (!v284)
        {
          return;
        }

        goto LABEL_280;
      }

      v247 = *(v5 + 24);
      v248 = v247[1];
      if ((v248 + 1) <= v247[2])
      {
        v249 = 13;
LABEL_266:
        *(*v247 + 2 * v248) = v249;
        ++v247[1];
        goto LABEL_267;
      }

      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v247 + 3, v248 + 1, 2);
      v249 = 13;
    }

    v248 = v247[1];
    v246 = v243;
    v5 = a3;
    goto LABEL_266;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypeOp,void>::id)
  {
    Rewriter = a2;
    Type = mlir::pdl_interp::CheckTypeOp::getType(&Rewriter);
    goto LABEL_192;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id)
  {
    Rewriter = a2;
    v250 = a2 - 16;
    if (*(a2 + 36))
    {
      v251 = a2 - 16;
    }

    else
    {
      v251 = 0;
    }

    v252 = a2;
    v253 = mlir::detail::OpResultImpl::getNextResultAtOffset(v251, 0);
    if (*(v252 + 36))
    {
      v254 = v250;
    }

    else
    {
      v254 = 0;
    }

    *&v524 = mlir::detail::OpResultImpl::getNextResultAtOffset(v254, 0);
    v255 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](result + 24, &v524);
    v256 = mlir::pdl::OperationOp::getAttributeValueNames(&Rewriter);
    v257 = *(v5 + 24);
    v258 = v257[1];
    if ((v258 + 1) > v257[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v257 + 3, v258 + 1, 2);
      v258 = v257[1];
    }

    *(*v257 + 2 * v258) = 10;
    ++v257[1];
    v260 = *(v5 + 24);
    v259 = *(v5 + 32);
    *&v524 = v253;
    v261 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v259, &v524);
    v262 = v260[1];
    if ((v262 + 1) > v260[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v260, v260 + 3, v262 + 1, 2);
      v262 = v260[1];
    }

    *(*v260 + 2 * v262) = v261;
    ++v260[1];
    v263 = *(v5 + 24);
    v264 = v263[1];
    if ((v264 + 1) > v263[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v263 + 3, v264 + 1, 2);
      v264 = v263[1];
    }

    *(*v263 + 2 * v264) = v255;
    ++v263[1];
    v266 = *(v5 + 24);
    v265 = *(v5 + 32);
    v520[0] = v256;
    InputAttributeNames = (**(v265 + 216) + ((*(*(v265 + 184) + 8) - **(v265 + 184)) >> 3));
    llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>((v265 + 120), v520, &InputAttributeNames, &v524);
    if (v525 == 1)
    {
      std::vector<void const*>::push_back[abi:nn200100](*(v265 + 184), v520);
    }

    v267 = *(v524 + 8);
    v268 = v266[1];
    if ((v268 + 1) > v266[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v266, v266 + 3, v268 + 1, 2);
      v268 = v266[1];
    }

    *(*v266 + 2 * v268) = v267;
    ++v266[1];
    return;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::EraseOp,void>::id)
  {
    v290 = *(*(a2 + 72) + 24);
    v291 = *(a3 + 24);
    v292 = v291[1];
    if ((v292 + 1) > v291[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v291 + 3, v292 + 1, 2);
      v292 = v291[1];
    }

    *(*v291 + 2 * v292) = 14;
    ++v291[1];
    v294 = *(v5 + 24);
    v293 = *(v5 + 32);
    goto LABEL_326;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ExtractOp,void>::id)
  {
    v520[0] = a2;
    v295 = a2;
    if (*(a2 + 36))
    {
      v296 = a2 - 16;
    }

    else
    {
      v296 = 0;
    }

    v297 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v296, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v297 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
    {
      v298 = 15;
    }

    else if (v297 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
    {
      v298 = 17;
    }

    else
    {
      v298 = 16 * (v297 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
    }

    v310 = *(*(v295 + 72) + 24);
    Index = mlir::pdl::ResultOp::getIndex(v520);
    if (*(v520[0] + 9))
    {
      v312 = v520[0] - 16;
    }

    else
    {
      v312 = 0;
    }

    v290 = mlir::detail::OpResultImpl::getNextResultAtOffset(v312, 0);
    v313 = *(a3 + 24);
    v314 = v313[1];
    if ((v314 + 1) > v313[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v313 + 3, v314 + 1, 2);
      v314 = v313[1];
    }

    *(*v313 + 2 * v314) = v298;
    ++v313[1];
    v316 = *(a3 + 24);
    v315 = *(a3 + 32);
    *&v524 = v310;
    v317 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v315, &v524);
    v318 = v316[1];
    if ((v318 + 1) > v316[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v316, v316 + 3, v318 + 1, 2);
      v318 = v316[1];
    }

    *(*v316 + 2 * v318) = v317;
    ++v316[1];
    v319 = *(a3 + 24);
    v320 = v319[1];
    if (v319[2] < (v320 + 2))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v319 + 3, v320 + 2, 2);
      v320 = v319[1];
    }

    *(*v319 + 2 * v320) = Index;
    v319[1] += 2;
    v294 = *(a3 + 24);
    v293 = *(a3 + 32);
    goto LABEL_326;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::FinalizeOp,void>::id)
  {
    v186 = *(a3 + 24);
    v240 = v186[1];
    if (v240 + 1 > v186[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v186 + 3, v240 + 1, 2);
      v240 = v186[1];
    }

    v241 = *v186;
    v242 = 18;
LABEL_238:
    *(v241 + 2 * v240) = v242;
LABEL_239:
    ++v186[1];
    return;
  }

  if (a2 && v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ForEachOp,void>::id)
  {
    v43 = a2 + 64;
    v44 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
    if (v44)
    {
      v45 = v44 - 8;
    }

    else
    {
      v45 = 0;
    }

    v46 = **(v45 + 48);
    v47 = a2;
    *&v524 = *(*(a2 + 72) + 24);
    v48 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](result + 24, &v524);
    v49 = *(v5 + 24);
    v50 = v49[1];
    if ((v50 + 1) > v49[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(v5 + 24), v49 + 3, v50 + 1, 2);
      v50 = v49[1];
    }

    *(*v49 + 2 * v50) = 19;
    ++v49[1];
    v51 = *(a3 + 24);
    v52 = v51[1];
    if ((v52 + 1) > v51[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v51 + 3, v52 + 1, 2);
      v52 = v51[1];
    }

    *(*v51 + 2 * v52) = v48;
    ++v51[1];
    v54 = *(a3 + 24);
    v53 = *(a3 + 32);
    *&v524 = v46;
    v55 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v53, &v524);
    v56 = v54[1];
    if ((v56 + 1) > v54[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v54, v54 + 3, v56 + 1, 2);
      v56 = v54[1];
    }

    *(*v54 + 2 * v56) = v55;
    ++v54[1];
    v57 = *(*(*(v46 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v57 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
    {
      v58 = 0;
    }

    else if (v57 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
    {
      v58 = 1;
    }

    else if (v57 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      *&v524 = *(v46 + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*mlir::AffineMapAttr::getValue(&v524) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
      {
        v58 = 3;
      }

      else
      {
        v58 = 5;
      }
    }

    else if (v57 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      v58 = 2;
    }

    else
    {
      v58 = 4 * (v57 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
    }

    v363 = *(a3 + 24);
    v364 = v363[1];
    if ((v364 + 1) > v363[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v363 + 3, v364 + 1, 2);
      v364 = v363[1];
    }

    *(*v363 + 2 * v364) = v58;
    ++v363[1];
    v365 = *(result + 144);
    v366 = *(((v43 + 16 * ((*(v47 + 44) >> 23) & 1) + ((*(v47 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    v367 = *(a3 + 24);
    v368 = v367[1];
    if ((v368 + 1) > v367[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v367 + 3, v368 + 1, 2);
      v368 = v367[1];
    }

    *(*v367 + 2 * v368) = v365;
    ++v367[1];
    *&v524 = v366;
    v369 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::operator[](a3, &v524);
    v370 = v369;
    v371 = *(*(a3 + 24) + 8);
    v372 = v369[2];
    if (v372 >= v369[3])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v369, v369 + 4, v372 + 1, 4);
      LODWORD(v372) = v370[2];
    }

    *(*v370 + 4 * v372) = v371;
    ++v370[2];
    v373 = *(a3 + 24);
    v374 = v373[1];
    if (v373[2] < (v374 + 2))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v373 + 3, v374 + 2, 2);
      v374 = v373[1];
    }

    *(*v373 + 2 * v374) = 0;
    v373[1] += 2;
    v375 = *(result + 144) + 1;
    *(result + 144) = v375;
    v376 = *(result + 248);
    if (*v376 < v375)
    {
      *v376 = v375;
    }

    --*(result + 144);
    return;
  }

  v516 = a2;
  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeOp,void>::id)
  {
    if (*(a2 + 36))
    {
      v326 = a2 - 16;
    }

    else
    {
      v326 = 0;
    }

    v327 = mlir::detail::OpResultImpl::getNextResultAtOffset(v326, 0);
    v328 = *(v516 + 10);
    v329 = *(*(v516 + 9) + 24);
    v330 = *(a3 + 24);
    v331 = v330[1];
    if ((v331 + 1) > v330[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v330 + 3, v331 + 1, 2);
      v331 = v330[1];
    }

    *(*v330 + 2 * v331) = 20;
    ++v330[1];
    v333 = *(a3 + 24);
    v332 = *(a3 + 32);
    *&v524 = v327;
    v334 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v332, &v524);
    v335 = v333[1];
    if ((v335 + 1) > v333[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v333, v333 + 3, v335 + 1, 2);
      v335 = v333[1];
    }

    *(*v333 + 2 * v335) = v334;
    ++v333[1];
    v337 = *(a3 + 24);
    v336 = *(a3 + 32);
    *&v524 = v329;
    v338 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v336, &v524);
    v339 = v337[1];
    if ((v339 + 1) > v337[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v337, v337 + 3, v339 + 1, 2);
      v339 = v337[1];
    }

    *(*v337 + 2 * v339) = v338;
    ++v337[1];
    v294 = *(a3 + 24);
    v340 = *(a3 + 32);
    v520[0] = v328;
    InputAttributeNames = (**(v340 + 216) + ((*(*(v340 + 184) + 8) - **(v340 + 184)) >> 3));
    llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>((v340 + 120), v520, &InputAttributeNames, &v524);
    if (v525 == 1)
    {
      std::vector<void const*>::push_back[abi:nn200100](*(v340 + 184), v520);
    }

    v321 = *(v524 + 8);
    v322 = v294[1];
    v323 = v322 + 1;
    if ((v322 + 1) <= v294[2])
    {
      goto LABEL_328;
    }

    goto LABEL_341;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeTypeOp,void>::id)
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
    v343 = *(*(v516 + 9) + 24);
    v344 = *(a3 + 24);
    v345 = v344[1];
    if (v345 + 1 > v344[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v344 + 3, v345 + 1, 2);
      v345 = v344[1];
    }

    v346 = *v344;
    v347 = 21;
    goto LABEL_349;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetDefiningOpOp,void>::id)
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
    *&v524 = v353;
    v358 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v356, &v524);
    v359 = v357[1];
    if ((v359 + 1) > v357[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v357, v357 + 3, v359 + 1, 2);
      v359 = v357[1];
    }

    *(*v357 + 2 * v359) = v358;
    goto LABEL_362;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandOp,void>::id)
  {
    *&v524 = a2;
    v360 = mlir::pdl::ResultOp::getIndex(&v524);
    v361 = v360;
    if (v360 <= 3)
    {
      v362 = v360 + 23;
LABEL_394:
      v389 = *(a3 + 24);
      v391 = v389 + 1;
      v390 = v389[1];
      if ((v390 + 1) > v389[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v389 + 3, v390 + 1, 2);
        v390 = v389[1];
      }

      *(*v389 + 2 * v390) = v362;
      v392 = 1;
LABEL_414:
      *v391 += v392;
      v398 = *(*(v524 + 72) + 24);
      if (*(v524 + 36))
      {
        v399 = v524 - 16;
      }

      else
      {
        v399 = 0;
      }

      v400 = mlir::detail::OpResultImpl::getNextResultAtOffset(v399, 0);
      return;
    }

    v384 = *(a3 + 24);
    v385 = v384[1];
    if (v385 + 1 > v384[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v384 + 3, v385 + 1, 2);
      v385 = v384[1];
    }

    v386 = *v384;
    v387 = 27;
LABEL_411:
    *(v386 + 2 * v385) = v387;
    ++v384[1];
    v396 = *(a3 + 24);
    v391 = v396 + 1;
    v397 = v396[1];
    if (v396[2] < (v397 + 2))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v396 + 3, v397 + 2, 2);
      v397 = v396[1];
    }

    *(*v396 + 2 * v397) = v361;
    v392 = 2;
    goto LABEL_414;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandsOp,void>::id)
  {
    v520[0] = a2;
    if (*(a2 + 36))
    {
      v377 = a2 - 16;
    }

    else
    {
      v377 = 0;
    }

    v290 = mlir::detail::OpResultImpl::getNextResultAtOffset(v377, 0);
    v378 = mlir::pdl::ResultsOp::getIndex(v520);
    if ((v378 & 0x100000000) != 0)
    {
      v379 = v378;
    }

    else
    {
      v379 = -1;
    }

    if (*(*(*(v290 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v380 = *(a3 + 24);
      v381 = v380[1];
      v382 = v381 + 1;
      if ((v381 + 1) > v380[2])
      {
LABEL_405:
        llvm::SmallVectorBase<unsigned long long>::grow_pod(v380, v380 + 3, v382, 2);
        v383 = -1;
LABEL_489:
        v381 = v380[1];
        goto LABEL_407;
      }

      goto LABEL_388;
    }

LABEL_406:
    *&v524 = v290;
    v383 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](result + 24, &v524);
    v380 = *(a3 + 24);
    v381 = v380[1];
    if ((v381 + 1) > v380[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v380 + 3, v381 + 1, 2);
      goto LABEL_489;
    }

LABEL_407:
    *(*v380 + 2 * v381) = v383;
    ++v380[1];
    v294 = *(a3 + 24);
    v293 = *(a3 + 32);
LABEL_326:
    *&v524 = v290;
    goto LABEL_327;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultOp,void>::id)
  {
    *&v524 = a2;
    v388 = mlir::pdl::ResultOp::getIndex(&v524);
    v361 = v388;
    if (v388 <= 3)
    {
      v362 = v388 + 29;
      goto LABEL_394;
    }

    v384 = *(a3 + 24);
    v385 = v384[1];
    if (v385 + 1 > v384[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v384 + 3, v385 + 1, 2);
      v385 = v384[1];
    }

    v386 = *v384;
    v387 = 33;
    goto LABEL_411;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
  {
    v520[0] = a2;
    if (*(a2 + 36))
    {
      v393 = a2 - 16;
    }

    else
    {
      v393 = 0;
    }

    v290 = mlir::detail::OpResultImpl::getNextResultAtOffset(v393, 0);
    v394 = mlir::pdl::ResultsOp::getIndex(v520);
    if ((v394 & 0x100000000) != 0)
    {
      v395 = v394;
    }

    else
    {
      v395 = -1;
    }

    if (*(*(*(v290 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v380 = *(a3 + 24);
      v381 = v380[1];
      v382 = v381 + 1;
      if ((v381 + 1) > v380[2])
      {
        goto LABEL_405;
      }

LABEL_388:
      v383 = -1;
      goto LABEL_407;
    }

    goto LABEL_406;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetUsersOp,void>::id)
  {
    if (*(a2 + 36))
    {
      v401 = a2 - 16;
    }

    else
    {
      v401 = 0;
    }

    v402 = mlir::detail::OpResultImpl::getNextResultAtOffset(v401, 0);
    *&v524 = v402;
    v403 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](result + 24, &v524);
    v404 = *(a3 + 24);
    v405 = v404[1];
    if ((v405 + 1) > v404[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v404 + 3, v405 + 1, 2);
      v405 = v404[1];
    }

    *(*v404 + 2 * v405) = 35;
    ++v404[1];
    v407 = *(a3 + 24);
    v406 = *(a3 + 32);
    *&v524 = v402;
    v408 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v406, &v524);
    v409 = v407[1];
    if ((v409 + 1) > v407[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v407, v407 + 3, v409 + 1, 2);
      v409 = v407[1];
    }

    *(*v407 + 2 * v409) = v408;
    ++v407[1];
    v357 = *(a3 + 24);
    v410 = v357[1];
    if ((v410 + 1) > v357[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v357 + 3, v410 + 1, 2);
      v410 = v357[1];
    }

    *(*v357 + 2 * v410) = v403;
LABEL_362:
    ++v357[1];
    return;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id)
  {
    v411 = *(*(*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (*(a2 + 36))
    {
      v412 = a2 - 16;
    }

    else
    {
      v412 = 0;
    }

    v413 = mlir::detail::OpResultImpl::getNextResultAtOffset(v412, 0);
    v342 = v413;
    if (v411 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      *&v524 = v413;
      v427 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](result + 24, &v524);
      v343 = *(*(v516 + 9) + 24);
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
      *&v524 = v342;
      v432 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v430, &v524);
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
      goto LABEL_352;
    }

    v343 = *(*(v516 + 9) + 24);
    v344 = *(a3 + 24);
    v345 = v344[1];
    if (v345 + 1 > v344[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v344 + 3, v345 + 1, 2);
      v345 = v344[1];
    }

    v346 = *v344;
    v347 = 36;
LABEL_349:
    *(v346 + 2 * v345) = v347;
    ++v344[1];
    v349 = *(a3 + 24);
    v348 = *(a3 + 32);
    *&v524 = v342;
    v350 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v348, &v524);
    v351 = v349[1];
    if ((v351 + 1) > v349[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v349, v349 + 3, v351 + 1, 2);
      v351 = v349[1];
    }

    *(*v349 + 2 * v351) = v350;
LABEL_352:
    ++v349[1];
    v294 = *(a3 + 24);
    v293 = *(a3 + 32);
    *&v524 = v343;
LABEL_327:
    v321 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v293, &v524);
    v322 = v294[1];
    v323 = v322 + 1;
    if ((v322 + 1) <= v294[2])
    {
LABEL_328:
      *(*v294 + 2 * v322) = v321;
      ++v294[1];
      return;
    }

LABEL_341:
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v294, v294 + 3, v323, 2);
    v322 = v294[1];
    goto LABEL_328;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::IsNotNullOp,void>::id)
  {
    v414 = *(*(a2 + 72) + 24);
    mlir::SuccessorRange::SuccessorRange(&v524, a2);
    v122 = *(&v524 + 1);
    v121 = v524;
    v415 = *(a3 + 24);
    v416 = v415[1];
    if ((v416 + 1) > v415[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v415 + 3, v416 + 1, 2);
      v416 = v415[1];
    }

    *(*v415 + 2 * v416) = 38;
    ++v415[1];
    v418 = *(a3 + 24);
    v417 = *(a3 + 32);
    *&v524 = v414;
    v419 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v417, &v524);
    v420 = v418[1];
    if ((v420 + 1) > v418[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(v418, v418 + 3, v420 + 1, 2);
      v420 = v418[1];
    }

    *(*v418 + 2 * v420) = v419;
    ++v418[1];
    v42 = a3;
    goto LABEL_183;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::RecordMatchOp,void>::id)
  {
    v300 = a2;
  }

  else
  {
    v300 = 0;
  }

  if (v300)
  {
    InputAttributeNames = v300;
    v301 = *(result + 208);
    v302 = *(result + 256);
    v303 = *(v302 + 4);
    if (v303)
    {
      v304 = *v302;
      v305 = v303 - 1;
      v306 = (v303 - 1) & ((v300 >> 4) ^ (v300 >> 9));
      v307 = *(v304 + 16 * v306);
      if (v307 == v300)
      {
LABEL_313:
        v308 = *(v304 + 16 * v306 + 8);
        goto LABEL_495;
      }

      v470 = 1;
      while (v307 != -4096)
      {
        v471 = v306 + v470++;
        v306 = v471 & v305;
        v307 = *(v304 + 16 * v306);
        if (v307 == v300)
        {
          goto LABEL_313;
        }
      }
    }

    v308 = 0;
LABEL_495:
    v472 = *(v301 + 8);
    Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&InputAttributeNames);
    v520[0] = mlir::SymbolRefAttr::getLeafReference(&Rewriter);
    AttrData = mlir::OpaqueAttr::getAttrData(v520);
    v475 = v474;
    v478 = llvm::StringMapImpl::hash(AttrData, v474, v476, v477);
    v479 = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<>((result + 96), AttrData, v475, v478);
    mlir::detail::PDLByteCodePattern::create(v300, v308, *(*v479 + 8), &v524);
    v480 = *(v301 + 8);
    if (v480 >= *(v301 + 12))
    {
      llvm::SmallVectorTemplateBase<mlir::detail::PDLByteCodePattern,false>::growAndEmplaceBack<mlir::detail::PDLByteCodePattern>(v301, &v524);
      v489 = v530;
      if (v530 == &v533)
      {
        goto LABEL_517;
      }

      goto LABEL_516;
    }

    v481 = *v301 + 104 * v480;
    v482 = v524;
    *(v481 + 16) = v525;
    *v481 = v482;
    v483 = (v481 + 40);
    *(v481 + 24) = v481 + 40;
    *(v481 + 32) = 0x200000000;
    v484 = v527;
    if (!v527 || v481 == &v524)
    {
LABEL_507:
      v487 = v529[1];
      *(v481 + 72) = v481 + 88;
      *(v481 + 56) = v487;
      *(v481 + 80) = 0;
      v488 = v531;
      if (v531 && v481 != &v524)
      {
        if (v530 == &v533)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v481 + 72, (v481 + 88), v531, 16);
          if (v531)
          {
            memcpy(*(v481 + 72), v530, 16 * v531);
          }

          *(v481 + 80) = v488;
        }

        else
        {
          *(v481 + 72) = v530;
          *(v481 + 80) = v488;
          *(v481 + 84) = v532;
          v530 = &v533;
          v532 = 0;
        }

        v531 = 0;
      }

      *(v481 + 88) = v533;
      ++*(v301 + 8);
      v489 = v530;
      if (v530 == &v533)
      {
        goto LABEL_517;
      }

LABEL_516:
      free(v489);
LABEL_517:
      if (__src != v529)
      {
        free(__src);
      }

      mlir::SuccessorRange::SuccessorRange(&v524, InputAttributeNames);
      v490 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&InputAttributeNames, 1u);
      if ((*(InputAttributeNames + 46) & 0x80) != 0)
      {
        v491 = *(InputAttributeNames + 9);
      }

      else
      {
        v491 = 0;
      }

      v492 = v490;
      v493 = (HIDWORD(v490) + v490);
      v494 = v493 - v490;
      v495 = v524;
      v496 = *(a3 + 24);
      v497 = v496[1];
      if ((v497 + 1) > v496[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v496 + 3, v497 + 1, 2);
        v497 = v496[1];
      }

      *(*v496 + 2 * v497) = 39;
      ++v496[1];
      v498 = *(a3 + 24);
      v499 = v498[1];
      if ((v499 + 1) > v498[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v498 + 3, v499 + 1, 2);
        v499 = v498[1];
      }

      *(*v498 + 2 * v499) = v472;
      ++v498[1];
      v500 = *(a3 + 24);
      v501 = v500[1];
      if ((v501 + 1) > v500[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v500 + 3, v501 + 1, 2);
        v501 = v500[1];
      }

      *(*v500 + 2 * v501) = v494;
      ++v500[1];
      if (v493 != v492)
      {
        v511 = (v491 + 32 * v492 + 24);
        do
        {
          v513 = *(a3 + 24);
          v512 = *(a3 + 32);
          v520[0] = *v511;
          v514 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v512, v520);
          v515 = v513[1];
          if ((v515 + 1) > v513[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(v513, v513 + 3, v515 + 1, 2);
            v515 = v513[1];
          }

          *(*v513 + 2 * v515) = v514;
          ++v513[1];
          v511 += 4;
          --v494;
        }

        while (v494);
      }

      v502 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&InputAttributeNames, 0);
      if ((*(InputAttributeNames + 46) & 0x80) != 0)
      {
        v503 = *(InputAttributeNames + 9);
      }

      else
      {
        v503 = 0;
      }

      v504 = v502;
      v505 = (HIDWORD(v502) + v502);
      v506 = v505 - v502;
      v507 = *(a3 + 24);
      v508 = v507[1];
      if ((v508 + 1) > v507[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a3 + 24), v507 + 3, v508 + 1, 2);
        v508 = v507[1];
      }

      *(*v507 + 2 * v508) = v506;
      ++v507[1];
      if (v505 != v504)
      {
        v509 = (v503 + 32 * v504 + 24);
        do
        {
          v510 = *v509;
          v509 += 4;
          --v506;
        }

        while (v506);
      }

      return;
    }

    v485 = __src;
    if (__src != v529)
    {
      *(v481 + 24) = __src;
      *(v481 + 32) = v484;
      *(v481 + 36) = v528;
      __src = v529;
      v528 = 0;
LABEL_506:
      v527 = 0;
      goto LABEL_507;
    }

    if (v527 < 3)
    {
      v486 = v527;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v481 + 24, (v481 + 40), v527, 8);
      v486 = v527;
      if (!v527)
      {
LABEL_505:
        *(v481 + 32) = v484;
        goto LABEL_506;
      }

      v485 = __src;
      v483 = *(v481 + 24);
    }

    memcpy(v483, v485, 8 * v486);
    goto LABEL_505;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ReplaceOp,void>::id)
  {
    return;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchAttributeOp,void>::id)
  {
    v435 = *(a2 + 80);
    v436 = *(*(a2 + 72) + 24);
    mlir::SuccessorRange::SuccessorRange(&v524, a2);
    v438 = *(&v524 + 1);
    v437 = v524;
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
    if (v7 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypeOp,void>::id)
    {
      if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypesOp,void>::id)
      {
        v447 = *(a2 + 80);
        v448 = *(*(a2 + 72) + 24);
        mlir::SuccessorRange::SuccessorRange(&v524, a2);
        return;
      }

      if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperandCountOp,void>::id)
      {
        v421 = *(a2 + 80);
        v422 = *(*(a2 + 72) + 24);
        mlir::SuccessorRange::SuccessorRange(&v524, a2);
        v424 = *(&v524 + 1);
        v423 = v524;
        v425 = a3;
        v426 = 42;
      }

      else
      {
        if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperationNameOp,void>::id)
        {
          *&v524 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
          v449 = mlir::ArrayAttr::getValue(&v524);
          v450 = mlir::ArrayAttr::getValue(&v524);
          v452 = v451;
          v453 = *(*(v516 + 9) + 24);
          mlir::SuccessorRange::SuccessorRange(&v524, v516);
          v454 = v524;
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
          *&v524 = v453;
          v460 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v458, &v524);
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
          for (; v449 != v457; ++v449)
          {
            v520[0] = *v449;
            v464 = mlir::OpaqueAttr::getAttrData(v520);
            mlir::OperationName::OperationName(&v524, v464, v465, *(result + 152));
            v466 = *(a3 + 24);
            v467 = *(a3 + 32);
            v520[0] = v524;
            InputAttributeNames = (**(v467 + 216) + ((*(*(v467 + 184) + 8) - **(v467 + 184)) >> 3));
            llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>((v467 + 120), v520, &InputAttributeNames, &v524);
            if (v525 == 1)
            {
              std::vector<void const*>::push_back[abi:nn200100](*(v467 + 184), v520);
            }

            v468 = *(v524 + 8);
            v469 = v466[1];
            if ((v469 + 1) > v466[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(v466, v466 + 3, v469 + 1, 2);
              v469 = v466[1];
            }

            *(*v466 + 2 * v469) = v468;
            ++v466[1];
          }

          v42 = a3;
          v41 = *(&v454 + 1);
          v40 = v454;
          goto LABEL_184;
        }

        v421 = *(a2 + 80);
        v422 = *(*(a2 + 72) + 24);
        mlir::SuccessorRange::SuccessorRange(&v524, a2);
        v424 = *(&v524 + 1);
        v423 = v524;
        v425 = a3;
        v426 = 44;
      }

      return;
    }

    v435 = *(a2 + 80);
    v436 = *(*(a2 + 72) + 24);
    mlir::SuccessorRange::SuccessorRange(&v524, a2);
    v438 = *(&v524 + 1);
    v437 = v524;
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
  *&v524 = v436;
  v445 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v443, &v524);
  v446 = v444[1];
  if ((v446 + 1) > v444[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v444, v444 + 3, v446 + 1, 2);
    v446 = v444[1];
  }

  *(*v444 + 2 * v446) = v445;
  ++v444[1];
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
      v8 = (v13 + 32);
      v9 = *(v13 + 40);
      if (v9 != (v13 + 32))
      {
        do
        {
          ZinIrHalH13g::~ZinIrHalH13g(v9);
          v9 = *(v9 + 1);
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
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

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::try_emplace<unsigned short>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, _WORD *a3@<X2>, uint64_t a4@<X8>)
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
  v11 = *result + 16 * v10;
  v12 = *v11;
  if (*a2 != *v11)
  {
    v15 = 0;
    v16 = 1;
    while (v12 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v12 == -8192;
      }

      if (v17)
      {
        v15 = v11;
      }

      v18 = v10 + v16++;
      v10 = v18 & v9;
      v11 = v6 + 16 * (v18 & v9);
      v12 = *v11;
      if (*a2 == *v11)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v11 = v15;
    }

LABEL_5:
    v22 = v11;
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
        *v11 = *a2;
        *(v11 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 4);
        v13 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a4;
    v21 = a3;
    llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(v19, a2, &v22);
    a3 = v21;
    result = v19;
    a4 = v20;
    v11 = v22;
    ++*(v19 + 2);
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

void *llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(uint64_t a1, int a2)
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
        goto LABEL_41;
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
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0x9DDFEA08EB382D69 * ((8 * *v17 - 0xAE502812AA7333) ^ HIDWORD(*v17));
          v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v25 >> 47) ^ v25);
          v27 = (-348639895 * ((v26 >> 47) ^ v26)) & v16;
          v23 = &result[2 * v27];
          v28 = *v23;
          if (v24 != *v23)
          {
            v29 = 0;
            v30 = 1;
            while (v28 != -4096)
            {
              if (v29)
              {
                v31 = 0;
              }

              else
              {
                v31 = v28 == -8192;
              }

              if (v31)
              {
                v29 = v23;
              }

              v32 = v27 + v30++;
              v27 = v32 & v16;
              v23 = &result[2 * (v32 & v16)];
              v28 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v29)
            {
              v23 = v29;
            }
          }

LABEL_23:
          *v23 = v24;
          *(v23 + 4) = *(v17 + 4);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

uint64_t **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_0>(uint64_t **result, uint64_t a2)
{
  v2 = *(a2 + 36);
  if (v2)
  {
    v3 = a2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = result;
    for (i = 0; i != v2; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, i);
    }
  }

  return result;
}