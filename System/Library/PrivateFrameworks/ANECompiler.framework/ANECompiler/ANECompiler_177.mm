uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(uint64_t result, char *a2, unsigned int **a3, unint64_t a4, uint64_t *a5)
{
  if (!a4)
  {
    return result;
  }

  v5 = a5;
  v6 = result;
  if (a4 == 1)
  {
LABEL_16:
    *v5 = *v6;
    return result;
  }

  v8 = a2;
  if (a4 == 2)
  {
    v10 = a2 - 8;
    v9 = *(a2 - 1);
    if (v9)
    {
      v11 = v9 + 8;
    }

    else
    {
      v11 = 0;
    }

    if (*result)
    {
      v12 = *result + 8;
    }

    else
    {
      v12 = 0;
    }

    v116 = v12;
    v117 = v11;
    v13 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116);
    v14 = *result;
    v15 = *v13;
    v16 = v14 >= v15;
    if (v14 >= v15)
    {
      v17 = v6;
    }

    else
    {
      v17 = v10;
    }

    *v5++ = *v17;
    if (v16)
    {
      v6 = v10;
    }

    goto LABEL_16;
  }

  if (a4 <= 8)
  {
    if (result == a2)
    {
      return result;
    }

    v18 = (result + 8);
    *a5 = *result;
    if ((result + 8) == a2)
    {
      return result;
    }

    v19 = a5;
LABEL_25:
    v22 = v19;
    v24 = *v19++;
    v23 = v24;
    if (*v18)
    {
      v25 = *v18 + 8;
    }

    else
    {
      v25 = 0;
    }

    if (v23)
    {
      v26 = v23 + 8;
    }

    else
    {
      v26 = 0;
    }

    v116 = v26;
    v117 = v25;
    v27 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116);
    v20 = v19;
    if (*result >= *v27)
    {
      goto LABEL_24;
    }

    v22[1] = *v22;
    v20 = v5;
    if (v22 == v5)
    {
      goto LABEL_24;
    }

    v115 = v19;
    v28 = v22;
    while (1)
    {
      if (*v18)
      {
        v29 = *v18 + 8;
      }

      else
      {
        v29 = 0;
      }

      v30 = *--v28;
      v31 = v30 + 8;
      if (v30)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v33 = *a3;
      v35 = *a3 + 2;
      v34 = **a3;
      v36 = v34 & 1;
      if (v34)
      {
        v37 = 4;
        v38 = *a3 + 2;
      }

      else
      {
        v37 = v33[4];
        if (!v37)
        {
          v41 = 0;
          v51 = 0;
          goto LABEL_54;
        }

        v38 = *(v33 + 1);
      }

      v39 = v37 - 1;
      v40 = v39 & ((v29 >> 4) ^ (v29 >> 9));
      v41 = &v38[4 * v40];
      v42 = *v41;
      if (v29 == *v41)
      {
        goto LABEL_45;
      }

      v53 = 0;
      v54 = 1;
      while (v42 != -4096)
      {
        if (v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = v42 == -8192;
        }

        if (v55)
        {
          v53 = v41;
        }

        v56 = v40 + v54++;
        v40 = v56 & v39;
        v41 = &v38[4 * v40];
        v42 = *v41;
        if (v29 == *v41)
        {
          goto LABEL_45;
        }
      }

      if (v53)
      {
        v41 = v53;
      }

      if (v34)
      {
        v51 = 4;
      }

      else
      {
        v51 = v33[4];
      }

LABEL_54:
      if (4 * (v34 >> 1) + 4 >= 3 * v51)
      {
        v51 *= 2;
      }

      else if (v51 + ~(v34 >> 1) - v33[1] > v51 >> 3)
      {
        goto LABEL_56;
      }

      result = llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(*a3, v51);
      v34 = *v33;
      if (*v33)
      {
        v61 = 4;
LABEL_102:
        v36 = *v33 & 1;
        v63 = v61 - 1;
        v64 = v63 & ((v29 >> 4) ^ (v29 >> 9));
        v41 = &v35[4 * v64];
        v65 = *v41;
        if (v29 != *v41)
        {
          v66 = 0;
          v67 = 1;
          while (v65 != -4096)
          {
            if (v66)
            {
              v68 = 0;
            }

            else
            {
              v68 = v65 == -8192;
            }

            if (v68)
            {
              v66 = v41;
            }

            v69 = v64 + v67++;
            v64 = v69 & v63;
            v41 = &v35[4 * v64];
            v65 = *v41;
            if (v29 == *v41)
            {
              goto LABEL_56;
            }
          }

          if (v66)
          {
            v41 = v66;
          }
        }

        goto LABEL_56;
      }

      v61 = v33[4];
      if (v61)
      {
        v35 = *(v33 + 1);
        goto LABEL_102;
      }

      v36 = 0;
      v41 = 0;
LABEL_56:
      *v33 = (v34 & 0xFFFFFFFE | v36) + 2;
      if (*v41 != -4096)
      {
        --v33[1];
      }

      *v41 = v29;
      *(v41 + 4) = -1;
      v33 = *a3;
      v34 = **a3;
LABEL_45:
      v43 = v34 & 1;
      v44 = v33 + 2;
      if (v34)
      {
        v45 = 4;
        v46 = v33 + 2;
      }

      else
      {
        v45 = v33[4];
        if (!v45)
        {
          v49 = 0;
          v52 = 0;
          goto LABEL_60;
        }

        v46 = *(v33 + 1);
      }

      v47 = v45 - 1;
      v48 = (v45 - 1) & ((v32 >> 4) ^ (v32 >> 9));
      v49 = &v46[4 * v48];
      v50 = *v49;
      if (v32 != *v49)
      {
        v57 = 0;
        v58 = 1;
        while (v50 != -4096)
        {
          result = -8192;
          if (v57)
          {
            v59 = 0;
          }

          else
          {
            v59 = v50 == -8192;
          }

          if (v59)
          {
            v57 = v49;
          }

          v60 = v48 + v58++;
          v48 = v60 & v47;
          v49 = &v46[4 * (v60 & v47)];
          v50 = *v49;
          if (v32 == *v49)
          {
            goto LABEL_50;
          }
        }

        if (v57)
        {
          v49 = v57;
        }

        if (v34)
        {
          v52 = 4;
        }

        else
        {
          v52 = v33[4];
        }

LABEL_60:
        if (4 * (v34 >> 1) + 4 >= 3 * v52)
        {
          v52 *= 2;
        }

        else if (v52 + ~(v34 >> 1) - v33[1] > v52 >> 3)
        {
LABEL_62:
          *v33 = (v34 & 0xFFFFFFFE | v43) + 2;
          if (*v49 != -4096)
          {
            --v33[1];
          }

          *v49 = v32;
          *(v49 + 4) = -1;
          goto LABEL_50;
        }

        result = llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(v33, v52);
        v34 = *v33;
        if (*v33)
        {
          v62 = 4;
        }

        else
        {
          v62 = v33[4];
          if (!v62)
          {
            v43 = 0;
            v49 = 0;
            goto LABEL_62;
          }

          v44 = *(v33 + 1);
        }

        v43 = *v33 & 1;
        v70 = v62 - 1;
        v71 = (v62 - 1) & ((v32 >> 4) ^ (v32 >> 9));
        v49 = &v44[4 * v71];
        v72 = *v49;
        if (v32 != *v49)
        {
          v73 = 0;
          v74 = 1;
          while (v72 != -4096)
          {
            if (v73)
            {
              v75 = 0;
            }

            else
            {
              v75 = v72 == -8192;
            }

            if (v75)
            {
              v73 = v49;
            }

            v76 = v71 + v74++;
            v71 = v76 & v70;
            v49 = &v44[4 * (v76 & v70)];
            v72 = *v49;
            if (v32 == *v49)
            {
              goto LABEL_62;
            }
          }

          if (v73)
          {
            v49 = v73;
          }
        }

        goto LABEL_62;
      }

LABEL_50:
      if (*(v49 + 4) >= *(v41 + 4))
      {
        v20 = v22;
        goto LABEL_23;
      }

      *v22 = *(v22 - 1);
      v22 = v28;
      if (v28 == v5)
      {
        v20 = v5;
LABEL_23:
        v8 = a2;
        v19 = v115;
LABEL_24:
        v21 = *v18;
        v18 += 8;
        *v20 = v21;
        if (v18 != v8)
        {
          goto LABEL_25;
        }

        return result;
      }
    }
  }

  v77 = a4 >> 1;
  v78 = a4 >> 1;
  v79 = (result + v78 * 8);
  std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(result, (result + v78 * 8), a3, v77, a5, v77);
  result = std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(&v6[v78], v8, a3, a4 - v77, &v5[v78], a4 - v77);
  v81 = v5;
  v82 = v6;
  v83 = v79;
  do
  {
    if (v83 == v8)
    {
      if (v82 == v79)
      {
        return result;
      }

      v105 = &v6[v77] - v82 - 8;
      if (v105 >= 0x38)
      {
        if ((v81 - v82) >= 0x20)
        {
          v107 = v5 + 2;
          v108 = (v105 >> 3) + 1;
          v109 = v108 & 0x3FFFFFFFFFFFFFFCLL;
          v5 = (v5 + v109 * 8);
          v106 = &v82[v109];
          v110 = (v82 + 2);
          v111 = v108 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v112 = *v110;
            *(v107 - 1) = *(v110 - 1);
            *v107 = v112;
            v110 += 2;
            v107 += 2;
            v111 -= 4;
          }

          while (v111);
          if (v108 == (v108 & 0x3FFFFFFFFFFFFFFCLL))
          {
            return result;
          }
        }

        else
        {
          v106 = v82;
        }
      }

      else
      {
        v106 = v82;
      }

      do
      {
        v113 = *v106++;
        *v5++ = v113;
      }

      while (v106 != v79);
      return result;
    }

    v84 = v83;
    v85 = *v83;
    if (v85)
    {
      v86 = v85 + 8;
    }

    else
    {
      v86 = 0;
    }

    if (*v82)
    {
      v87 = *v82 + 8;
    }

    else
    {
      v87 = 0;
    }

    v116 = v87;
    v117 = v86;
    v88 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116);
    v89 = *result;
    v90 = *v88;
    v16 = v89 >= v90;
    v91 = v89 >= v90;
    v92 = v89 < v90;
    if (v16)
    {
      v93 = v82;
    }

    else
    {
      v93 = v84;
    }

    v94 = v92;
    v83 = &v84[v94];
    v82 += v91;
    *v5++ = *v93;
    ++v81;
  }

  while (v82 != v79);
  if (v83 != v8)
  {
    v95 = v8 - v84 - v94 * 8 - 8;
    if (v95 < 0x58)
    {
      goto LABEL_164;
    }

    if ((v81 - &v84[v94]) < 0x20)
    {
      goto LABEL_164;
    }

    v96 = 0;
    v97 = (v95 >> 3) + 1;
    v98 = v97 & 0x3FFFFFFFFFFFFFFCLL;
    v99 = &v5[v98];
    v83 = (v83 + v98 * 8);
    v100 = &v84[v94 + 2];
    v101 = v97 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v102 = &v5[v96];
      v103 = *v100;
      *v102 = *(v100 - 1);
      *(v102 + 1) = v103;
      v100 += 4;
      v96 += 4;
      v101 -= 4;
    }

    while (v101);
    v5 = v99;
    if (v97 != (v97 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_164:
      do
      {
        v104 = *v83++;
        *v5++ = v104;
      }

      while (v83 != v8);
    }
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(char *a1, char *a2, char *a3, unsigned int **a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v136 = a6;
  if (!a6)
  {
    return result;
  }

  while (v136 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *a2 ? *a2 + 8 : 0;
      v17 = *&a1[8 * v15];
      v18 = v17 ? v17 + 8 : 0;
      v138 = v18;
      v139 = v16;
      v19 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v139);
      if (*llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v138) < *v19)
      {
        break;
      }

      ++v15;
      v14 -= 8;
      if (a5 == v15)
      {
        return result;
      }
    }

    v21 = a5;
    v22 = a5 - v15;
    v23 = &a1[-v14];
    v24 = v136;
    v135 = a3;
    if (a5 - v15 >= v136)
    {
      if (a5 - 1 == v15)
      {
        v118 = *&a1[8 * v15];
        *&a1[8 * v15] = *a2;
        *a2 = v118;
        return result;
      }

      v35 = v22 / 2;
      v37 = &a1[8 * (v22 / 2)];
      if (a3 == a2)
      {
        v25 = a2;
      }

      else
      {
        v128 = v22 / 2;
        __dsta = v23;
        v132 = a8;
        v133 = a7;
        v38 = *a4;
        v39 = (a3 - a2) >> 3;
        v25 = a2;
        do
        {
          v40 = &v25[8 * (v39 >> 1)];
          v42 = *v40;
          v41 = v40 + 8;
          v43 = *&v37[8 * v15];
          v44 = v42 + 8;
          if (v42)
          {
            v45 = v44;
          }

          else
          {
            v45 = 0;
          }

          if (v43)
          {
            v46 = v43 + 8;
          }

          else
          {
            v46 = 0;
          }

          v138 = v46;
          v139 = v45;
          v47 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](v38, &v139);
          v48 = *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](v38, &v138);
          v49 = *v47;
          if (v48 >= v49)
          {
            v39 >>= 1;
          }

          else
          {
            v39 += ~(v39 >> 1);
          }

          if (v48 < v49)
          {
            v25 = v41;
          }
        }

        while (v39);
        a7 = v133;
        v23 = __dsta;
        a8 = v132;
        v21 = a5;
        v24 = v136;
        v35 = v128;
      }

      v27 = &v37[-v14];
      v134 = (v25 - a2) >> 3;
      v36 = v25;
      if (v27 != a2)
      {
LABEL_49:
        v36 = v27;
        if (a2 != v25)
        {
          v50 = v27 + 8;
          if (v27 + 8 == a2)
          {
            v57 = v23;
            v58 = *v27;
            v59 = v25 - a2;
            v60 = v35;
            memmove(v27, v50, v59);
            v35 = v60;
            v24 = v136;
            v21 = a5;
            v36 = &v27[v59];
            *&v27[v59] = v58;
            v23 = v57;
          }

          else
          {
            v51 = a2 + 8;
            if (a2 + 8 == v25)
            {
              v61 = v23;
              v62 = a8;
              v63 = *(v25 - 1);
              v36 = v27 + 8;
              if (v25 - 8 != v27)
              {
                v64 = v35;
                memmove(v27 + 8, v27, v25 - 8 - v27);
                v35 = v64;
                v24 = v136;
                v21 = a5;
              }

              *v27 = v63;
              a8 = v62;
              v23 = v61;
            }

            else
            {
              v52 = (a2 - v27);
              v53 = (a2 - v27) >> 3;
              v54 = (v25 - a2) >> 3;
              if (v53 == v54)
              {
                do
                {
                  v55 = *(v50 - 1);
                  *(v50 - 1) = *(v51 - 1);
                  *(v51 - 1) = v55;
                  if (v50 == a2)
                  {
                    break;
                  }

                  v50 += 8;
                  v56 = v51 == v25;
                  v51 += 8;
                }

                while (!v56);
                v36 = a2;
              }

              else
              {
                v65 = (a2 - v27) >> 3;
                do
                {
                  v66 = v65;
                  v65 = v54;
                  v54 = v66 % v54;
                }

                while (v54);
                v67 = &v27[8 * v65];
                do
                {
                  v69 = *(v67 - 1);
                  v67 -= 8;
                  v68 = v69;
                  v70 = &v52[v67];
                  v71 = v67;
                  do
                  {
                    v72 = v71;
                    v71 = v70;
                    *v72 = *v70;
                    v73 = (v25 - v70) >> 3;
                    v74 = __OFSUB__(v53, v73);
                    v76 = v53 - v73;
                    v75 = (v76 < 0) ^ v74;
                    v70 = &v27[8 * v76];
                    if (v75)
                    {
                      v70 = &v52[v71];
                    }
                  }

                  while (v70 != v67);
                  *v71 = v68;
                }

                while (v67 != v27);
                v36 = &v27[v25 - a2];
              }
            }
          }
        }
      }
    }

    else
    {
      v134 = v136 / 2;
      v25 = &a2[8 * (v136 / 2)];
      if (v23 == a2)
      {
        v27 = &a1[-v14];
        v35 = 0;
        v36 = &a2[8 * (v136 / 2)];
      }

      else
      {
        v131 = a8;
        v26 = (a2 - a1 + v14) >> 3;
        __dst = &a1[-v14];
        v27 = &a1[-v14];
        do
        {
          v28 = &v27[8 * (v26 >> 1)];
          v31 = *v28;
          v30 = v28 + 8;
          v29 = v31;
          if (*v25)
          {
            v32 = *v25 + 8;
          }

          else
          {
            v32 = 0;
          }

          if (v29)
          {
            v33 = v29 + 8;
          }

          else
          {
            v33 = 0;
          }

          v138 = v33;
          v139 = v32;
          v34 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v139);
          if (*llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v138) < *v34)
          {
            v26 >>= 1;
          }

          else
          {
            v27 = v30;
            v26 += ~(v26 >> 1);
          }
        }

        while (v26);
        a8 = v131;
        v21 = a5;
        v24 = v136;
        v23 = __dst;
        v35 = (v27 - __dst) >> 3;
        v36 = &a2[8 * (v136 / 2)];
        if (v27 != a2)
        {
          goto LABEL_49;
        }
      }
    }

    v77 = v21 - v35 - v15;
    v78 = v24 - v134;
    if (v35 + v134 >= v24 + v21 - (v35 + v134) - v15)
    {
      v79 = v35;
      result.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v36, v25, v135, a4, v77, v24 - v134, a7, a8).n128_u64[0];
      v80 = v27;
      v136 = v134;
      a5 = v79;
      a1 = v23;
      a2 = v80;
      a3 = v36;
      if (!v134)
      {
        return result;
      }
    }

    else
    {
      result.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v23, v27, v36, a4, v35, v134, a7, a8).n128_u64[0];
      a5 = v77;
      v136 = v78;
      a1 = v36;
      a2 = v25;
      a3 = v135;
      if (!v78)
      {
        return result;
      }
    }
  }

  if (a5 <= v136)
  {
    if (a1 != a2)
    {
      v102 = a2 - a1 - 8;
      v103 = a7;
      v104 = a1;
      if (v102 < 0x18)
      {
        goto LABEL_139;
      }

      v103 = a7;
      v104 = a1;
      if ((a7 - a1) <= 0x1F)
      {
        goto LABEL_139;
      }

      v105 = (v102 >> 3) + 1;
      v106 = 8 * (v105 & 0x3FFFFFFFFFFFFFFCLL);
      v103 = &a7[v106];
      v104 = &a1[v106];
      v107 = a1 + 16;
      v108 = a7 + 16;
      v109 = v105 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v110 = *v107;
        *(v108 - 1) = *(v107 - 1);
        *v108 = v110;
        v107 += 32;
        v108 += 32;
        v109 -= 4;
      }

      while (v109);
      if (v105 != (v105 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_139:
        do
        {
          v111 = *v104;
          v104 += 8;
          *v103 = v111;
          v103 += 8;
        }

        while (v104 != a2);
      }

      while (a2 != a3)
      {
        if (*a2)
        {
          v112 = *a2 + 8;
        }

        else
        {
          v112 = 0;
        }

        if (*a7)
        {
          v113 = *a7 + 8;
        }

        else
        {
          v113 = 0;
        }

        v138 = v113;
        v139 = v112;
        v114 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v139);
        v115 = *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v138) >= *v114;
        v116 = !v115;
        if (v115)
        {
          v117 = a7;
        }

        else
        {
          v117 = a2;
        }

        a7 += 8 * v115;
        a2 += 8 * v116;
        *a1 = *v117;
        a1 += 8;
        if (a7 == v103)
        {
          return result;
        }
      }

      memmove(a1, a7, v103 - a7);
    }
  }

  else if (a2 != a3)
  {
    v81 = a3 - a2 - 8;
    v82 = a7;
    v83 = a2;
    if (v81 < 0x18)
    {
      goto LABEL_140;
    }

    v82 = a7;
    v83 = a2;
    if ((a7 - a2) <= 0x1F)
    {
      goto LABEL_140;
    }

    v84 = (v81 >> 3) + 1;
    v85 = 8 * (v84 & 0x3FFFFFFFFFFFFFFCLL);
    v82 = &a7[v85];
    v83 = &a2[v85];
    v86 = a2 + 16;
    v87 = a7 + 16;
    v88 = v84 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *(v86 - 1);
      v89 = *v86;
      *(v87 - 1) = result;
      *v87 = v89;
      v86 += 32;
      v87 += 32;
      v88 -= 4;
    }

    while (v88);
    if (v84 != (v84 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_140:
      do
      {
        v90 = *v83;
        v83 += 8;
        *v82 = v90;
        v82 += 8;
      }

      while (v83 != a3);
    }

    v91 = a3;
    while (a2 != a1)
    {
      v92 = a2;
      v93 = *(a2 - 1);
      v94 = *(v82 - 1);
      if (v94)
      {
        v95 = v94 + 8;
      }

      else
      {
        v95 = 0;
      }

      if (v93)
      {
        v96 = v93 + 8;
      }

      else
      {
        v96 = 0;
      }

      v138 = v96;
      v139 = v95;
      v97 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v139);
      v98 = *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v138);
      v99 = *v97;
      v100 = v98 >= v99;
      if (v98 >= v99)
      {
        v101 = v82;
      }

      else
      {
        v101 = a2;
      }

      if (!v100)
      {
        v92 = a2 - 8;
      }

      a2 = v92;
      if (v100)
      {
        v82 -= 8;
      }

      *(a3 - 1) = *(v101 - 1);
      a3 -= 8;
      v91 -= 8;
      if (v82 == a7)
      {
        return result;
      }
    }

    if (v82 != a7)
    {
      v119 = v82 - a7 - 8;
      if (v119 < 0x48 || (v82 - v91) < 0x20)
      {
        v120 = v82;
        goto LABEL_128;
      }

      v123 = (a3 - 16);
      v124 = (v119 >> 3) + 1;
      v125 = 8 * (v124 & 0x3FFFFFFFFFFFFFFCLL);
      v120 = &v82[-v125];
      a3 -= v125;
      v126 = (v82 - 16);
      v127 = v124 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = *v126;
        v123[-1] = v126[-1];
        *v123 = result;
        v123 -= 2;
        v126 -= 2;
        v127 -= 4;
      }

      while (v127);
      if (v124 != (v124 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_128:
        v121 = a3 - 8;
        do
        {
          v122 = *(v120 - 1);
          v120 -= 8;
          *v121 = v122;
          v121 -= 8;
        }

        while (v120 != a7);
      }
    }
  }

  return result;
}

void mlir::detail::PDLByteCodeMutableState::~PDLByteCodeMutableState(mlir::detail::PDLByteCodeMutableState *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    v5 = *(this + 16);
    v6 = *(this + 15);
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 16);
        v5 -= 16;
        v7 = v8;
        if (v8)
        {
          MEMORY[0x1AC55A040](v7, 0x20C8093837F09);
        }
      }

      while (v5 != v4);
      v6 = *(this + 15);
    }

    *(this + 16) = v4;
    operator delete(v6);
  }

  v9 = *(this + 12);
  if (v9)
  {
    *(this + 13) = v9;
    operator delete(v9);
  }

  v10 = *(this + 9);
  if (v10)
  {
    v11 = *(this + 10);
    v12 = *(this + 9);
    if (v11 != v10)
    {
      do
      {
        v14 = *(v11 - 16);
        v11 -= 16;
        v13 = v14;
        if (v14)
        {
          MEMORY[0x1AC55A040](v13, 0x20C8093837F09);
        }
      }

      while (v11 != v10);
      v12 = *(this + 9);
    }

    *(this + 10) = v10;
    operator delete(v12);
  }

  v15 = *(this + 6);
  if (v15)
  {
    *(this + 7) = v15;
    operator delete(v15);
  }

  v16 = *(this + 3);
  if (v16)
  {
    v17 = *(this + 4);
    v18 = *(this + 3);
    if (v17 != v16)
    {
      do
      {
        v20 = *(v17 - 16);
        v17 -= 16;
        v19 = v20;
        if (v20)
        {
          MEMORY[0x1AC55A040](v19, 0x20C8093837F09);
        }
      }

      while (v17 != v16);
      v18 = *(this + 3);
    }

    *(this + 4) = v16;
    operator delete(v18);
  }

  v21 = *this;
  if (*this)
  {
    *(this + 1) = v21;
    operator delete(v21);
  }
}

void llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>::shrink_and_clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = 5 * v2;
  if (v2)
  {
    v5 = *a1 + 24;
    v6 = 40 * v2;
    do
    {
      if ((*(v5 - 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v7 = *(v5 - 16);
        if (v5 != v7)
        {
          free(v7);
        }
      }

      v5 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  v8 = 1 << (33 - __clz(v3 - 1));
  if (v8 <= 64)
  {
    v8 = 64;
  }

  if (v3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 != *(a1 + 16))
  {
    llvm::deallocate_buffer(*a1, (8 * v4));
  }

  *(a1 + 8) = 0;
  if (v9)
  {
    v10 = *a1;
    v11 = 40 * v9 - 40;
    if (v11 < 0x28)
    {
      v12 = *a1;
LABEL_20:
      v16 = (v10 + 40 * v9);
      do
      {
        *v12 = -4096;
        v12 = (v12 + 40);
      }

      while (v12 != v16);
      return;
    }

    v13 = v11 / 0x28 + 1;
    v12 = (v10 + 40 * (v13 & 0xFFFFFFFFFFFFFFELL));
    v14 = *a1;
    v15 = v13 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v14 = -4096;
      *(v14 + 5) = -4096;
      v14 = (v14 + 80);
      v15 -= 2;
    }

    while (v15);
    if (v13 != (v13 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_20;
    }
  }
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>,mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 40 * v6 - 40;
    if (v8 < 0x28)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[5 * v6];
      do
      {
        *v9 = -4096;
        v9 += 5;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x28 + 1;
    v9 = &v7[5 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[5] = -4096;
      v11 += 10;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = *(a1 + 16) - 1;
        v16 = v15 & ((v14 >> 4) ^ (v14 >> 9));
        v17 = (*a1 + 40 * v16);
        v18 = *v17;
        if (v14 != *v17)
        {
          v20 = 0;
          v21 = 1;
          while (v18 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v18 == -8192;
            }

            if (v22)
            {
              v20 = v17;
            }

            v23 = v16 + v21++;
            v16 = v23 & v15;
            v17 = (*a1 + 40 * (v23 & v15));
            v18 = *v17;
            if (v14 == *v17)
            {
              goto LABEL_14;
            }
          }

          if (v20)
          {
            v17 = v20;
          }
        }

LABEL_14:
        *v17 = v14;
        v17[1] = (v17 + 3);
        v17[2] = 0x200000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v17 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v19 = v4[1];
        if (v19 != v4 + 3)
        {
          free(v19);
        }
      }

      v4 += 5;
    }

    while (v4 != a3);
  }
}

uint64_t mlir::MLIRContext::executeActionInternal<mlir::ApplyPatternAction,mlir::Pattern const&>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = &unk_1EB28D000;
  {
    v16 = a3;
    v17 = a1;
    v14 = a6;
    v15 = a2;
    v12 = a4;
    v13 = a5;
    v6 = &unk_1EB28D000;
    a4 = v12;
    a5 = v13;
    a6 = v14;
    a2 = v15;
    v9 = v8;
    a3 = v16;
    a1 = v17;
    if (v9)
    {
      v10 = llvm::getTypeName<mlir::ApplyPatternAction>();
      mlir::detail::TypeIDResolver<mlir::ApplyPatternAction,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v10, v11);
      v6 = &unk_1EB28D000;
      a4 = v12;
      a5 = v13;
      a6 = v14;
      a2 = v15;
      a3 = v16;
      a1 = v17;
    }
  }

  v18[1] = v6[285];
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[0] = &unk_1F1A065A0;
  return mlir::MLIRContext::executeActionInternal(a1, a2, a3, v18);
}

llvm::raw_ostream *mlir::ApplyPatternAction::print(mlir::ApplyPatternAction *this, llvm::raw_ostream *a2)
{
  result = a2;
  v4 = *(a2 + 4);
  if (*(a2 + 3) == v4)
  {
    v6 = *(result + 4);
    if (*(result + 3) - v6 <= 0xCuLL)
    {
LABEL_3:
      result = llvm::raw_ostream::write(result, "apply-pattern", 0xDuLL);
      v7 = *(result + 4);
      if ((*(result + 3) - v7) > 9)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    *v4 = 96;
    v5 = *(a2 + 3);
    v6 = (*(a2 + 4) + 1);
    *(a2 + 4) = v6;
    if ((v5 - v6) <= 0xC)
    {
      goto LABEL_3;
    }
  }

  qmemcpy(v6, "apply-pattern", 13);
  v14 = *(result + 3);
  v7 = *(result + 4) + 13;
  *(result + 4) = v7;
  if ((v14 - v7) > 9)
  {
LABEL_4:
    *(v7 + 8) = 8250;
    *v7 = *" pattern: ";
    v8 = (*(result + 4) + 10);
    *(result + 4) = v8;
    v9 = *(this + 4);
    v10 = *(v9 + 56);
    v11 = *(v9 + 64);
    if (v11 <= *(result + 3) - v8)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = llvm::raw_ostream::write(result, " pattern: ", 0xAuLL);
  v15 = *(this + 4);
  v10 = *(v15 + 56);
  v11 = *(v15 + 64);
  v8 = *(result + 4);
  if (v11 <= *(result + 3) - v8)
  {
LABEL_5:
    if (v11)
    {
      v12 = result;
      v13 = v11;
      result = memcpy(v8, v10, v11);
      *(v12 + 4) += v13;
    }

    return result;
  }

LABEL_11:

  return llvm::raw_ostream::write(result, v10, v11);
}

const char *llvm::getTypeName<mlir::ApplyPatternAction>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ApplyPatternAction]";
  v6 = 74;
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

uint64_t llvm::function_ref<void ()(void)>::callback_fn<mlir::PatternApplicator::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &,llvm::function_ref<BOOL ()(mlir::Pattern const&)>,llvm::function_ref<void ()(mlir::Pattern const&)>,llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>)::$_0>(uint64_t *a1)
{
  v2 = a1[5];
  v4 = *a1;
  v3 = a1[1];
  v5 = *(*v3 + 2);
  ZinIrHalH13g::~ZinIrHalH13g(*v3);
  *(v4 + 24) = v5;
  *(v4 + 32) = v6;
  v7 = *a1[2];
  if (v7)
  {
    result = mlir::detail::PDLByteCode::rewrite(*a1[4], *a1, v7, *(v2 + 56));
    *a1[3] = result;
    if ((result & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_8:
    v11 = a1[7];
    if (*v11)
    {
      result = (*v11)(*(v11 + 8), *a1[6]);
      v12 = a1[3];
      if ((result & 1) == 0)
      {
        *v12 = 0;
        goto LABEL_13;
      }

      if ((*v12 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    *a1[8] = 1;
    return result;
  }

  v9 = *a1[6];
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  result = (*(*v10 + 32))(v10, *a1[1], *a1);
  *a1[3] = result;
  if (result)
  {
    goto LABEL_8;
  }

LABEL_13:
  v13 = a1[9];
  v14 = *v13;
  if (*v13)
  {
    v15 = *a1[6];
    v16 = *(v13 + 8);

    return v14(v16, v15);
  }

  return result;
}

void mlir::scf::SCFDialect::SCFDialect(mlir::scf::SCFDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "scf", 3, a2, &mlir::detail::TypeIDResolver<mlir::scf::SCFDialect,void>::id);
  *v3 = &unk_1F1A06608;
  v4 = v3[4];
  if (!mlir::MLIRContext::isDialectLoading(v4, "arith", 5))
  {
    v5 = v4;
    mlir::MLIRContext::getOrLoadDialect(v4, "arith", 5, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::arith::ArithDialect * mlir::MLIRContext::getOrLoadDialect<mlir::arith::ArithDialect>(void)::{lambda(void)#1}>, &v5);
  }

  mlir::scf::SCFDialect::initialize(this);
}

void sub_1A6D89BB8()
{

  JUMPOUT(0x1AC55A070);
}

uint64_t *mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferDeallocationOpInterface,mlir::scf::InParallelOp,mlir::scf::ReduceReturnOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferDeallocationOpInterface,mlir::scf::InParallelOp,mlir::scf::ReduceReturnOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::InParallelOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferDeallocationOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::arith::ArithDialect::initialize();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::ReduceReturnOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferDeallocationOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
}

uint64_t *mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::ExecuteRegionOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::IndexSwitchOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::InParallelOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
}

uint64_t mlir::scf::ExecuteRegionOp::parse(uint64_t a1, mlir::OperationState *a2)
{
  if ((*(*a1 + 568))(a1, a2 + 64))
  {
    mlir::OperationState::addRegion(a2);
  }

  return 0;
}

uint64_t mlir::scf::ExecuteRegionOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = *(*this + 9);
  v5 = *this - 16;
  if (!v4)
  {
    v5 = 0;
  }

  v12[0] = v5;
  v12[1] = v4;
  mlir::OperandRange::getTypes(v11, v12);
  if (v11[1] != v11[3])
  {
    mlir::AsmPrinter::printArrowTypeList<mlir::ValueTypeRange<mlir::ResultRange> &>(a2, v11);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 0, 1, 0);
  v11[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v11);
  return (*(*a2 + 192))(a2, Value, v9, 0, 0);
}

uint64_t mlir::scf::ExecuteRegionOp::verify(uint64_t **this)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = (((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  if (*v1 == v1)
  {
    v20[0] = "region needs to have at least one block";
    v21 = 259;
    mlir::OpState::emitOpError(this, v20, v22);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v28;
        v15 = __p;
        if (v28 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v28 = v13;
        operator delete(v15);
      }

      v8 = v25;
      if (!v25)
      {
        goto LABEL_41;
      }

      v16 = v26;
      v10 = v25;
      if (v26 == v25)
      {
        goto LABEL_40;
      }

      do
      {
        v18 = *--v16;
        v17 = v18;
        *v16 = 0;
        if (v18)
        {
          MEMORY[0x1AC55A040](v17, 0x1000C8077774924);
        }
      }

      while (v16 != v8);
      goto LABEL_39;
    }
  }

  else
  {
    v2 = v1[1];
    if (v2)
    {
      v3 = v2 - 8;
    }

    else
    {
      v3 = 0;
    }

    if (((*(v3 + 56) - *(v3 + 48)) & 0x7FFFFFFF8) == 0)
    {
      return 1;
    }

    v20[0] = "region cannot have any arguments";
    v21 = 259;
    mlir::OpState::emitOpError(this, v20, v22);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v28;
        v7 = __p;
        if (v28 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v28 = v5;
        operator delete(v7);
      }

      v8 = v25;
      if (!v25)
      {
        goto LABEL_41;
      }

      v9 = v26;
      v10 = v25;
      if (v26 == v25)
      {
LABEL_40:
        v26 = v8;
        operator delete(v10);
LABEL_41:
        if (v23 != &v24)
        {
          free(v23);
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
          MEMORY[0x1AC55A040](v11, 0x1000C8077774924);
        }
      }

      while (v9 != v8);
LABEL_39:
      v10 = v25;
      goto LABEL_40;
    }
  }

  return v4;
}

unint64_t *mlir::scf::ConditionOp::getSuccessorRegions(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*a1 + 48);
  v33[1] = *(*a1 + 56);
  v33[2] = v9;
  v34 = 1;
  v10 = *(v8 + 44);
  v11 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v12 = ((v8 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::ValueRange::ValueRange(&v35, v12, v11);
  v36 = a2;
  v37 = a3;
  v13 = *(*a1 + 16);
  if (v13)
  {
    ParentOp = mlir::Block::getParentOp(v13);
    v15 = *v36;
    if (*v36)
    {
      goto LABEL_6;
    }

LABEL_13:
    v33[0] = 0;
    goto LABEL_14;
  }

  ParentOp = 0;
  v15 = *a2;
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (mlir::BoolAttr::classof(v15))
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v33[0] = v16;
  if (v16 && !mlir::BoolAttr::getValue(v33))
  {
LABEL_20:
    if (v33[0])
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

LABEL_14:
  v17 = ((&ParentOp[4 * ((ParentOp[11] >> 23) & 1) + 17] + ((ParentOp[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * ParentOp[10];
  v18 = v17 + 24;
  v32 = v17 + 24;
  if (*(v17 + 24) == v17 + 24)
  {
    v21 = 0;
    v22 = 0;
    v30 = 0;
    v31 = 0;
    v23 = *(a4 + 8);
    if (v23 < *(a4 + 12))
    {
LABEL_19:
      v24 = (*a4 + 24 * v23);
      *v24 = v18;
      mlir::ValueRange::ValueRange(v24 + 1, v21, v22);
      ++*(a4 + 8);
      goto LABEL_20;
    }
  }

  else
  {
    v19 = *(v17 + 32);
    if (v19)
    {
      v20 = v19 - 8;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v20 + 48);
    v22 = (*(v20 + 56) - v21) >> 3;
    v30 = v21;
    v31 = v22;
    v23 = *(a4 + 8);
    if (v23 < *(a4 + 12))
    {
      goto LABEL_19;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a4, &v32, &v30);
  if (v33[0])
  {
LABEL_21:
    result = mlir::BoolAttr::getValue(v33);
    if (result)
    {
      return result;
    }
  }

LABEL_22:
  v26 = ParentOp[9];
  if (v26)
  {
    v27 = (ParentOp - 4);
  }

  else
  {
    v27 = 0;
  }

  v30 = v27;
  v31 = v26;
  v28 = *(a4 + 8);
  if (v28 >= *(a4 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(a4, &v30);
  }

  v29 = (*a4 + 24 * v28);
  *v29 = 0;
  result = mlir::ValueRange::ValueRange(v29 + 1, v27, v26);
  ++*(a4 + 8);
  return result;
}

void mlir::scf::ForOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  mlir::ValueRange::ValueRange(v19, &v16, 3uLL);
  mlir::OperationState::addOperands(a2, v19[0], v19[1]);
  mlir::OperationState::addOperands(a2, a6, a7);
  v16 = a6;
  v17 = 0;
  if (a7)
  {
    v13 = 0;
    do
    {
      v14 = *(mlir::ValueRange::dereference_iterator(&v16, v13) + 8);
      v15 = *(a2 + 72);
      if (v15 >= *(a2 + 76))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v15 + 1, 8);
        v15 = *(a2 + 72);
      }

      *(*(a2 + 64) + 8 * v15) = v14 & 0xFFFFFFFFFFFFFFF8;
      ++*(a2 + 72);
      v13 = v17 + 1;
      v17 = v13;
    }

    while (v13 != a7);
  }

  mlir::OperationState::addRegion(a2);
}

BOOL mlir::scf::ForOp::verify(uint64_t **this)
{
  if ((*(*this + 46) & 0x80) != 0 && *(*this + 17) - 3 == *(*this + 9))
  {
    return 1;
  }

  v5 = v1;
  v6 = v2;
  mlir::scf::ForOp::verify(this, &v4);
  return v4;
}

uint64_t mlir::scf::ForOp::verifyRegions(uint64_t **this)
{
  v98 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  v4 = v3 - 8;
  if (!v3)
  {
    v4 = 0;
  }

  v5 = *(v4 + 48);
  v6 = v2[9];
  if ((*(*(v6 + 24) + 8) ^ *(*v5 + 8)) >= 8)
  {
    v82[0] = "expected induction variable to be same type as bounds and step";
    v83 = 259;
    mlir::OpState::emitOpError(this, v82, v87);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
    if (v87[0])
    {
      mlir::InFlightDiagnostic::report(v87);
    }

    if (v97 == 1)
    {
      if (v96 != &v97)
      {
        free(v96);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v95;
        v23 = __p;
        if (v95 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v95 = v21;
        operator delete(v23);
      }

      v24 = v92;
      if (!v92)
      {
        goto LABEL_99;
      }

      v25 = v93;
      v26 = v92;
      if (v93 == v92)
      {
        goto LABEL_98;
      }

      do
      {
        v28 = *--v25;
        v27 = v28;
        *v25 = 0;
        if (v28)
        {
          MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
        }
      }

      while (v25 != v24);
      goto LABEL_97;
    }
  }

  else
  {
    v7 = *(v4 + 56);
    v8 = ((v7 - v5) >> 3) - 1;
    if (v8 == *(v2 + 9))
    {
      v9 = *(v2 + 17);
      v10 = v2 - 2;
      if (((v7 - v5) >> 3) == 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      v12 = 1;
      if (v9 != 3 && v5 + 8 != v7)
      {
        v13 = 0;
        v14 = v5 + 16;
        v15 = (v6 + 120);
        v16 = v9 - 4;
        while (1)
        {
          if (v8 == v13)
          {
            return 1;
          }

          v17 = *v15;
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v13);
          v19 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
          if (v19 != (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
          {
            break;
          }

          if ((*(*(v5 + 8 * v13 + 8) + 8) & 0xFFFFFFFFFFFFFFF8) != v19)
          {
            v83 = 257;
            mlir::OpState::emitOpError(this, v82, v87);
            if (v87[0])
            {
              v84 = 3;
              v85 = "types mismatch between ";
              v86 = 23;
              v55 = &v84;
              v56 = v88;
              if (v89 >= v90)
              {
                if (v88 <= &v84 && v88 + 24 * v89 > &v84)
                {
                  v77 = &v84 - v88;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
                  v56 = v88;
                  v55 = (v88 + v77);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
                  v55 = &v84;
                  v56 = v88;
                }
              }

              v57 = &v56[24 * v89];
              v58 = *v55;
              *(v57 + 2) = *(v55 + 2);
              *v57 = v58;
              v59 = ++v89;
              if (v87[0])
              {
                v84 = 5;
                v85 = v13;
                v60 = &v84;
                v61 = v88;
                if (v59 >= v90)
                {
                  if (v88 <= &v84 && v88 + 24 * v59 > &v84)
                  {
                    v79 = &v84 - v88;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v59 + 1, 24);
                    v61 = v88;
                    v60 = (v88 + v79);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v59 + 1, 24);
                    v60 = &v84;
                    v61 = v88;
                  }
                }

                v62 = &v61[24 * v89];
                v63 = *v60;
                *(v62 + 2) = *(v60 + 2);
                *v62 = v63;
                v64 = ++v89;
                if (v87[0])
                {
                  v84 = 3;
                  v85 = "th iter region arg and defined value";
                  v86 = 36;
                  v65 = &v84;
                  v66 = v88;
                  if (v64 >= v90)
                  {
                    if (v88 <= &v84 && v88 + 24 * v64 > &v84)
                    {
                      v81 = &v84 - v88;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v64 + 1, 24);
                      v66 = v88;
                      v65 = (v88 + v81);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v64 + 1, 24);
                      v65 = &v84;
                      v66 = v88;
                    }
                  }

                  v67 = &v66[24 * v89];
                  v68 = *v65;
                  *(v67 + 2) = *(v65 + 2);
                  *v67 = v68;
                  ++v89;
                }
              }
            }

            v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
            if (v87[0])
            {
              mlir::InFlightDiagnostic::report(v87);
            }

            if (v97 != 1)
            {
              return v12;
            }

            if (v96 != &v97)
            {
              free(v96);
            }

            v69 = __p;
            if (__p)
            {
              v70 = v95;
              v71 = __p;
              if (v95 != __p)
              {
                do
                {
                  v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
                }

                while (v70 != v69);
                v71 = __p;
              }

              v95 = v69;
              operator delete(v71);
            }

            v24 = v92;
            if (!v92)
            {
              goto LABEL_99;
            }

            v72 = v93;
            v26 = v92;
            if (v93 == v92)
            {
              goto LABEL_98;
            }

            do
            {
              v74 = *--v72;
              v73 = v74;
              *v72 = 0;
              if (v74)
              {
                MEMORY[0x1AC55A040](v73, 0x1000C8077774924);
              }
            }

            while (v72 != v24);
            goto LABEL_97;
          }

          v12 = 1;
          if (v16 != v13)
          {
            ++v13;
            v15 += 4;
            v20 = v14 == v7;
            v14 += 8;
            if (!v20)
            {
              continue;
            }
          }

          return v12;
        }

        v83 = 257;
        mlir::OpState::emitOpError(this, v82, v87);
        if (v87[0])
        {
          v84 = 3;
          v85 = "types mismatch between ";
          v86 = 23;
          v35 = &v84;
          v36 = v88;
          if (v89 >= v90)
          {
            if (v88 <= &v84 && v88 + 24 * v89 > &v84)
            {
              v76 = &v84 - v88;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
              v36 = v88;
              v35 = (v88 + v76);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
              v35 = &v84;
              v36 = v88;
            }
          }

          v37 = &v36[24 * v89];
          v38 = *v35;
          *(v37 + 2) = *(v35 + 2);
          *v37 = v38;
          v39 = ++v89;
          if (v87[0])
          {
            v84 = 5;
            v85 = v13;
            v40 = &v84;
            v41 = v88;
            if (v39 >= v90)
            {
              if (v88 <= &v84 && v88 + 24 * v39 > &v84)
              {
                v78 = &v84 - v88;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v39 + 1, 24);
                v41 = v88;
                v40 = (v88 + v78);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v39 + 1, 24);
                v40 = &v84;
                v41 = v88;
              }
            }

            v42 = &v41[24 * v89];
            v43 = *v40;
            *(v42 + 2) = *(v40 + 2);
            *v42 = v43;
            v44 = ++v89;
            if (v87[0])
            {
              v84 = 3;
              v85 = "th iter operand and defined value";
              v86 = 33;
              v45 = &v84;
              v46 = v88;
              if (v44 >= v90)
              {
                if (v88 <= &v84 && v88 + 24 * v44 > &v84)
                {
                  v80 = &v84 - v88;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v44 + 1, 24);
                  v46 = v88;
                  v45 = (v88 + v80);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v44 + 1, 24);
                  v45 = &v84;
                  v46 = v88;
                }
              }

              v47 = &v46[24 * v89];
              v48 = *v45;
              *(v47 + 2) = *(v45 + 2);
              *v47 = v48;
              ++v89;
            }
          }
        }

        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
        if (v87[0])
        {
          mlir::InFlightDiagnostic::report(v87);
        }

        if (v97 != 1)
        {
          return v12;
        }

        if (v96 != &v97)
        {
          free(v96);
        }

        v49 = __p;
        if (__p)
        {
          v50 = v95;
          v51 = __p;
          if (v95 != __p)
          {
            do
            {
              v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
            }

            while (v50 != v49);
            v51 = __p;
          }

          v95 = v49;
          operator delete(v51);
        }

        v24 = v92;
        if (!v92)
        {
          goto LABEL_99;
        }

        v52 = v93;
        v26 = v92;
        if (v93 == v92)
        {
          goto LABEL_98;
        }

        do
        {
          v54 = *--v52;
          v53 = v54;
          *v52 = 0;
          if (v54)
          {
            MEMORY[0x1AC55A040](v53, 0x1000C8077774924);
          }
        }

        while (v52 != v24);
        goto LABEL_97;
      }
    }

    else
    {
      v82[0] = "mismatch in number of basic block args and defined values";
      v83 = 259;
      mlir::OpState::emitOpError(this, v82, v87);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
      if (v87[0])
      {
        mlir::InFlightDiagnostic::report(v87);
      }

      if (v97 == 1)
      {
        if (v96 != &v97)
        {
          free(v96);
        }

        v29 = __p;
        if (__p)
        {
          v30 = v95;
          v31 = __p;
          if (v95 != __p)
          {
            do
            {
              v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
            }

            while (v30 != v29);
            v31 = __p;
          }

          v95 = v29;
          operator delete(v31);
        }

        v24 = v92;
        if (!v92)
        {
          goto LABEL_99;
        }

        v32 = v93;
        v26 = v92;
        if (v93 == v92)
        {
LABEL_98:
          v93 = v24;
          operator delete(v26);
LABEL_99:
          if (v88 != v91)
          {
            free(v88);
          }

          return v12;
        }

        do
        {
          v34 = *--v32;
          v33 = v34;
          *v32 = 0;
          if (v34)
          {
            MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
          }
        }

        while (v32 != v24);
LABEL_97:
        v26 = v92;
        goto LABEL_98;
      }
    }
  }

  return v12;
}

uint64_t mlir::scf::ForOp::promoteIfSingleIteration(mlir::scf::ForOp *this, mlir::RewriterBase *a2)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v4 = mlir::constantTripCount(*(*(*this + 72) + 24) | 4, *(*(*this + 72) + 56) | 4, *(*(*this + 72) + 88) | 4);
  result = 0;
  if ((v6 & 1) != 0 && v4 == 1)
  {
    v7 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
    if (v7)
    {
      v8 = (v7 - 8);
    }

    else
    {
      v8 = 0;
    }

    mlir::Block::getTerminator(v8);
    v10 = v9;
    v11 = *(*this + 36);
    if (v11)
    {
      v12 = *this - 16;
    }

    else
    {
      v12 = 0;
    }

    mlir::ValueRange::ValueRange(&v22, v12, v11);
    YieldedValues = mlir::detail::LoopLikeOpInterfaceTrait<mlir::scf::ForOp>::getYieldedValues(this);
    mlir::RewriterBase::replaceAllUsesWith(a2, v22, v23, YieldedValues, v14);
    v22 = &v24;
    v15 = *this;
    v16 = *(*this + 72);
    v24 = *(v16 + 24);
    v23 = 0x600000001;
    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v22, v25, v16 + 96, 0, v16 + 96, *(v15 + 68) - 3);
    v17 = *this;
    v18 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
    if (v18)
    {
      v19 = v18 - 8;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(v17 + 16);
    mlir::ValueRange::ValueRange(v21, v22, v23);
    (*(*a2 + 32))(a2, v19, v20, v17, v21[0], v21[1]);
    (*(*a2 + 16))(a2, v10);
    (*(*a2 + 16))(a2, *this);
    if (v22 != &v24)
    {
      free(v22);
    }

    return 1;
  }

  return result;
}

llvm::raw_ostream *printInitializationList(llvm::raw_ostream *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, size_t a7)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v13 = result;
    v14 = (*(*result + 16))(result);
    if (a7 <= *(v14 + 24) - *(v14 + 32))
    {
      if (a7)
      {
        v15 = v14;
        memcpy(*(v14 + 32), a6, a7);
        *(v15 + 32) += a7;
      }
    }

    else
    {
      llvm::raw_ostream::write(v14, a6, a7);
    }

    v16 = (*(*v13 + 16))(v13);
    v17 = *(v16 + 4);
    if (v17 >= *(v16 + 3))
    {
      llvm::raw_ostream::write(v16, 40);
      v29 = a2;
      v31 = a4;
      v32 = 0;
      if (!a3)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v16 + 4) = v17 + 1;
      *v17 = 40;
      v29 = a2;
      v31 = a4;
      v32 = 0;
      if (!a3)
      {
LABEL_23:
        result = (*(*v13 + 16))(v13);
        v28 = *(result + 4);
        if (*(result + 3) == v28)
        {
          return llvm::raw_ostream::write(result, ")", 1uLL);
        }

        *v28 = 41;
        ++*(result + 4);
        return result;
      }
    }

    v18 = &a2[a3];
    v19 = mlir::ValueRange::dereference_iterator(&v31, 0);
    (*(*v13 + 160))(v13, *a2);
    v20 = (*(*v13 + 16))(v13);
    v21 = v20[4];
    if ((v20[3] - v21) > 2)
    {
      *(v21 + 2) = 32;
      *v21 = 15648;
      v20[4] += 3;
    }

    else
    {
      llvm::raw_ostream::write(v20, " = ", 3uLL);
    }

    (*(*v13 + 160))(v13, v19);
    v22 = v32 + 1;
    v30 = v29 + 1;
    ++v32;
    for (; v30 != v18; ++v32)
    {
      if (v22 == a5)
      {
        break;
      }

      v23 = (*(*v13 + 16))(v13);
      v24 = v23[4];
      if (v23[3] - v24 > 1uLL)
      {
        *v24 = 8236;
        v23[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v23, ", ", 2uLL);
      }

      v25 = mlir::ValueRange::dereference_iterator(&v31, v32);
      (*(*v13 + 160))(v13, *v30);
      v26 = (*(*v13 + 16))(v13);
      v27 = v26[4];
      if ((v26[3] - v27) > 2)
      {
        *(v27 + 2) = 32;
        *v27 = 15648;
        v26[4] += 3;
      }

      else
      {
        llvm::raw_ostream::write(v26, " = ", 3uLL);
      }

      (*(*v13 + 160))(v13, v25);
      v22 = v32 + 1;
      ++v30;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t mlir::scf::ForOp::parse(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  v31 = 0;
  memset(v28, 0, 24);
  v30 = 0;
  v28[4] = 0;
  v28[5] = 0;
  v29 = 0;
  memset(v27, 0, 24);
  memset(v26, 0, 24);
  memset(v25, 0, 24);
  if (((*(*a1 + 704))(a1, v28, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 704))(a1, v27, 1) & 1) == 0)
  {
    return 0;
  }

  v39 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &v36) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 704))(a1, v26, 1) & 1) == 0)
  {
    return 0;
  }

  v39 = 257;
  if (((*(*a1 + 400))(a1, "step", 4, &v36) & 1) == 0 || ((*(*a1 + 704))(a1, v25, 1) & 1) == 0)
  {
    return 0;
  }

  v36 = v38;
  v37 = 0x400000000;
  v33 = v35;
  v34 = 0x400000000;
  v5 = llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::push_back(&v36, v28);
  v6 = (*(*a1 + 408))(a1, "iter_args", 9, v5);
  if ((v6 & 1) != 0 && ((mlir::OpAsmParser::parseAssignmentList(a1) & 1) == 0 || ((*(*a1 + 560))(a1, a2 + 64) & 1) == 0))
  {
    goto LABEL_33;
  }

  if (*(a2 + 72) + 1 == v37)
  {
    if ((*(*a1 + 112))(a1))
    {
      if (((*(*a1 + 536))(a1, &v31) & 1) == 0)
      {
LABEL_33:
        result = 0;
        goto LABEL_34;
      }

      IndexType = v31;
    }

    else
    {
      IndexType = mlir::Builder::getIndexType(v4, v7);
      v31 = IndexType;
    }

    *(v36 + 4) = IndexType;
    if ((*(*a1 + 728))(a1, v27) & 1) != 0 && ((*(*a1 + 728))(a1, v26, v31, a2 + 16) & 1) != 0 && ((*(*a1 + 728))(a1, v25, v31, a2 + 16))
    {
      if ((v6 & 1) == 0 || v37 == 1 || !v34 || (v12 = *(a2 + 72), !v12))
      {
LABEL_32:
        mlir::OperationState::addRegion(a2);
      }

      v13 = 0;
      v14 = v33;
      v15 = *(a2 + 64);
      v21 = (v37 << 6) - 128;
      v22 = v36 + 96;
      v16 = (v12 << 6) - 64;
      v17 = (v34 << 6) - 64;
      while (1)
      {
        *&v22[v13] = *v15;
        if (((*(*a1 + 728))(a1, v14) & 1) == 0)
        {
          break;
        }

        if (v21 != v13 && v17 != v13)
        {
          v14 += 32;
          ++v15;
          v18 = v16 == v13;
          v13 += 64;
          if (!v18)
          {
            continue;
          }
        }

        goto LABEL_32;
      }
    }

    goto LABEL_33;
  }

  v10 = (*(*a1 + 16))(a1);
  v23 = "mismatch in number of loop-carried values and defined values";
  v24 = 259;
  (*(*a1 + 24))(v32, a1, v10, &v23);
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v32);
  result = v11;
LABEL_34:
  if (v33 != v35)
  {
    v19 = result;
    free(v33);
    result = v19;
  }

  if (v36 != v38)
  {
    v20 = result;
    free(v36);
    return v20;
  }

  return result;
}

__n128 llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::push_back(unint64_t *a1, unint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *a1;
  if (v2 >= *(a1 + 3))
  {
    v8 = a2;
    if (v3 <= a2 && v3 + (v2 << 6) > a2)
    {
      v11 = a2 - v3;
      v12 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v2 + 1, 64);
      a1 = v12;
      v3 = *v12;
      a2 = *v12 + v11;
    }

    else
    {
      v10 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v2 + 1, 64);
      a1 = v10;
      v3 = *v10;
      a2 = v8;
    }
  }

  v4 = v3 + (*(a1 + 2) << 6);
  result = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v7;
  *v4 = result;
  *(v4 + 16) = v6;
  ++*(a1 + 2);
  return result;
}

uint64_t mlir::OpAsmParser::parseAssignmentList(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = (*(*a1 + 824))(a1);
  if ((v2 & 0x100) == 0)
  {
    v3 = (*(*a1 + 40))(a1);
    v13 = "expected '('";
    v14 = 259;
    (*(*a1 + 24))(v15, a1, v3, &v13);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
    if (v15[0])
    {
      mlir::InFlightDiagnostic::report(v15);
    }

    if (v23 == 1)
    {
      if (v22 != &v23)
      {
        free(v22);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v21;
        v6 = __p;
        if (v21 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v21 = v4;
        operator delete(v6);
      }

      v7 = v18;
      if (v18)
      {
        v8 = v19;
        v9 = v18;
        if (v19 != v18)
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
          v9 = v18;
        }

        v19 = v7;
        operator delete(v9);
      }

      if (v16 != &v17)
      {
        free(v16);
      }
    }
  }

  return v2;
}

void mlir::scf::ForOp::replaceWithAdditionalYields(mlir::Operation **a1, uint64_t a2, void *a3, unint64_t a4)
{
  v56[7] = *MEMORY[0x1E69E9840];
  v10 = (a2 + 24);
  v11 = *a1;
  v12 = *(v11 + 2);
  ZinIrHalH13g::~ZinIrHalH13g(v11);
  *v10 = v12;
  v10[1] = v13;
  v14 = *a1;
  if ((*(*a1 + 46) & 0x80) != 0)
  {
    v15 = *(v14 + 17);
    v16 = v15 - 3;
    v17 = *(v14 + 9) + 96;
    v18 = v52;
    v50 = v52;
    v51 = 0x600000000;
    if ((v15 - 3) < 7)
    {
      if (v15 == 3)
      {
        v35 = 0;
        LODWORD(v51) = 0;
        v36 = 0;
        v37 = a4;
        if (a4 > 6)
        {
LABEL_21:
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v37, 8);
          v36 = v51;
          v35 = v51;
        }

LABEL_22:
        v53 = a3;
        v54 = 0;
        if (a4)
        {
          v38 = 0;
          v39 = (v50 + 8 * v36);
          do
          {
            *v39++ = mlir::ValueRange::dereference_iterator(&v53, v38);
            v38 = v54 + 1;
            v54 = v38;
          }

          while (v38 != a4);
          v35 = v51;
        }

        LODWORD(v51) = v35 + a4;
        v40 = *(*a1 + 3);
        v41 = *(*a1 + 9);
        v42 = v41[3];
        v43 = v41[7];
        v44 = v41[11];
        v49 = v40;
        Context = mlir::Attribute::getContext(&v49);
        v46 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id, Context);
        if (v47)
        {
          mlir::OperationState::OperationState(&v53, v40, v46);
          mlir::ValueRange::ValueRange(v56, v50, v51);
          mlir::scf::ForOp::build((v10 - 2), &v53, v42, v43, v44, v56[0], v56[1], v48, llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>::callback_fn<mlir::scf::ForOp::replaceWithAdditionalYields(mlir::RewriterBase &,mlir::ValueRange,BOOL,std::function<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::Location,llvm::ArrayRef<mlir::BlockArgument>)> const&)::$_0>, &v55);
        }

        mlir::scf::ForOp::replaceWithAdditionalYields(&v53, v56, &v55);
      }

      v19 = 0;
      v20 = v52;
      if (v16 < 0xD)
      {
        goto LABEL_17;
      }

LABEL_7:
      v21 = &v18[8 * v16 + 8 * v19];
      if (v20 >= v17 + 32 * v16 || v17 + 24 >= v21)
      {
        v23 = v16 & 3;
        if ((v16 & 3) == 0)
        {
          v23 = 4;
        }

        v24 = v16 - v23;
        v25 = &v20[8 * v24];
        v26 = (v17 + 88);
        v27 = (v20 + 16);
        v28 = v24;
        do
        {
          v29 = v26 - 8;
          v30 = vld4q_f64(v29);
          v31 = vld4q_f64(v26);
          *(v27 - 1) = v30;
          *v27 = v31;
          v26 += 16;
          v27 += 2;
          v28 -= 4;
        }

        while (v28);
        v20 = v25;
LABEL_18:
        v32 = v16 - v24;
        v33 = (v17 + 32 * v24 + 24);
        do
        {
          v34 = *v33;
          v33 += 4;
          *v20 = v34;
          v20 += 8;
          --v32;
        }

        while (v32);
        v35 = v51 + v16;
        LODWORD(v51) = v35;
        v36 = v35;
        v37 = a4 + v35;
        if (v37 > HIDWORD(v51))
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }

LABEL_17:
      v24 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v50 = v52;
    v51 = 0x600000000;
    v16 = -3;
    v17 = 96;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v16, 8);
  v19 = v51;
  v18 = v50;
  v20 = v50 + 8 * v51;
  if (v16 < 0xD)
  {
    goto LABEL_17;
  }

  goto LABEL_7;
}

__n128 mlir::scf::ForOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
  if (v5)
  {
    v6 = v5 - 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 48);
  v8 = ((*(v6 + 56) - v7) >> 3) - 1;
  v23 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v9 = &v23;
  mlir::ValueRange::ValueRange(v24, v7 + 8, v8);
  v10 = *(a3 + 8);
  v11 = *a3;
  if (v10 < *(a3 + 12))
  {
    goto LABEL_5;
  }

  if (v11 > &v23 || v11 + 24 * v10 <= &v23)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v10 + 1, 24);
    v11 = *a3;
LABEL_5:
    v12 = &v23;
    goto LABEL_6;
  }

  v21 = &v24[-1] - v11;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v10 + 1, 24);
  v11 = *a3;
  v12 = &v21[*a3];
LABEL_6:
  v13 = v11 + 24 * *(a3 + 8);
  v14 = *v12;
  *(v13 + 16) = v12[2];
  *v13 = v14;
  ++*(a3 + 8);
  v15 = *(*a1 + 36);
  if (v15)
  {
    v16 = *a1 - 16;
  }

  else
  {
    v16 = 0;
  }

  v23 = 0;
  mlir::ValueRange::ValueRange(v24, v16, v15);
  v17 = *(a3 + 8);
  v18 = *a3;
  if (v17 >= *(a3 + 12))
  {
    if (v18 <= &v23 && v18 + 24 * v17 > &v23)
    {
      v22 = &v24[-1] - v18;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v17 + 1, 24);
      v18 = *a3;
      v9 = &v22[*a3];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v17 + 1, 24);
      v18 = *a3;
      v9 = &v23;
    }
  }

  v19 = (v18 + 24 * *(a3 + 8));
  result = *v9;
  v19[1].n128_u64[0] = v9[1].n128_u64[0];
  *v19 = result;
  ++*(a3 + 8);
  return result;
}

uint64_t mlir::scf::ForallOp::promoteIfSingleIteration(mlir::scf::ForallOp *this, mlir::RewriterBase *a2)
{
  v3 = this;
  v50[6] = *MEMORY[0x1E69E9840];
  mlir::scf::ForallOp::getLoopLowerBounds(&__src, this);
  __dst = v41;
  v40 = 0x600000000;
  v4 = v43;
  if (v43)
  {
    v5 = v41;
    v6 = v43;
    if (v43 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v41, v43, 8);
      v6 = v43;
      if (!v43)
      {
LABEL_6:
        LODWORD(v40) = v4;
        goto LABEL_7;
      }

      v5 = __dst;
    }

    memcpy(v5, __src, 8 * v6);
    goto LABEL_6;
  }

LABEL_7:
  if (v45 == 1 && __src != v44)
  {
    free(__src);
  }

  mlir::scf::ForallOp::getLoopUpperBounds(&__src, v3);
  v36 = v38;
  v37 = 0x600000000;
  v7 = v43;
  if (v43)
  {
    v8 = v38;
    v9 = v43;
    if (v43 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v43, 8);
      v9 = v43;
      if (!v43)
      {
LABEL_15:
        LODWORD(v37) = v7;
        goto LABEL_16;
      }

      v8 = v36;
    }

    memcpy(v8, __src, 8 * v9);
    goto LABEL_15;
  }

LABEL_16:
  if (v45 == 1 && __src != v44)
  {
    free(__src);
  }

  mlir::scf::ForallOp::getLoopSteps(&__src, v3);
  v33 = v35;
  v34 = 0x600000000;
  v10 = v43;
  if (v43)
  {
    v11 = v35;
    v12 = v43;
    if (v43 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v43, 8);
      v12 = v43;
      if (!v43)
      {
LABEL_24:
        LODWORD(v34) = v10;
        goto LABEL_25;
      }

      v11 = v33;
    }

    memcpy(v11, __src, 8 * v12);
    goto LABEL_24;
  }

LABEL_25:
  if (v45 == 1 && __src != v44)
  {
    free(__src);
  }

  __src = v44;
  v43 = 0x600000000;
  v13 = v40;
  if (v40)
  {
    if (__dst == v41)
    {
      v14 = v40;
      if (v40 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v44, v40, 8), (v14 = v40) != 0))
      {
        memcpy(__src, __dst, 8 * v14);
      }

      LODWORD(v43) = v13;
    }

    else
    {
      __src = __dst;
      v43 = v40;
      __dst = v41;
      HIDWORD(v40) = 0;
    }

    LODWORD(v40) = 0;
  }

  v45 = v47;
  v46 = 0x600000000;
  v15 = v37;
  if (v37)
  {
    if (v36 != v38)
    {
      v45 = v36;
      v46 = v37;
      v36 = v38;
      HIDWORD(v37) = 0;
LABEL_45:
      LODWORD(v37) = 0;
      goto LABEL_46;
    }

    if (v37 < 7)
    {
      v16 = v37;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v47, v37, 8);
      v16 = v37;
      if (!v37)
      {
        goto LABEL_44;
      }
    }

    memcpy(v45, v36, 8 * v16);
LABEL_44:
    LODWORD(v46) = v15;
    goto LABEL_45;
  }

LABEL_46:
  v48 = v50;
  v49 = 0x600000000;
  v17 = v34;
  v18 = v33;
  if (!v34)
  {
    goto LABEL_56;
  }

  if (v33 == v35)
  {
    if (v34 < 7)
    {
      v19 = v34;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v50, v34, 8);
      v19 = v34;
      v18 = v33;
      if (!v34)
      {
        goto LABEL_54;
      }
    }

    memcpy(v48, v18, 8 * v19);
    v18 = v33;
LABEL_54:
    LODWORD(v49) = v17;
    goto LABEL_55;
  }

  v48 = v33;
  v49 = v34;
  v33 = v35;
  HIDWORD(v34) = 0;
  v18 = v35;
LABEL_55:
  LODWORD(v34) = 0;
LABEL_56:
  if (v18 != v35)
  {
    free(v18);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (__dst != v41)
  {
    free(__dst);
  }

  v20 = v48;
  v21 = 1;
  if (v43 && v46 && v49)
  {
    v32 = v3;
    v22 = a2;
    v23 = __src;
    v24 = v45;
    v25 = 8 * v49 - 8;
    v26 = 8 * v46 - 8;
    v27 = 8 * v43 - 8;
    do
    {
      v28 = mlir::constantTripCount(*v23, *v24, *v20) == 1;
      v21 = v29 & v28;
      if ((v29 & v28) != 1)
      {
        break;
      }

      if (!v27)
      {
        break;
      }

      if (!v26)
      {
        break;
      }

      ++v23;
      ++v24;
      ++v20;
      v30 = v25;
      v25 -= 8;
      v26 -= 8;
      v27 -= 8;
    }

    while (v30);
    v20 = v48;
    a2 = v22;
    v3 = v32;
  }

  if (v20 != v50)
  {
    free(v20);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (__src != v44)
  {
    free(__src);
  }

  if (!v21)
  {
    return 0;
  }

  mlir::scf::promote(a2, *v3);
  return 1;
}

uint64_t mlir::scf::ForallOp::getInitsMutable(mlir::scf::ForallOp *this)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
  v4 = v3[25] + v3[24];
  v6 = v3[26];
  v5 = v3[27];
  v7 = *(*(*(*this + 48) + 96) + 8 * *(*(*this + 48) + 104) - 8);
  Context = mlir::Attribute::getContext((*this + 24));
  v9 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (*this + 16 * ((*(*this + 44) >> 23) & 1) + 96), 4);
  ZinMirCacheTensors::ZinMirCacheTensors(&v12, v7, v9);
  v13 = 3;
  v14 = v12;
  mlir::MutableOperandRange::MutableOperandRange(v15, v2, v4 + v6, v5, &v13, 1);
  result = mlir::MutableOperandRange::operator mlir::OperandRange(v15);
  if (v16 != v17)
  {
    v11 = result;
    free(v16);
    return v11;
  }

  return result;
}

void mlir::scf::ForallOp::getLowerBound(mlir::scf::ForallOp *this@<X0>, mlir::IndexType **a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(*this + 24);
  mlir::scf::ForallOp::getLoopLowerBounds(&__src, this);
  v9 = v11;
  v10 = 0x600000000;
  v6 = v13;
  if (v13)
  {
    if (v13 < 7)
    {
      v8 = v11;
      v7 = v13;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v9, v11, v13, 8);
      v7 = v13;
      if (!v13)
      {
LABEL_7:
        LODWORD(v10) = v6;
        goto LABEL_8;
      }

      v8 = v9;
    }

    memcpy(v8, __src, 8 * v7);
    goto LABEL_7;
  }

LABEL_8:
  if (v14[48] == 1 && __src != v14)
  {
    free(__src);
    v6 = v10;
  }

  mlir::getValueOrCreateConstantIndexOp(a2, v5, v9, v6, a3);
  if (v9 != v11)
  {
    free(v9);
  }
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Type,mlir::Value &,mlir::Value &,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33[5] = *MEMORY[0x1E69E9840];
  v29 = a2;
  Context = mlir::Attribute::getContext(&v29);
  v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id, Context);
  if ((v21 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Type,mlir::Value &,mlir::Value &,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(v31, v33, v32);
  }

  mlir::OperationState::OperationState(v31, a2, v20);
  v22 = *a3;
  v23 = *a4;
  v24 = *a5;
  mlir::ValueRange::ValueRange(v33, *a6, *(a6 + 8));
  mlir::ValueRange::ValueRange(v32, *a7, *(a7 + 8));
  mlir::ValueRange::ValueRange(v30, *a8, *(a8 + 8));
  mlir::tensor::InsertSliceOp::build(a1, v31, v22, v23, v24, v33[0], v33[1], v25, v32[0], v32[1], v30[0], v30[1], *a9, *(a9 + 8), *a10, *(a10 + 8), *a11, *(a11 + 8));
  v26 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v26 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v27;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::OperationState::addOperands(v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

void mlir::OpBuilder::create<mlir::scf::ForOp,mlir::Value,mlir::Value,mlir::Value,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id, Context);
  if (v14)
  {
    mlir::OperationState::OperationState(v22, a2, v13);
    v15 = *a3;
    v16 = *a4;
    v17 = *a5;
    mlir::ValueRange::ValueRange(v23, *a6, *(a6 + 8));
    mlir::scf::ForOp::build(a1, v22, v15, v16, v17, v23[0], v23[1], v18, 0, v19);
  }

  mlir::scf::ForOp::replaceWithAdditionalYields(v22, v23, v21);
}

uint64_t mlir::scf::ForOp::getSpeculatability(mlir::scf::ForOp *this)
{
  v1 = *(*(*this + 72) + 88);
  v11 = &v12;
  v12 = 0;
  v9 = v1;
  DefiningOp = mlir::Value::getDefiningOp(&v9);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v11, DefiningOp) & 1) == 0)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v12, &v9);
  v3 = v10;
  v7 = v10;
  v6 = v9;
  v8 = 1;
  if (v10 < 0x41)
  {
    if (v6 != 1)
    {
      goto LABEL_10;
    }

LABEL_8:
    v4 = 0;
    if (v3 < 0x41)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v3 - llvm::APInt::countLeadingZerosSlowCase(&v6) <= 0x40 && *v6 == 1)
  {
    goto LABEL_8;
  }

LABEL_10:
  v4 = 1;
  if (v3 < 0x41)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (v6)
  {
    MEMORY[0x1AC55A040](v6, 0x1000C8000313F17);
  }

LABEL_13:
  if (v4)
  {
    return 0;
  }

  return 2;
}

BOOL mlir::scf::ForallOp::verify(uint64_t **this)
{
  v176 = *MEMORY[0x1E69E9840];
  v164 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v164);
  v3 = *this;
  v4 = *(*this + 9);
  v5 = *(*this + 11);
  v6 = (v5 >> 23) & 1;
  v7 = &(*this)[2 * v6];
  v8 = (*(v7 + 25) + *(v7 + 24) + *(v7 + 26));
  if ((*(v7 + 27) + v8) - v8 == v4)
  {
    v9 = *(((v7 + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 10) + 8);
    if (v9)
    {
      v10 = v9 - 8;
    }

    else
    {
      v10 = 0;
    }

    v11 = v2;
    if (v2 + v4 == ((*(v10 + 56) - *(v10 + 48)) >> 3))
    {
      if (!v2)
      {
LABEL_11:
        v14 = &v3[2 * v6];
        v15 = *(v14 + 27);
        if (v15)
        {
          v16 = 0;
          v17 = (*(v14 + 25) + *(v14 + 24) + *(v14 + 26));
          v18 = (v15 + v17) - v17;
          v19 = v3[9] + 32 * v17;
          v20 = 1;
          while ((*(*(v19 + 32 * v16 + 24) + 8) ^ *(*(*(v10 + 48) + 8 * (v2 + v20 - 1)) + 8)) < 8)
          {
            v16 = v20++;
            if (v18 <= v16)
            {
              goto LABEL_15;
            }
          }

          v159[0] = "type mismatch between ";
          v160 = 259;
          mlir::OpState::emitOpError(this, v159, &v164);
          if (v164)
          {
            v161 = 5;
            v162 = v16;
            v114 = &v161;
            v115 = v166;
            if (v167 >= v168)
            {
              if (v166 <= &v161 && v166 + 24 * v167 > &v161)
              {
                v153 = &v161 - v166;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
                v115 = v166;
                v114 = (v166 + v153);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
                v114 = &v161;
                v115 = v166;
              }
            }

            v116 = &v115[24 * v167];
            v117 = *v114;
            *(v116 + 2) = *(v114 + 2);
            *v116 = v117;
            v118 = ++v167;
            if (v164)
            {
              v161 = 3;
              v162 = "-th output and corresponding block argument";
              v163 = 43;
              v119 = &v161;
              v120 = v166;
              if (v118 >= v168)
              {
                if (v166 <= &v161 && v166 + 24 * v118 > &v161)
                {
                  v155 = &v161 - v166;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v118 + 1, 24);
                  v120 = v166;
                  v119 = (v166 + v155);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v118 + 1, 24);
                  v119 = &v161;
                  v120 = v166;
                }
              }

              v121 = &v120[24 * v167];
              v122 = *v119;
              *(v121 + 2) = *(v119 + 2);
              *v121 = v122;
              ++v167;
            }
          }

          v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v164);
          if (v164)
          {
            mlir::InFlightDiagnostic::report(&v164);
          }

          if ((v175 & 1) == 0)
          {
            return v53;
          }

          if (v174 != &v175)
          {
            free(v174);
          }

          v123 = __p;
          if (__p)
          {
            v124 = v173;
            v125 = __p;
            if (v173 != __p)
            {
              do
              {
                v124 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v124 - 1);
              }

              while (v124 != v123);
              v125 = __p;
            }

            v173 = v123;
            operator delete(v125);
          }

          v79 = v170;
          if (!v170)
          {
            goto LABEL_152;
          }

          v126 = v171;
          v81 = v170;
          if (v171 == v170)
          {
            goto LABEL_151;
          }

          do
          {
            v128 = *--v126;
            v127 = v128;
            *v126 = 0;
            if (v128)
            {
              MEMORY[0x1AC55A040](v127, 0x1000C8077774924);
            }
          }

          while (v126 != v79);
        }

        else
        {
LABEL_15:
          v21 = v2;
          if (!v14[8])
          {
            goto LABEL_34;
          }

          v164 = v14[8];
          LOBYTE(v165) = 1;
          mlir::ArrayAttr::getValue(&v164);
          if (!v22)
          {
            goto LABEL_34;
          }

          v23 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] != 0;
          v164 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
          LOBYTE(v165) = v23;
          mlir::ArrayAttr::getValue(&v164);
          if (v24 != v11)
          {
            v160 = 257;
            mlir::OpState::emitOpError(this, v159, &v164);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v164, "mapping attribute size must match op rank");
            v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v129);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v164);
            return v53;
          }

          v25 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] != 0;
          v164 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
          LOBYTE(v165) = v25;
          Value = mlir::ArrayAttr::getValue(&v164);
          if (!v27)
          {
LABEL_34:
            v39 = *this;
            v164 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
            v40 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v164);
            v42 = v41;
            v43 = *(*this + 11);
            if ((v43 & 0x800000) != 0)
            {
              v44 = (*this)[9];
            }

            else
            {
              v44 = 0;
            }

            mlir::ValueRange::ValueRange(&v164, v44, LODWORD((*this)[2 * ((v43 >> 23) & 1) + 12]));
            if (!mlir::verifyListOfOperandsOrIntegers(v39, "lower bound", 0xB, v21, v40, v42, v164, v165))
            {
              return 0;
            }

            v164 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 11];
            v45 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v164);
            v47 = v46;
            v48 = *(*this + 11);
            v49 = &(*this)[2 * ((v48 >> 23) & 1)];
            v50 = *(v49 + 24);
            v51 = *(v49 + 25);
            v52 = (v48 & 0x800000) != 0 ? (*this)[9] : 0;
            mlir::ValueRange::ValueRange(&v164, v52 + 32 * v50, (v51 + v50) - v50);
            if (!mlir::verifyListOfOperandsOrIntegers(v39, "upper bound", 0xB, v21, v45, v47, v164, v165))
            {
              return 0;
            }

            v164 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
            v141 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v164);
            v143 = v142;
            DynamicStep = mlir::scf::ForallOp::getDynamicStep(this);
            mlir::ValueRange::ValueRange(&v164, DynamicStep, v145);
            return mlir::verifyListOfOperandsOrIntegers(v39, "step", 4, v21, v141, v143, v164, v165);
          }

          v28 = &Value[v27];
          while (1)
          {
            v29 = **Value;
            {
              v30 = mlir::detail::TypeIDResolver<mlir::DeviceMappingAttrInterface,void>::resolveTypeID(void)::id;
              v31 = *(v29 + 8);
              v32 = *(v29 + 16);
              if (!v32)
              {
                break;
              }
            }

            else
            {
              v157 = v29;
              v158 = Value;
              mlir::scf::ForallOp::verify();
              Value = v158;
              v30 = mlir::detail::TypeIDResolver<mlir::DeviceMappingAttrInterface,void>::resolveTypeID(void)::id;
              v31 = *(v157 + 8);
              v32 = *(v157 + 16);
              if (!v32)
              {
                break;
              }
            }

            v33 = v31;
            v34 = v32;
            do
            {
              v35 = v34 >> 1;
              v36 = &v33[2 * (v34 >> 1)];
              v38 = *v36;
              v37 = v36 + 2;
              v34 += ~(v34 >> 1);
              if (v38 < v30)
              {
                v33 = v37;
              }

              else
              {
                v34 = v35;
              }
            }

            while (v34);
            if (v33 == &v31[2 * v32] || *v33 != v30 || !v33[1])
            {
              break;
            }

            if (++Value == v28)
            {
              goto LABEL_34;
            }
          }

          v160 = 257;
          mlir::OpState::emitOpError(this, v159, &v164);
          if (v164)
          {
            mlir::Diagnostic::operator<<(&v165, **((*this)[6] + 96));
            if (v164)
            {
              v161 = 3;
              v162 = " is not device mapping attribute";
              v163 = 32;
              v130 = &v161;
              v131 = v166;
              if (v167 >= v168)
              {
                if (v166 <= &v161 && v166 + 24 * v167 > &v161)
                {
                  v156 = &v161 - v166;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
                  v131 = v166;
                  v130 = (v166 + v156);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
                  v130 = &v161;
                  v131 = v166;
                }
              }

              v132 = &v131[24 * v167];
              v133 = *v130;
              *(v132 + 2) = *(v130 + 2);
              *v132 = v133;
              ++v167;
            }
          }

          v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v164);
          if (v164)
          {
            mlir::InFlightDiagnostic::report(&v164);
          }

          if ((v175 & 1) == 0)
          {
            return v53;
          }

          if (v174 != &v175)
          {
            free(v174);
          }

          v134 = __p;
          if (__p)
          {
            v135 = v173;
            v136 = __p;
            if (v173 != __p)
            {
              do
              {
                v135 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v135 - 1);
              }

              while (v135 != v134);
              v136 = __p;
            }

            v173 = v134;
            operator delete(v136);
          }

          v79 = v170;
          if (!v170)
          {
            goto LABEL_152;
          }

          v137 = v171;
          v81 = v170;
          if (v171 == v170)
          {
LABEL_151:
            v171 = v79;
            operator delete(v81);
LABEL_152:
            if (v166 != v169)
            {
              free(v166);
            }

            return v53;
          }

          do
          {
            v139 = *--v137;
            v138 = v139;
            *v137 = 0;
            if (v139)
            {
              MEMORY[0x1AC55A040](v138, 0x1000C8077774924);
            }
          }

          while (v137 != v79);
        }

LABEL_150:
        v81 = v170;
        goto LABEL_151;
      }

      v12 = v2;
      v13 = 0;
      while (1)
      {
        v164 = *(*(*(v10 + 48) + 8 * v13) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (!mlir::Type::isIndex(&v164))
        {
          break;
        }

        if (v11 == ++v13)
        {
          v3 = *this;
          v6 = (*(*this + 11) >> 23) & 1;
          v2 = v12;
          goto LABEL_11;
        }
      }

      v159[0] = "expects ";
      v160 = 259;
      mlir::OpState::emitOpError(this, v159, &v164);
      if (v164)
      {
        v161 = 2;
        v162 = v13;
        v99 = &v161;
        v100 = v166;
        if (v167 >= v168)
        {
          if (v166 <= &v161 && v166 + 24 * v167 > &v161)
          {
            v152 = &v161 - v166;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
            v100 = v166;
            v99 = (v166 + v152);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
            v99 = &v161;
            v100 = v166;
          }
        }

        v101 = &v100[24 * v167];
        v102 = *v99;
        *(v101 + 2) = *(v99 + 2);
        *v101 = v102;
        v103 = ++v167;
        if (v164)
        {
          v161 = 3;
          v162 = "-th block argument to be an index";
          v163 = 33;
          v104 = &v161;
          v105 = v166;
          if (v103 >= v168)
          {
            if (v166 <= &v161 && v166 + 24 * v103 > &v161)
            {
              v154 = &v161 - v166;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v103 + 1, 24);
              v105 = v166;
              v104 = (v166 + v154);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v103 + 1, 24);
              v104 = &v161;
              v105 = v166;
            }
          }

          v106 = &v105[24 * v167];
          v107 = *v104;
          *(v106 + 2) = *(v104 + 2);
          *v106 = v107;
          ++v167;
        }
      }

      v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v164);
      if (v164)
      {
        mlir::InFlightDiagnostic::report(&v164);
      }

      if (v175)
      {
        if (v174 != &v175)
        {
          free(v174);
        }

        v108 = __p;
        if (__p)
        {
          v109 = v173;
          v110 = __p;
          if (v173 != __p)
          {
            do
            {
              v109 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v109 - 1);
            }

            while (v109 != v108);
            v110 = __p;
          }

          v173 = v108;
          operator delete(v110);
        }

        v79 = v170;
        if (!v170)
        {
          goto LABEL_152;
        }

        v111 = v171;
        v81 = v170;
        if (v171 == v170)
        {
          goto LABEL_151;
        }

        do
        {
          v113 = *--v111;
          v112 = v113;
          *v111 = 0;
          if (v113)
          {
            MEMORY[0x1AC55A040](v112, 0x1000C8077774924);
          }
        }

        while (v111 != v79);
        goto LABEL_150;
      }
    }

    else
    {
      v159[0] = "region expects ";
      v160 = 259;
      mlir::OpState::emitOpError(this, v159, &v164);
      if (v164)
      {
        v161 = 5;
        v162 = v11;
        v84 = &v161;
        v85 = v166;
        if (v167 >= v168)
        {
          if (v166 <= &v161 && v166 + 24 * v167 > &v161)
          {
            v148 = &v161 - v166;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
            v85 = v166;
            v84 = (v166 + v148);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
            v84 = &v161;
            v85 = v166;
          }
        }

        v86 = &v85[24 * v167];
        v87 = *v84;
        *(v86 + 2) = *(v84 + 2);
        *v86 = v87;
        v88 = ++v167;
        if (v164)
        {
          v161 = 3;
          v162 = " arguments";
          v163 = 10;
          v89 = &v161;
          v90 = v166;
          if (v88 >= v168)
          {
            if (v166 <= &v161 && v166 + 24 * v88 > &v161)
            {
              v150 = &v161 - v166;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v88 + 1, 24);
              v90 = v166;
              v89 = (v166 + v150);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v88 + 1, 24);
              v89 = &v161;
              v90 = v166;
            }
          }

          v91 = &v90[24 * v167];
          v92 = *v89;
          *(v91 + 2) = *(v89 + 2);
          *v91 = v92;
          ++v167;
        }
      }

      v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v164);
      if (v164)
      {
        mlir::InFlightDiagnostic::report(&v164);
      }

      if (v175 == 1)
      {
        if (v174 != &v175)
        {
          free(v174);
        }

        v93 = __p;
        if (__p)
        {
          v94 = v173;
          v95 = __p;
          if (v173 != __p)
          {
            do
            {
              v94 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v94 - 1);
            }

            while (v94 != v93);
            v95 = __p;
          }

          v173 = v93;
          operator delete(v95);
        }

        v79 = v170;
        if (!v170)
        {
          goto LABEL_152;
        }

        v96 = v171;
        v81 = v170;
        if (v171 == v170)
        {
          goto LABEL_151;
        }

        do
        {
          v98 = *--v96;
          v97 = v98;
          *v96 = 0;
          if (v98)
          {
            MEMORY[0x1AC55A040](v97, 0x1000C8077774924);
          }
        }

        while (v96 != v79);
        goto LABEL_150;
      }
    }
  }

  else
  {
    v159[0] = "produces ";
    v160 = 259;
    mlir::OpState::emitOpError(this, v159, &v164);
    if (v164)
    {
      v54 = *(*this + 9);
      v161 = 5;
      v162 = v54;
      v55 = &v161;
      v56 = v166;
      if (v167 >= v168)
      {
        if (v166 <= &v161 && v166 + 24 * v167 > &v161)
        {
          v146 = &v161 - v166;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
          v56 = v166;
          v55 = (v166 + v146);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
          v55 = &v161;
          v56 = v166;
        }
      }

      v57 = &v56[24 * v167];
      v58 = *v55;
      *(v57 + 2) = *(v55 + 2);
      *v57 = v58;
      v59 = ++v167;
      if (v164)
      {
        v161 = 3;
        v162 = " results, but has only ";
        v163 = 23;
        v60 = &v161;
        v61 = v166;
        if (v59 >= v168)
        {
          if (v166 <= &v161 && v166 + 24 * v59 > &v161)
          {
            v147 = &v161 - v166;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v59 + 1, 24);
            v61 = v166;
            v60 = (v166 + v147);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v59 + 1, 24);
            v60 = &v161;
            v61 = v166;
          }
        }

        v62 = &v61[24 * v167];
        v63 = *v60;
        *(v62 + 2) = *(v60 + 2);
        *v62 = v63;
        ++v167;
        if (v164)
        {
          v64 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
          v65 = *(v64 + 27);
          v66 = (*(v64 + 25) + *(v64 + 24) + *(v64 + 26));
          v161 = 5;
          v162 = ((v65 + v66) - v66);
          v67 = &v161;
          v68 = v166;
          if (v167 >= v168)
          {
            if (v166 <= &v161 && v166 + 24 * v167 > &v161)
            {
              v149 = &v161 - v166;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
              v68 = v166;
              v67 = (v166 + v149);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
              v67 = &v161;
              v68 = v166;
            }
          }

          v69 = &v68[24 * v167];
          v70 = *v67;
          *(v69 + 2) = *(v67 + 2);
          *v69 = v70;
          v71 = ++v167;
          if (v164)
          {
            v161 = 3;
            v162 = " outputs";
            v163 = 8;
            v72 = &v161;
            v73 = v166;
            if (v71 >= v168)
            {
              if (v166 <= &v161 && v166 + 24 * v71 > &v161)
              {
                v151 = &v161 - v166;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v71 + 1, 24);
                v73 = v166;
                v72 = (v166 + v151);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v71 + 1, 24);
                v72 = &v161;
                v73 = v166;
              }
            }

            v74 = &v73[24 * v167];
            v75 = *v72;
            *(v74 + 2) = *(v72 + 2);
            *v74 = v75;
            ++v167;
          }
        }
      }
    }

    v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v164);
    if (v164)
    {
      mlir::InFlightDiagnostic::report(&v164);
    }

    if (v175 == 1)
    {
      if (v174 != &v175)
      {
        free(v174);
      }

      v76 = __p;
      if (__p)
      {
        v77 = v173;
        v78 = __p;
        if (v173 != __p)
        {
          do
          {
            v77 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v77 - 1);
          }

          while (v77 != v76);
          v78 = __p;
        }

        v173 = v76;
        operator delete(v78);
      }

      v79 = v170;
      if (!v170)
      {
        goto LABEL_152;
      }

      v80 = v171;
      v81 = v170;
      if (v171 == v170)
      {
        goto LABEL_151;
      }

      do
      {
        v83 = *--v80;
        v82 = v83;
        *v80 = 0;
        if (v83)
        {
          MEMORY[0x1AC55A040](v82, 0x1000C8077774924);
        }
      }

      while (v80 != v79);
      goto LABEL_150;
    }
  }

  return v53;
}

uint64_t mlir::scf::ForallOp::isNormalized(mlir::scf::ForallOp *this)
{
  v30 = *MEMORY[0x1E69E9840];
  mlir::scf::ForallOp::getLoopLowerBounds(&__src, this);
  v23 = v25;
  v24 = 0x600000000;
  v2 = v27;
  if (v27)
  {
    if (v27 < 7)
    {
      v4 = v25;
      v3 = v27;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v27, 8);
      v3 = v27;
      if (!v27)
      {
LABEL_7:
        LODWORD(v24) = v2;
        goto LABEL_8;
      }

      v4 = v23;
    }

    memcpy(v4, __src, 8 * v3);
    goto LABEL_7;
  }

LABEL_8:
  if (v29 == 1 && __src != v28)
  {
    free(__src);
    v2 = v24;
  }

  if (!v2)
  {
LABEL_16:
    mlir::scf::ForallOp::getLoopSteps(&__src, this);
    v20 = v22;
    v21 = 0x600000000;
    v10 = v27;
    if (!v27)
    {
LABEL_23:
      if (v29 == 1 && __src != v28)
      {
        free(__src);
        v10 = v21;
      }

      v13 = v20;
      if (v10)
      {
        v14 = 8 * v10 - 8;
        do
        {
          v15 = *v13++;
          v16 = mlir::getConstantIntValue(v15) == 1;
          v8 = v17 & v16;
          v18 = v8 != 1 || v14 == 0;
          v14 -= 8;
        }

        while (!v18);
        v13 = v20;
        if (v20 == v22)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v8 = 1;
        if (v20 == v22)
        {
          goto LABEL_35;
        }
      }

      free(v13);
      goto LABEL_35;
    }

    if (v27 < 7)
    {
      v12 = v22;
      v11 = v27;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v22, v27, 8);
      v11 = v27;
      if (!v27)
      {
LABEL_22:
        LODWORD(v21) = v10;
        goto LABEL_23;
      }

      v12 = v20;
    }

    memcpy(v12, __src, 8 * v11);
    goto LABEL_22;
  }

  v5 = v23;
  v6 = 8 * v2;
  while (1)
  {
    ConstantIntValue = mlir::getConstantIntValue(*v5);
    v8 = 0;
    if ((v9 & 1) == 0 || ConstantIntValue)
    {
      break;
    }

    ++v5;
    v6 -= 8;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

LABEL_35:
  if (v23 != v25)
  {
    free(v23);
  }

  return v8;
}

BOOL mlir::scf::ForallOp::parse(mlir::AsmParser *a1, mlir::Attribute *a2)
{
  v46[32] = *MEMORY[0x1E69E9840];
  v23[0] = mlir::AsmParser::getContext(a1);
  memset(&v23[1], 0, 24);
  IndexType = mlir::Builder::getIndexType(v23, v4);
  v44 = v46;
  v45 = 0x400000000;
  v6 = 0;
  if (((*(*a1 + 768))(a1, &v44, 1, 0, 0) & 1) == 0)
  {
    goto LABEL_36;
  }

  v21 = 0;
  DenseI64ArrayAttr = 0;
  v20 = 0;
  v41 = v43;
  v42 = 0x100000000;
  v38 = v40;
  v39 = 0x100000000;
  v35 = v37;
  v36 = 0x100000000;
  if ((*(*a1 + 408))(a1, "in", 2))
  {
    __b = 0;
    if (mlir::parseDynamicIndexList(a1, &v38, &v21, &__b, 0))
    {
      if (v39)
      {
        v7 = v38;
        v8 = 32 * v39;
        while (((*(*a1 + 728))(a1, v7, IndexType, a2 + 16) & 1) != 0)
        {
          v7 += 32;
          v8 -= 32;
          if (!v8)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

LABEL_8:
      v9 = v45;
      __b = v33;
      HIDWORD(v32) = 6;
      if (v45 < 7)
      {
        if (v45)
        {
          bzero(v33, 8 * v45);
        }

        v10 = v33;
      }

      else
      {
        LODWORD(v32) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v33, v45, 8);
        v10 = __b;
        bzero(__b, 8 * v9);
      }

      LODWORD(v32) = v9;
      DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(v23, v10, v9);
      if (__b != v33)
      {
        free(__b);
      }

      __b = v33;
      HIDWORD(v32) = 6;
      if (v9 < 7)
      {
        if (v9)
        {
          memset_pattern16(v33, &unk_1A75989B0, 8 * v9);
        }

        v18 = v33;
      }

      else
      {
        LODWORD(v32) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v33, v9, 8);
        v18 = __b;
        memset_pattern16(__b, &unk_1A75989B0, 8 * v9);
      }

      LODWORD(v32) = v9;
      v20 = mlir::Builder::getDenseI64ArrayAttr(v23, v18, v9);
      if (__b != v33)
      {
        free(__b);
      }

LABEL_51:
      __b = v33;
      v32 = 0x400000000;
      v28 = v30;
      v29 = 0x400000000;
      v19 = (*(*a1 + 40))(a1);
      if (((*(*a1 + 408))(a1, "shared_outs", 11) & 1) == 0)
      {
        goto LABEL_56;
      }

      if (v29 == *(a2 + 18))
      {
        if ((mlir::OpAsmParser::parseAssignmentList(a1) & 1) != 0 && ((*(*a1 + 568))(a1, a2 + 64) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v28, a2 + 64, v19, a2 + 16))
        {
LABEL_56:
          v24[0] = &v25;
          v24[1] = 0x400000000;
          operator new();
        }

        v6 = 0;
      }

      else
      {
        v26 = "mismatch between out operands and types";
        v27 = 259;
        (*(*a1 + 24))(v24, a1, v19, &v26);
        v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v24);
      }

      if (v28 != v30)
      {
        free(v28);
      }

      if (__b != v33)
      {
        free(__b);
      }

      goto LABEL_30;
    }
  }

  else if ((*(*a1 + 136))(a1))
  {
    __b = 0;
    if (mlir::parseDynamicIndexList(a1, &v41, &DenseI64ArrayAttr, &__b, 0))
    {
      if (v42)
      {
        v11 = v41;
        v12 = 32 * v42;
        while (((*(*a1 + 728))(a1, v11, IndexType, a2 + 16) & 1) != 0)
        {
          v11 += 32;
          v12 -= 32;
          if (!v12)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_29;
      }

LABEL_16:
      v34 = 257;
      if ((*(*a1 + 400))(a1, "to", 2, &__b))
      {
        __b = 0;
        if (mlir::parseDynamicIndexList(a1, &v38, &v21, &__b, 0))
        {
          if (v39)
          {
            v13 = v38;
            v14 = 32 * v39;
            while (((*(*a1 + 728))(a1, v13, IndexType, a2 + 16) & 1) != 0)
            {
              v13 += 32;
              v14 -= 32;
              if (!v14)
              {
                goto LABEL_22;
              }
            }

            goto LABEL_29;
          }

LABEL_22:
          v34 = 257;
          if ((*(*a1 + 400))(a1, "step", 4, &__b))
          {
            __b = 0;
            if (mlir::parseDynamicIndexList(a1, &v35, &v20, &__b, 0))
            {
              if (v36)
              {
                v15 = v35;
                v16 = 32 * v36;
                while (((*(*a1 + 728))(a1, v15, IndexType, a2 + 16) & 1) != 0)
                {
                  v15 += 32;
                  v16 -= 32;
                  if (!v16)
                  {
                    goto LABEL_51;
                  }
                }

                goto LABEL_29;
              }

              goto LABEL_51;
            }
          }
        }
      }
    }
  }

LABEL_29:
  v6 = 0;
LABEL_30:
  if (v35 != v37)
  {
    free(v35);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }

LABEL_36:
  if (v44 != v46)
  {
    free(v44);
  }

  return v6;
}

void mlir::scf::ForallOp::ensureTerminator(uint64_t *a1, void *a2, uint64_t a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  mlir::impl::ensureRegionTerminator(a1, a2, a3, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl<mlir::scf::ForallOp>::buildTerminator);
  v5 = a1[1];
  if (v5)
  {
    v6 = (v5 - 8);
  }

  else
  {
    v6 = 0;
  }

  mlir::Block::getTerminator(v6);
  if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::InParallelOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = (((v8 + 16 * ((*(v8 + 44) >> 23) & 1) + ((*(v8 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40));
  if (*v9 == v9)
  {
    mlir::ValueRange::ValueRange(v10, 0, 0);
    mlir::OpBuilder::createBlock(a2, v9, 0, v10[0], v10[1], 0, 0);
  }
}

void mlir::scf::ForallOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, char a12, void (*a13)(uint64_t, uint64_t, uint64_t, void *, uint64_t), uint64_t a14)
{
  v56[6] = *MEMORY[0x1E69E9840];
  v54 = v56;
  v55 = 0x600000000;
  v51 = &v53;
  v52 = 0x600000000;
  v48 = &v50;
  v49 = 0x600000000;
  v45 = &v47;
  v46 = 0x600000000;
  v42 = &v44;
  v43 = 0x600000000;
  v39 = &v41;
  v40 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a3, a4, &v45, &v54);
  mlir::dispatchIndexOpFoldResults(a5, a6, &v42, &v51);
  mlir::dispatchIndexOpFoldResults(a7, a8, &v39, &v48);
  mlir::ValueRange::ValueRange(&v35, v45, v46);
  mlir::OperationState::addOperands(a2, v35, v36);
  mlir::ValueRange::ValueRange(&v35, v42, v43);
  mlir::OperationState::addOperands(a2, v35, v36);
  mlir::ValueRange::ValueRange(&v35, v39, v40);
  mlir::OperationState::addOperands(a2, v35, v36);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::TypeRange::TypeRange(&v35, a9, a10);
  v21 = v35;
  v20 = v36;
  v22 = *(a2 + 72);
  if (v36 + v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v36 + v22, 8);
    v22 = *(a2 + 72);
  }

  if (v20)
  {
    v23 = 0;
    v24 = *(a2 + 64) + 8 * v22;
    do
    {
      *(v24 + 8 * v23) = mlir::TypeRange::dereference_iterator(v21, v23);
      ++v23;
    }

    while (v20 != v23);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v20;
  v25 = *(*(*(a2 + 8) + 96) + 8);
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, v54, v55);
  ZinMirCacheTensors::ZinMirCacheTensors(&v35, v25, DenseI64ArrayAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v35, v36);
  v27 = *(*(*(a2 + 8) + 96) + 24);
  v28 = mlir::Builder::getDenseI64ArrayAttr(a1, v51, v52);
  ZinMirCacheTensors::ZinMirCacheTensors(&v35, v27, v28);
  mlir::NamedAttrList::push_back(a2 + 112, v35, v36);
  v29 = *(*(*(a2 + 8) + 96) + 16);
  v30 = mlir::Builder::getDenseI64ArrayAttr(a1, v48, v49);
  ZinMirCacheTensors::ZinMirCacheTensors(&v35, v29, v30);
  mlir::NamedAttrList::push_back(a2 + 112, v35, v36);
  v38[0] = v46;
  v38[1] = v43;
  v38[2] = v40;
  v38[3] = a10;
  DenseI32ArrayAttr = mlir::Builder::getDenseI32ArrayAttr(a1, v38, 4);
  Context = mlir::Attribute::getContext(a2);
  LOWORD(v37) = 261;
  v35 = "operandSegmentSizes";
  v36 = 19;
  v33 = mlir::StringAttr::get(Context, &v35);
  ZinMirCacheTensors::ZinMirCacheTensors(v34, v33, DenseI32ArrayAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v34[0], v34[1]);
  if (a12)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&v35, **(*(a2 + 8) + 96), a11);
    mlir::NamedAttrList::push_back(a2 + 112, v35, v36);
  }

  mlir::OperationState::addRegion(a2);
}

void mlir::scf::ForallOp::getCombiningOps(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (a3 + 16);
  *a3 = a3 + 16;
  *(a3 + 8) = 0x600000000;
  v6 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  mlir::Block::getTerminator(v7);
  v9 = *(((v8 + 16 * ((*(v8 + 44) >> 23) & 1) + ((*(v8 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40) + 8);
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = (v10 + 32);
  v12 = *(v10 + 40);
  if (v12 != (v10 + 32))
  {
    do
    {
      ZinIrHalH13g::~ZinIrHalH13g(v12);
      v14 = *(*(v13 + 48) + 16);
      v15 = v14 == &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id;
      if (v14 == &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      v20 = v16;
      if (v15)
      {
        ODSOperandIndexAndLength = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v20, 1u);
        v18 = v20;
        if (*(*(v20 + 72) + 32 * ODSOperandIndexAndLength + 24) == a2)
        {
          v19 = *(a3 + 8);
          if (v19 >= *(a3 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a3, v5, v19 + 1, 8);
            v19 = *(a3 + 8);
          }

          *(*a3 + 8 * v19) = v18;
          ++*(a3 + 8);
        }
      }

      v12 = *(v12 + 1);
    }

    while (v12 != v11);
  }
}

void mlir::scf::ForallOp::getLoopInductionVars(mlir::scf::ForallOp *this@<X0>, uint64_t a2@<X8>)
{
  v30[6] = *MEMORY[0x1E69E9840];
  v3 = *(*this + 44);
  v4 = *this + 16 * ((v3 >> 23) & 1);
  v5 = *(((v4 + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v5)
  {
    v6 = v5 - 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 48);
  v8 = (*(v6 + 56) - v7) >> 3;
  __src = *(v4 + 72);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  __src = v30;
  v29 = 0x600000000;
  if (v10 < 7)
  {
    v11 = 0;
    if (!v10)
    {
      v12 = v30;
      goto LABEL_19;
    }

    v13 = 0;
    v12 = v30;
    v14 = v30;
    v15 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v15 < 7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v30, v10, 8);
    v11 = v29;
    v12 = __src;
    v13 = v29;
    v14 = __src + 8 * v29;
    v15 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v15 < 7)
    {
LABEL_9:
      v16 = v7;
      do
      {
LABEL_16:
        v24 = *v16++;
        *v14++ = v24;
      }

      while (v16 != (v7 + 8 * v10));
      goto LABEL_19;
    }
  }

  v17 = &v12[v13];
  v16 = v7;
  if (v17 - v7 < 0x20)
  {
    goto LABEL_16;
  }

  v18 = v15 + 1;
  v19 = 8 * (v18 & 0x3FFFFFFFFFFFFFFCLL);
  v14 = (v14 + v19);
  v16 = (v7 + v19);
  v20 = (v7 + 16);
  v21 = v17 + 2;
  v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v23 = *v20;
    *(v21 - 1) = *(v20 - 1);
    *v21 = v23;
    v20 += 2;
    v21 += 2;
    v22 -= 4;
  }

  while (v22);
  if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_16;
  }

LABEL_19:
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v25 = (v11 + v10);
  LODWORD(v29) = v25;
  if (v25 && &__src != a2)
  {
    if (v12 == v30)
    {
      v27 = v25;
      if (v25 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v25, 8), v27 = v29, v12 = __src, v29))
      {
        memcpy(*a2, v12, 8 * v27);
        v12 = __src;
      }

      *(a2 + 8) = v25;
    }

    else
    {
      *a2 = v12;
      v26 = HIDWORD(v29);
      *(a2 + 8) = v25;
      *(a2 + 12) = v26;
      __src = v30;
      HIDWORD(v29) = 0;
      v12 = v30;
    }

    LODWORD(v29) = 0;
  }

  *(a2 + 64) = 1;
  if (v12 != v30)
  {
    free(v12);
  }
}

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

uint64_t mlir::scf::InParallelOp::verify(uint64_t **this)
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

    v15 = (v14 + 32);
    v16 = *(v14 + 40);
    if (v16 == (v14 + 32))
    {
      return 1;
    }

    v17 = ParentOp;
    v18 = ParentOp + 64;
    while (1)
    {
      ZinIrHalH13g::~ZinIrHalH13g(v16);
      if (*(v19[6] + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id)
      {
        break;
      }

      v20 = v19;
      v55 = v19;
      ODSOperandIndexAndLength = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v55, 1u);
      v22 = *(v55[9] + 32 * ODSOperandIndexAndLength + 24);
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
            MEMORY[0x1AC55A040](v35, 0x1000C8077774924);
          }
        }

        while (v34 != v8);
        goto LABEL_73;
      }

      v16 = *(v16 + 1);
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
        MEMORY[0x1AC55A040](v45, 0x1000C8077774924);
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
        MEMORY[0x1AC55A040](v11, 0x1000C8077774924);
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

void mlir::scf::InParallelOp::parse(uint64_t a1, uint64_t a2)
{
  v4[64] = *MEMORY[0x1E69E9840];
  (*(*a1 + 32))(a1);
  v2 = v4;
  v3 = 0x800000000;
  operator new();
}

uint64_t mlir::scf::IfOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
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
  v9 = *(v8 + 32);
  if (v9 == (v8 + 32))
  {
    return 0;
  }

  ZinIrHalH13g::~ZinIrHalH13g(v9);
  if (*(*(v10 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    return 0;
  }

  if ((*(v10 + 46) & 0x80) != 0)
  {
    v12 = *(v10 + 72);
    v13 = *(v10 + 68);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v18 = v12;
  v19 = v13;
  mlir::OperandRange::getTypes(&v14, &v18);
  mlir::ValueRange::ValueRange(&v18, v14 + 32 * v15, v16 - v15);
  mlir::TypeRange::TypeRange(v17, v18, v19);
  llvm::SmallVectorImpl<mlir::Type>::insert<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a5, *a5 + 8 * *(a5 + 8), v17[0], 0, v17[0], v17[1]);
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

void mlir::scf::IfOp::build(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v13[0] = a5;
  v10 = *(a2 + 72);
  if (a4 + v10 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), a4 + v10, 8);
    v10 = *(a2 + 72);
  }

  if (a4)
  {
    v11 = 0;
    v12 = *(a2 + 64) + 8 * v10;
    do
    {
      *(v12 + 8 * v11) = mlir::TypeRange::dereference_iterator(a3, v11);
      ++v11;
    }

    while (a4 != v11);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + a4;
  mlir::OperationState::addOperands(a2, v13, 1uLL);
  mlir::OperationState::addRegion(a2);
}

void mlir::scf::IfOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v12[0] = a5;
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), a4 + v9, 8);
    v9 = *(a2 + 72);
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      *(v11 + 8 * v10) = mlir::TypeRange::dereference_iterator(a3, v10);
      ++v10;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
  mlir::OperationState::addOperands(a2, v12, 1uLL);
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::scf::IfOp::verify(uint64_t **this)
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

  v36 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v36);
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
    v35 = &v36;
    v36 = 0;
    v38 = &v39;
    v39 = 0;
    if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v38, result) && ((v6 = *(*(*(v5 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v6 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v7 = 1), !v7 ? (v8 = v6 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v8 = 1), !v8 ? (v9 = v6 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v9 = 1), v9 && mlir::detail::constant_int_value_binder::match(&v35, v39)))
    {
      v10 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke(&v36);
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

    if (v36)
    {
      MEMORY[0x1AC55A040](v36, 0x1000C8000313F17);
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

void mlir::scf::ParallelOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, __n128 a9, __n128 a10)
{
  v14 = a4;
  v60 = *MEMORY[0x1E69E9840];
  v59 = a10;
  mlir::OperationState::addOperands(a2, a3, a4);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a10.n128_i64[0], a10.n128_u64[1]);
  v58[0] = v14;
  v58[1] = a6;
  v58[2] = a8;
  v58[3] = a10.n128_u32[2];
  DenseI32ArrayAttr = mlir::Builder::getDenseI32ArrayAttr(a1, v58, 4);
  Context = mlir::Attribute::getContext(a2);
  v57 = 261;
  v54.n128_u64[0] = "operandSegmentSizes";
  v54.n128_u64[1] = 19;
  v19 = mlir::StringAttr::get(Context, v54.n128_u64);
  ZinMirCacheTensors::ZinMirCacheTensors(&v50, v19, DenseI32ArrayAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v50, v51);
  mlir::ValueRange::getTypes(&v54, &v59);
  v20 = v54.n128_u64[1];
  v21 = v54.n128_u64[0];
  v22 = v56;
  v23 = v56 - v54.n128_u32[2];
  v24 = *(a2 + 72);
  v25 = v56 + v24 - v54.n128_u64[1];
  if (v25 > *(a2 + 76))
  {
    v26 = v54.n128_u64[1];
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v25, 8);
    v20 = v26;
    v24 = *(a2 + 72);
  }

  v27 = *(a2 + 64);
  v50 = v21;
  v51 = v20;
  if (v22 != v20)
  {
    v28 = (v27 + 8 * v24);
    do
    {
      *v28++ = *(mlir::ValueRange::dereference_iterator(&v50, v20) + 8) & 0xFFFFFFFFFFFFFFF8;
      v20 = (v51 + 1);
      v51 = v20;
    }

    while (v20 != v22);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + v23;
  IndexType = mlir::Builder::getIndexType(a1, v20);
  v30 = IndexType;
  v54.n128_u64[0] = &v55;
  v54.n128_u32[3] = 8;
  if (a8 >= 9uLL)
  {
    v54.n128_u32[2] = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, &v55, a8, 8);
    v31 = a8 & 3;
    v32 = a8 - v31;
    v33 = (v54.n128_u64[0] + 8 * v32);
    v34 = vdupq_n_s64(v30);
    v35 = (v54.n128_u64[0] + 16);
    do
    {
      v35[-1] = v34;
      *v35 = v34;
      v35 += 2;
      v32 -= 4;
    }

    while (v32);
    if ((a8 & 3) != 0)
    {
      *v33 = v30;
      if (v31 != 1)
      {
        v33[1] = v30;
        if (v31 != 2)
        {
          v33[2] = v30;
        }
      }
    }

LABEL_14:
    v54.n128_u32[2] = a8;
    v50 = &v52;
    v51 = 0x800000000;
    v36 = *a2;
    if (a8 >= 9uLL)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, &v52, a8, 8);
      v37 = a8 & 3;
      v38 = a8 - v37;
      v39 = (v50 + 8 * v38);
      v40 = vdupq_n_s64(v36);
      v41 = (v50 + 16);
      do
      {
        v41[-1] = v40;
        *v41 = v40;
        v41 += 2;
        v38 -= 4;
      }

      while (v38);
      if ((a8 & 3) != 0)
      {
        *v39 = v36;
        if (v37 != 1)
        {
          v39[1] = v36;
          if (v37 != 2)
          {
            v39[2] = v36;
          }
        }
      }

LABEL_38:
      LODWORD(v51) = a8;
      mlir::OperationState::addRegion(a2);
    }

    if (!a8)
    {
      goto LABEL_38;
    }

    v46 = 0;
    v47 = vdupq_n_s64(a8 - 1);
    v48 = &v53;
    while (1)
    {
      v49 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(vdupq_n_s64(v46), xmmword_1A7598670)));
      if (v49.i8[0])
      {
        *(v48 - 1) = v36;
        if (v49.i8[4])
        {
LABEL_36:
          *v48 = v36;
        }
      }

      else if (v49.i8[4])
      {
        goto LABEL_36;
      }

      v46 += 2;
      v48 += 2;
      if (((a8 + 1) & 0x1E) == v46)
      {
        goto LABEL_38;
      }
    }
  }

  if (!a8)
  {
    LODWORD(a8) = 0;
    v54.n128_u32[2] = 0;
    v50 = &v52;
    HIDWORD(v51) = 8;
    goto LABEL_38;
  }

  v42 = 0;
  v43 = vdupq_n_s64(a8 - 1);
  v44 = &v56;
  while (1)
  {
    v45 = vmovn_s64(vcgeq_u64(v43, vorrq_s8(vdupq_n_s64(v42), xmmword_1A7598670)));
    if (v45.i8[0])
    {
      *(v44 - 1) = IndexType;
      if (v45.i8[4])
      {
LABEL_28:
        *v44 = IndexType;
      }
    }

    else if (v45.i8[4])
    {
      goto LABEL_28;
    }

    v42 += 2;
    v44 += 2;
    if (((a8 + 1) & 0x1E) == v42)
    {
      goto LABEL_14;
    }
  }
}

uint64_t mlir::scf::ParallelOp::parse(uint64_t a1, mlir::OperationState *a2)
{
  v34[32] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  v32 = v34;
  v33 = 0x400000000;
  if ((*(*a1 + 768))(a1, &v32, 1, 0, 0))
  {
    v29 = v31;
    v30 = 0x400000000;
    if ((*(*a1 + 136))(a1) & 1) != 0 && ((*(*a1 + 720))(a1, &v29, 1, 1, v33))
    {
      IndexType = mlir::Builder::getIndexType(v4, v5);
      if (v30)
      {
        v7 = IndexType;
        v8 = v29;
        v9 = 32 * v30;
        while (((*(*a1 + 728))(a1, v8, v7, a2 + 16) & 1) != 0)
        {
          v8 += 32;
          v9 -= 32;
          if (!v9)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v26 = v28;
        v27 = 0x400000000;
        v25[8] = 257;
        if ((*(*a1 + 400))(a1, "to", 2, &v23) & 1) != 0 && ((*(*a1 + 720))(a1, &v26, 1, 1, v33))
        {
          v11 = mlir::Builder::getIndexType(v4, v10);
          if (v27)
          {
            v12 = v11;
            v13 = v26;
            v14 = 32 * v27;
            while (((*(*a1 + 728))(a1, v13, v12, a2 + 16) & 1) != 0)
            {
              v13 += 32;
              v14 -= 32;
              if (!v14)
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_14:
            v23 = v25;
            v24 = 0x400000000;
            v22[8] = 257;
            if ((*(*a1 + 400))(a1, "step", 4, v21) & 1) != 0 && ((*(*a1 + 720))(a1, &v23, 1, 1, v33))
            {
              v16 = mlir::Builder::getIndexType(v4, v15);
              if (v24)
              {
                v17 = v16;
                v18 = v23;
                v19 = 32 * v24;
                while (((*(*a1 + 728))(a1, v18, v17, a2 + 16) & 1) != 0)
                {
                  v18 += 32;
                  v19 -= 32;
                  if (!v19)
                  {
                    goto LABEL_20;
                  }
                }
              }

              else
              {
LABEL_20:
                v21[0] = v22;
                v21[1] = 0x400000000;
                if (((*(*a1 + 408))(a1, "init", 4) & 1) == 0 || ((*(*a1 + 720))(a1, v21, 1, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 568))(a1, a2 + 64))
                {
                  mlir::OperationState::addRegion(a2);
                }

                if (v21[0] != v22)
                {
                  free(v21[0]);
                }
              }
            }

            if (v23 != v25)
            {
              free(v23);
            }
          }
        }

        if (v26 != v28)
        {
          free(v26);
        }
      }
    }

    if (v29 != v31)
    {
      free(v29);
    }
  }

  if (v32 != v34)
  {
    free(v32);
  }

  return 0;
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

uint64_t mlir::scf::ReduceOp::verifyRegions(uint64_t **this)
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
    v6 = v5 ? v5 - 8 : 0;
    if (*(v6 + 32) == v6 + 32)
    {
      break;
    }

    v7 = *(*((*this)[9] + 32 * v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v9 = *(v6 + 48);
    v8 = *(v6 + 56);
    if (((v8 - v9) & 0x7FFFFFFF8) != 0x10)
    {
      goto LABEL_14;
    }

    if (v8 != v9)
    {
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
          if (v83 != v82)
          {
            do
            {
              v42 = *--v39;
              v41 = v42;
              *v39 = 0;
              if (v42)
              {
                MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
              }
            }

            while (v39 != v38);
            goto LABEL_78;
          }

          goto LABEL_79;
        }

        goto LABEL_80;
      }

      return v11;
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

      if (v87 == 1)
      {
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
        if (v82)
        {
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
                MEMORY[0x1AC55A040](v62, 0x1000C8077774924);
              }
            }

            while (v61 != v38);
            goto LABEL_78;
          }

          goto LABEL_79;
        }

        goto LABEL_80;
      }

      return v11;
    }

    if (++v4 == v2)
    {
      return 1;
    }
  }

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

  if (v87 == 1)
  {
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
    if (v82)
    {
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
            MEMORY[0x1AC55A040](v56, 0x1000C8077774924);
          }
        }

        while (v55 != v38);
LABEL_78:
        v40 = v82;
      }

LABEL_79:
      v83 = v38;
      operator delete(v40);
    }

LABEL_80:
    if (v78 != v81)
    {
      free(v78);
    }
  }

  return v11;
}

uint64_t mlir::scf::ReduceReturnOp::verify(uint64_t **this)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = *(**((*this)[2] + 48) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v1 == (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
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
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
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

void mlir::scf::WhileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, unint64_t a6, void (*a7)(uint64_t, uint64_t, unint64_t, unint64_t, unint64_t), uint64_t a8, void (*a9)(uint64_t, uint64_t, unint64_t, unint64_t, unint64_t), uint64_t a10)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v26[4] = a5;
  v26[5] = a6;
  mlir::OperationState::addOperands(a2, a5, a6);
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), a4 + v15, 8);
    v15 = *(a2 + 72);
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      *(v17 + 8 * v16) = mlir::TypeRange::dereference_iterator(a3, v16);
      ++v16;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  v24 = v26;
  v25 = 0x400000000;
  if (a6 < 5)
  {
    v22 = a5;
    v23 = 0;
    if (!a6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, a6, 8);
    v22 = a5;
    v23 = 0;
  }

  v18 = 0;
  do
  {
    v27[0] = mlir::ValueRange::dereference_iterator(&v22, v18);
    Loc = mlir::Value::getLoc(v27);
    v20 = v25;
    if (v25 >= HIDWORD(v25))
    {
      v21 = Loc;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v25 + 1, 8);
      Loc = v21;
      v20 = v25;
    }

    *(v24 + v20) = Loc;
    LODWORD(v25) = v25 + 1;
    v18 = v23 + 1;
    v23 = v18;
  }

  while (v18 != a6);
LABEL_14:
  mlir::OperationState::addRegion(a2);
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

void mlir::scf::WhileOp::parse(uint64_t a1, mlir::OperationState *this)
{
  v7[32] = *MEMORY[0x1E69E9840];
  v5 = v7;
  v6 = 0x400000000;
  v2 = &v4;
  v3 = 0x400000000;
  mlir::OperationState::addRegion(this);
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
            MEMORY[0x1AC55A040](v14, 0x1000C8077774924);
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

uint64_t mlir::scf::WhileOp::verify(uint64_t **this)
{
  v44 = *MEMORY[0x1E69E9840];
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

  v5 = *(v4 + 32);
  if (v5 == (v4 + 32))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  ZinIrHalH13g::~ZinIrHalH13g(v5);
  v8 = v7;
  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
  {
LABEL_14:
    v33 = 261;
    v31 = "expects the 'before' region to terminate with 'scf.condition'";
    v32 = 61;
    mlir::Operation::emitOpError(v1, &v31, &v34);
    if (v8)
    {
      mlir::Diagnostic::attachNote(v35, *(v8 + 24), 1);
    }

    if (v34)
    {
      mlir::InFlightDiagnostic::report(&v34);
    }

    if (v43 != 1)
    {
      return 0;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v41;
      v19 = __p;
      if (v41 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v41 = v17;
      operator delete(v19);
    }

    v20 = v38;
    if (!v38)
    {
      goto LABEL_53;
    }

    v21 = v39;
    v22 = v38;
    if (v39 == v38)
    {
      goto LABEL_52;
    }

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
    goto LABEL_51;
  }

  v9 = *this;
  v10 = ((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  if (*(v10 + 24) == v10 + 24 || ((v11 = *(((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 32)) != 0 ? (v12 = v11 - 8) : (v12 = 0), v13 = *(v12 + 32), v13 == (v12 + 32)))
  {
    v15 = 0;
  }

  else
  {
    ZinIrHalH13g::~ZinIrHalH13g(v13);
    v15 = v14;
    if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
      return 1;
    }
  }

  v33 = 261;
  v31 = "expects the 'after' region to terminate with 'scf.yield'";
  v32 = 56;
  mlir::Operation::emitOpError(v9, &v31, &v34);
  if (v15)
  {
    mlir::Diagnostic::attachNote(v35, *(v15 + 24), 1);
  }

  if (v34)
  {
    mlir::InFlightDiagnostic::report(&v34);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v41;
      v27 = __p;
      if (v41 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v41 = v25;
      operator delete(v27);
    }

    v20 = v38;
    if (!v38)
    {
      goto LABEL_53;
    }

    v28 = v39;
    v22 = v38;
    if (v39 == v38)
    {
LABEL_52:
      v39 = v20;
      operator delete(v22);
LABEL_53:
      if (v36 != &v37)
      {
        free(v36);
      }

      return 0;
    }

    do
    {
      v30 = *--v28;
      v29 = v30;
      *v28 = 0;
      if (v30)
      {
        MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
      }
    }

    while (v28 != v20);
LABEL_51:
    v22 = v38;
    goto LABEL_52;
  }

  return 0;
}

BOOL mlir::scf::IndexSwitchOp::verify(uint64_t **this)
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
                MEMORY[0x1AC55A040](v53, 0x1000C8077774924);
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
      if (!mlir::scf::IndexSwitchOp::verify(void)::$_0::operator()(this, v9, v71))
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
        if (!mlir::scf::IndexSwitchOp::verify(void)::$_0::operator()(this, v56, v71))
        {
          break;
        }

        ++v55;
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
            MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
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

BOOL mlir::scf::IndexSwitchOp::verify(void)::$_0::operator()(uint64_t **a1, uint64_t a2, const char **a3)
{
  v103 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  ZinIrHalH13g::~ZinIrHalH13g(*(v7 + 32));
  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    v84 = "expected region to end with scf.yield, but got ";
    v87 = 259;
    mlir::OpState::emitOpError(a1, &v84, &v91);
    v9 = *(a2 + 8);
    if (v9)
    {
      v10 = v9 - 8;
    }

    else
    {
      v10 = 0;
    }

    ZinIrHalH13g::~ZinIrHalH13g(*(v10 + 32));
    if (v91)
    {
      mlir::Diagnostic::operator<<(v92, *(v11 + 48));
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v91);
    if (v91)
    {
      mlir::InFlightDiagnostic::report(&v91);
    }

    if (v102 == 1)
    {
      if (v101 != &v102)
      {
        free(v101);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v100;
        v15 = __p;
        if (v100 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v100 = v13;
        operator delete(v15);
      }

      v16 = v97;
      if (v97)
      {
        v17 = v98;
        v18 = v97;
        if (v98 != v97)
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
          v18 = v97;
        }

        v98 = v16;
        operator delete(v18);
      }

      if (v93 != v96)
      {
        free(v93);
      }
    }

    return v12;
  }

  v21 = v8;
  if ((*(v8 + 46) & 0x80) == 0)
  {
    v22 = 0;
    v23 = *a1;
    if (!*(*a1 + 9))
    {
      goto LABEL_28;
    }

LABEL_50:
    v84 = "expected each region to return ";
    v87 = 259;
    mlir::OpState::emitOpError(a1, &v84, &v91);
    if (v91)
    {
      v50 = *(*a1 + 9);
      LODWORD(v88) = 5;
      v89 = v50;
      v51 = &v88;
      v52 = v93;
      if (v94 >= v95)
      {
        v70 = a3;
        v71 = v21;
        if (v93 <= &v88 && v93 + 24 * v94 > &v88)
        {
          v76 = &v88 - v93;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
          v52 = v93;
          v51 = (v93 + v76);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
          v51 = &v88;
          v52 = v93;
        }

        v21 = v71;
        a3 = v70;
      }

      v53 = &v52[24 * v94];
      v54 = *v51;
      *(v53 + 2) = v51[2];
      *v53 = v54;
      v55 = ++v94;
      if (v91)
      {
        LODWORD(v88) = 3;
        v89 = " values, but ";
        v90 = 13;
        v56 = &v88;
        v57 = v93;
        if (v55 >= v95)
        {
          v73 = a3;
          v74 = v21;
          if (v93 <= &v88 && v93 + 24 * v55 > &v88)
          {
            v78 = &v88 - v93;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v55 + 1, 24);
            v57 = v93;
            v56 = (v93 + v78);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v55 + 1, 24);
            v56 = &v88;
            v57 = v93;
          }

          v21 = v74;
          a3 = v73;
        }

        v58 = &v57[24 * v94];
        v59 = *v56;
        *(v58 + 2) = v56[2];
        *v58 = v59;
        ++v94;
        if (v91)
        {
          mlir::Diagnostic::operator<<(v92, a3);
          if (v91)
          {
            LODWORD(v88) = 3;
            v89 = " returns ";
            v90 = 9;
            v60 = &v88;
            v61 = v93;
            if (v94 >= v95)
            {
              v75 = v21;
              if (v93 <= &v88 && v93 + 24 * v94 > &v88)
              {
                v79 = &v88 - v93;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
                v61 = v93;
                v60 = (v93 + v79);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
                v60 = &v88;
                v61 = v93;
              }

              v21 = v75;
            }

            v62 = &v61[24 * v94];
            v63 = *v60;
            *(v62 + 2) = v60[2];
            *v62 = v63;
            ++v94;
          }
        }
      }
    }

    if ((*(v21 + 46) & 0x80) != 0)
    {
      v64 = *(v21 + 68);
      if (!v91)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v64 = 0;
      if (!v91)
      {
        goto LABEL_62;
      }
    }

    LODWORD(v88) = 5;
    v89 = v64;
    v65 = &v88;
    v66 = v93;
    if (v94 >= v95)
    {
      v72 = v21;
      if (v93 <= &v88 && v93 + 24 * v94 > &v88)
      {
        v77 = &v88 - v93;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
        v66 = v93;
        v65 = (v93 + v77);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
        v65 = &v88;
        v66 = v93;
      }

      v21 = v72;
    }

    v67 = &v66[24 * v94];
    v68 = *v65;
    *(v67 + 2) = v65[2];
    *v67 = v68;
    ++v94;
LABEL_62:
    mlir::Diagnostic::attachNote(v92, *(v21 + 24), 1);
  }

  v22 = *(v8 + 68);
  v23 = *a1;
  if (v22 != *(*a1 + 9))
  {
    goto LABEL_50;
  }

LABEL_28:
  v24 = v22;
  v25 = (v23 - 2);
  if (!v22)
  {
    v25 = 0;
  }

  v84 = v25;
  v85 = v22;
  mlir::OperandRange::getTypes(&v91, &v84);
  if ((*(v21 + 46) & 0x80) != 0)
  {
    v26 = *(v21 + 68);
    v88 = *(v21 + 72);
    v89 = v26;
    mlir::OperandRange::getTypes(&v84, &v88);
    v12 = 1;
    if (!v22)
    {
      return v12;
    }
  }

  else
  {
    v88 = 0;
    v89 = 0;
    mlir::OperandRange::getTypes(&v84, &v88);
    v12 = 1;
    if (!v22)
    {
      return v12;
    }
  }

  v83 = v21;
  v27 = v92[0];
  if (v92[0] != v93)
  {
    v28 = 0;
    v29 = v91;
    v30 = &v84[32 * v85 + 24];
    v31 = v86 - v85;
    v32 = v93 - 1;
    v33 = (v24 - 1);
    while (v31)
    {
      v34 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v29, v27) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (v34 != (*(*v30 + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        v84 = "expected result #";
        v87 = 259;
        mlir::OpState::emitOpError(a1, &v84, &v91);
        v36 = v83;
        if (v91)
        {
          LODWORD(v88) = 5;
          v89 = v28;
          v37 = &v88;
          v38 = v93;
          if (v94 >= v95)
          {
            if (v93 <= &v88 && v93 + 24 * v94 > &v88)
            {
              v80 = &v88 - v93;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
              v38 = v93;
              v37 = (v93 + v80);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
              v37 = &v88;
              v38 = v93;
            }

            v36 = v83;
          }

          v39 = &v38[24 * v94];
          v40 = *v37;
          *(v39 + 2) = v37[2];
          *v39 = v40;
          v41 = ++v94;
          if (v91)
          {
            LODWORD(v88) = 3;
            v89 = " of each region to be ";
            v90 = 22;
            v42 = &v88;
            v43 = v93;
            if (v41 >= v95)
            {
              if (v93 <= &v88 && v93 + 24 * v41 > &v88)
              {
                v81 = &v88 - v93;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v41 + 1, 24);
                v43 = v93;
                v42 = (v93 + v81);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v41 + 1, 24);
                v42 = &v88;
                v43 = v93;
              }

              v36 = v83;
            }

            v44 = &v43[24 * v94];
            v45 = *v42;
            *(v44 + 2) = v42[2];
            *v44 = v45;
            ++v94;
            if (v91)
            {
              v46 = &v88;
              mlir::DiagnosticArgument::DiagnosticArgument(&v88, v34);
              v47 = v93;
              if (v94 >= v95)
              {
                if (v93 <= &v88 && v93 + 24 * v94 > &v88)
                {
                  v82 = &v88 - v93;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
                  v47 = v93;
                  v46 = (v93 + v82);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
                  v46 = &v88;
                  v47 = v93;
                }

                v36 = v83;
              }

              v48 = &v47[24 * v94];
              v49 = *v46;
              *(v48 + 2) = v46[2];
              *v48 = v49;
              ++v94;
            }
          }
        }

        mlir::Diagnostic::attachNote(v92, *(v36 + 24), 1);
      }

      v12 = 1;
      if (v33 != v28)
      {
        ++v28;
        v30 += 32;
        --v31;
        if (v32 != v27++)
        {
          continue;
        }
      }

      return v12;
    }

    return 1;
  }

  return v12;
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