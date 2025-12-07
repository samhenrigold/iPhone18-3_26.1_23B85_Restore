uint64_t mlir::calculateLayoutPermutationForANE(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v111[6] = *MEMORY[0x1E69E9840];
  if (a3 - 6 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v4 = *(a1 + 8);
    if (v4 == *(a2 + 8))
    {
      v108 = v111;
      v110 = 6;
      v7 = 8 * a3;
      memset(v111, 255, 8 * a3);
      v109 = a3;
      v104 = v107;
      v106 = 6;
      memset(v107, 255, v7);
      v105 = a3;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v94[0] = 0;
      if (v4)
      {
        v10 = a1;
        v11 = a2;
        v12 = 0;
        v13 = 0;
        while (1)
        {
          v19 = *(*v10 + 4 * v13);
          if (v19 <= 1)
          {
            break;
          }

          v20 = a3 - 1;
          if (v19 == 4)
          {
            goto LABEL_20;
          }

          if (v19 == 3)
          {
            v20 = a3 - 2;
LABEL_20:
            v19 = v20;
            goto LABEL_21;
          }

          if (v19 != 2 || a3 <= 4)
          {
LABEL_167:
            std::__throw_bad_optional_access[abi:nn200100]();
          }

          v19 = 1;
LABEL_21:
          v108[v19] = v13;
          v22 = *(*v11 + 4 * v94[0]);
          if (v22 <= 1)
          {
            if (!v22)
            {
              goto LABEL_35;
            }

            v23 = a3 - 3;
            if (v22 != 1)
            {
              goto LABEL_167;
            }

            goto LABEL_34;
          }

          v23 = a3 - 1;
          if (v22 == 4)
          {
            goto LABEL_34;
          }

          if (v22 == 3)
          {
            v23 = a3 - 2;
LABEL_34:
            v22 = v23;
            goto LABEL_35;
          }

          if (v22 != 2 || a3 <= 4)
          {
            goto LABEL_167;
          }

          v22 = 1;
LABEL_35:
          *&v104[8 * v22] = v94[0];
          v25 = v92;
          if (!v92)
          {
            v17 = 0;
            goto LABEL_37;
          }

          v14 = v94[0];
          v15 = v92 - 1;
          v16 = (v92 - 1) & (((0xBF58476D1CE4E5B9 * v94[0]) >> 31) ^ (484763065 * LODWORD(v94[0])));
          v17 = (v90 + 16 * v16);
          v18 = *v17;
          if (v94[0] != *v17)
          {
            v26 = 0;
            v27 = 1;
            while (v18 != -1)
            {
              if (v26)
              {
                v28 = 0;
              }

              else
              {
                v28 = (v18 + 2) == 0;
              }

              if (v28)
              {
                v26 = v17;
              }

              v29 = v16 + v27++;
              v16 = v29 & v15;
              v17 = (v90 + 16 * (v29 & v15));
              v18 = *v17;
              if (v94[0] == *v17)
              {
                goto LABEL_6;
              }
            }

            if (v26)
            {
              v17 = v26;
            }

LABEL_37:
            v99[0] = v17;
            if (4 * v12 + 4 >= 3 * v92)
            {
              v25 = 2 * v92;
            }

            else if (v92 + ~v12 - HIDWORD(v91) > v92 >> 3)
            {
LABEL_39:
              LODWORD(v91) = ++v12;
              if (*v17 != -1)
              {
                --HIDWORD(v91);
              }

              v14 = v94[0];
              *v17 = v94[0];
              *(v17 + 1) = 0;
              v4 = *(v10 + 8);
              goto LABEL_6;
            }

            llvm::DenseMap<unsigned long,unsigned long,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,unsigned long>>::grow(&v90, v25);
            llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::LookupBucketFor<unsigned long long>(&v90, v94, v99);
            v12 = v91;
            v17 = v99[0];
            v11 = a2;
            v10 = a1;
            goto LABEL_39;
          }

LABEL_6:
          *(v17 + 1) = v22;
          v13 = v14 + 1;
          v94[0] = (v14 + 1);
          if (v14 + 1 >= v4)
          {
            goto LABEL_57;
          }
        }

        if (!v19)
        {
          goto LABEL_21;
        }

        v20 = a3 - 3;
        if (v19 != 1)
        {
          goto LABEL_167;
        }

        goto LABEL_20;
      }

LABEL_57:
      v31 = 0;
      v100 = 0;
      *v99 = 0u;
      __dst = &v103;
      v102 = 0x600000000;
      v95 = 0;
      *v94 = 0u;
      v96 = v98;
      v97 = 0x600000000;
      do
      {
        if (v108[v31] == -1)
        {
          v93 = v31;
          llvm::SetVector<unsigned long long,llvm::SmallVector<unsigned long long,6u>,llvm::DenseSet<unsigned long long,llvm::DenseMapInfo<unsigned long long,void>>,5u>::insert(v99, &v93);
        }

        if (*&v104[8 * v31] == -1)
        {
          v93 = v31;
          llvm::SetVector<unsigned long long,llvm::SmallVector<unsigned long long,6u>,llvm::DenseSet<unsigned long long,llvm::DenseMapInfo<unsigned long long,void>>,5u>::insert(v94, &v93);
        }

        ++v31;
      }

      while (a3 != v31);
      *(a4 + 2) = 0;
      if (*(a4 + 3) >= a3)
      {
        v32 = 0;
        v33 = a3;
        if (!a3)
        {
LABEL_68:
          v34 = 0;
          *(a4 + 2) = a3;
          while (1)
          {
            v39 = v108[v34];
            if (v39 != -1)
            {
              v89 = v108[v34];
              v40 = v92;
              if (!v92)
              {
                v37 = 0;
                goto LABEL_75;
              }

              v35 = v92 - 1;
              v36 = (v92 - 1) & (((0xBF58476D1CE4E5B9 * v39) >> 31) ^ (484763065 * v39));
              v37 = v90 + 16 * v36;
              v38 = *v37;
              if (v39 == *v37)
              {
LABEL_70:
                *(*a4 + 8 * v34) = *(v37 + 1);
                goto LABEL_71;
              }

              v70 = 0;
              v71 = 1;
              while (v38 != -1)
              {
                if (v70)
                {
                  v72 = 0;
                }

                else
                {
                  v72 = v38 == -2;
                }

                if (v72)
                {
                  v70 = v37;
                }

                v73 = v36 + v71++;
                v36 = v73 & v35;
                v37 = v90 + 16 * (v73 & v35);
                v38 = *v37;
                if (v39 == *v37)
                {
                  goto LABEL_70;
                }
              }

              if (v70)
              {
                v37 = v70;
              }

LABEL_75:
              v93 = v37;
              v41 = v91;
              if (4 * v91 + 4 >= 3 * v92)
              {
                v40 = 2 * v92;
              }

              else if (v92 + ~v91 - HIDWORD(v91) > v92 >> 3)
              {
LABEL_77:
                LODWORD(v91) = v41 + 1;
                if (*v37 != -1)
                {
                  --HIDWORD(v91);
                }

                *v37 = v89;
                *(v37 + 1) = 0;
                goto LABEL_70;
              }

              llvm::DenseMap<unsigned long,unsigned long,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,unsigned long>>::grow(&v90, v40);
              llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::LookupBucketFor<unsigned long long>(&v90, &v89, &v93);
              v41 = v91;
              v37 = v93;
              goto LABEL_77;
            }

            v42 = v94[1];
            if (LODWORD(v94[1]))
            {
              v43 = v95;
              if (!v95)
              {
                goto LABEL_71;
              }

              v44 = ((v95 - 1) & (((0xBF58476D1CE4E5B9 * v34) >> 31) ^ (484763065 * v34)));
              v45 = *(v94[0] + v44);
              if (v34 != v45)
              {
                v46 = 1;
                while (v45 != -1)
                {
                  v47 = v44 + v46++;
                  v44 = (v47 & (v95 - 1));
                  v45 = *(v94[0] + v44);
                  if (v34 == v45)
                  {
                    goto LABEL_94;
                  }
                }

                goto LABEL_71;
              }
            }

            else
            {
              if (v97)
              {
                v48 = 8 * v97;
                v44 = v96;
                while (*v44 != v34)
                {
                  ++v44;
                  v48 -= 8;
                  if (!v48)
                  {
                    goto LABEL_71;
                  }
                }
              }

              else
              {
                v44 = v96;
              }

              v43 = v96 + 8 * v97;
            }

LABEL_94:
            if (v44 == v43)
            {
              goto LABEL_71;
            }

            *(*a4 + 8 * v34) = v34;
            v49 = v99[1];
            if (LODWORD(v99[1]))
            {
              if (!v100)
              {
                goto LABEL_115;
              }

              v50 = (v100 - 1) & (((0xBF58476D1CE4E5B9 * v34) >> 31) ^ (484763065 * v34));
              v51 = *(v99[0] + v50);
              if (v34 == v51)
              {
LABEL_98:
                *(v99[0] + v50) = -2;
                LODWORD(v99[1]) = v49 - 1;
                ++HIDWORD(v99[1]);
                v52 = __dst;
                v53 = v102;
                v54 = __dst + 8 * v102;
                if (v102)
                {
                  v55 = 8 * v102;
                  do
                  {
                    if (*v52 == v34)
                    {
                      goto LABEL_103;
                    }

                    v52 += 8;
                    v55 -= 8;
                  }

                  while (v55);
                  v52 = __dst + 8 * v102;
                }

LABEL_103:
                v56 = v52 + 8;
                v57 = v54 - (v52 + 8);
                if (v54 == v52 + 8)
                {
                  goto LABEL_114;
                }

LABEL_113:
                memmove(v52, v56, v57);
                v53 = v102;
                v42 = v94[1];
LABEL_114:
                LODWORD(v102) = v53 - 1;
                goto LABEL_115;
              }

              v74 = 1;
              while (v51 != -1)
              {
                v75 = v50 + v74++;
                v50 = v75 & (v100 - 1);
                v51 = *(v99[0] + v50);
                if (v34 == v51)
                {
                  goto LABEL_98;
                }
              }
            }

            else
            {
              v53 = v102;
              if (v102)
              {
                v58 = 8 * v102;
                v52 = __dst;
                while (*v52 != v34)
                {
                  v52 += 8;
                  v58 -= 8;
                  if (!v58)
                  {
                    goto LABEL_115;
                  }
                }
              }

              else
              {
                v52 = __dst;
              }

              v59 = __dst + 8 * v102;
              if (v52 != v59)
              {
                v56 = v52 + 8;
                v57 = v59 - (v52 + 8);
                if (v59 != v52 + 8)
                {
                  goto LABEL_113;
                }

                goto LABEL_114;
              }
            }

LABEL_115:
            if (v42)
            {
              if (v95)
              {
                v60 = (v95 - 1) & (((0xBF58476D1CE4E5B9 * v34) >> 31) ^ (484763065 * v34));
                v61 = *(v94[0] + v60);
                if (v34 == v61)
                {
LABEL_118:
                  *(v94[0] + v60) = -2;
                  LODWORD(v94[1]) = v42 - 1;
                  ++HIDWORD(v94[1]);
                  v62 = v96;
                  v63 = v97;
                  v64 = v96 + 8 * v97;
                  if (v97)
                  {
                    v65 = 8 * v97;
                    do
                    {
                      if (*v62 == v34)
                      {
                        goto LABEL_123;
                      }

                      v62 += 8;
                      v65 -= 8;
                    }

                    while (v65);
                    v62 = v96 + 8 * v97;
                  }

LABEL_123:
                  v66 = v62 + 8;
                  v67 = v64 - (v62 + 8);
                  if (v64 != v62 + 8)
                  {
LABEL_133:
                    memmove(v62, v66, v67);
                    v63 = v97;
                  }

LABEL_134:
                  LODWORD(v97) = v63 - 1;
                  goto LABEL_71;
                }

                v76 = 1;
                while (v61 != -1)
                {
                  v77 = v60 + v76++;
                  v60 = v77 & (v95 - 1);
                  v61 = *(v94[0] + v60);
                  if (v34 == v61)
                  {
                    goto LABEL_118;
                  }
                }
              }
            }

            else
            {
              v63 = v97;
              if (v97)
              {
                v68 = 8 * v97;
                v62 = v96;
                while (*v62 != v34)
                {
                  v62 += 8;
                  v68 -= 8;
                  if (!v68)
                  {
                    goto LABEL_71;
                  }
                }
              }

              else
              {
                v62 = v96;
              }

              v69 = v96 + 8 * v97;
              if (v62 != v69)
              {
                v66 = v62 + 8;
                v67 = v69 - (v62 + 8);
                if (v69 != v62 + 8)
                {
                  goto LABEL_133;
                }

                goto LABEL_134;
              }
            }

LABEL_71:
            if (++v34 == a3)
            {
              v78 = v96;
              if (v102)
              {
                v79 = v97 == 0;
              }

              else
              {
                v79 = 1;
              }

              if (!v79)
              {
                v80 = __dst;
                v81 = *a4;
                v82 = 8 * v97 - 8;
                v83 = 8 * v102 - 8;
                v84 = v96;
                do
                {
                  v86 = *v84++;
                  v85 = v86;
                  v87 = *v80++;
                  *(v81 + 8 * v87) = v85;
                  if (!v83)
                  {
                    break;
                  }

                  v88 = v82;
                  v82 -= 8;
                  v83 -= 8;
                }

                while (v88);
              }

              if (v78 != v98)
              {
                free(v78);
              }

              llvm::deallocate_buffer(v94[0], (8 * v95));
            }
          }
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 2, a3, 8);
        v32 = *(a4 + 2);
        v33 = a3 - v32;
        if (a3 == v32)
        {
          goto LABEL_68;
        }
      }

      bzero((*a4 + 8 * v32), 8 * v33);
      goto LABEL_68;
    }
  }

  return 0;
}

uint64_t llvm::SetVector<unsigned long long,llvm::SmallVector<unsigned long long,6u>,llvm::DenseSet<unsigned long long,llvm::DenseMapInfo<unsigned long long,void>>,5u>::insert(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 8))
  {
    v6 = (a1 + 24);
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = v7;
    if (v8)
    {
      v10 = *a2;
      v11 = 8 * v8;
      v9 = *(a1 + 24);
      while (*v9 != v10)
      {
        ++v9;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_14;
        }
      }
    }

    if (v9 == &v7[v8])
    {
      v10 = *a2;
LABEL_14:
      if (v8 >= *(a1 + 36))
      {
        v16 = (a1 + 24);
        v17 = v10;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v8 + 1, 8);
        v10 = v17;
        v6 = v16;
        v8 = *(a1 + 32);
        v7 = *(a1 + 24);
      }

      v7[v8] = v10;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 6)
      {
        v14 = *v6;
        v15 = 8 * v13;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v14++, v18);
          v15 -= 8;
        }

        while (v15);
      }

      return 1;
    }

    return 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, v18);
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

void *mlir::getMostDefinedTypeForANE(uint64_t a1, uint64_t a2)
{
  MostDefinedTypeForCPU = mlir::getMostDefinedTypeForCPU(a1, a2);

  return mlir::getRankPromotionTypeForANE(MostDefinedTypeForCPU, v3);
}

uint64_t mlir::getRequiresCHWRankPromotion(mlir *this, mlir::MLIRContext *a2)
{
  Instance = mlir::ANEPropertiesRegistry::getInstance(this);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, this);
  if (Properties)
  {
    v5 = *Properties;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

double mlir::anec::getAllDims@<D0>(uint64_t a1@<X8>)
{
  *a1 = a1 + 16;
  *(a1 + 32) = 4;
  *(a1 + 16) = xmmword_1A75EBCDC;
  *&result = 0x500000005;
  *(a1 + 8) = 0x500000005;
  return result;
}

uint64_t mlir::anec::getDimFromIndex(mlir::anec *this, unint64_t a2)
{
  if (a2 && (a2 - 1) == this)
  {
    return 0x100000004;
  }

  if (a2 >= 2 && (a2 - 2) == this)
  {
    return 0x100000003;
  }

  if (a2 >= 3 && (a2 - 3) == this)
  {
    return 0x100000001;
  }

  if (a2 >= 4 && (a2 - 4) == this)
  {
    return (2 * (a2 != 4)) | 0x100000000;
  }

  v3 = (a2 - 5) == this && a2 > 4;
  v4 = 0x100000000;
  if (!v3)
  {
    return 0;
  }

  return v4;
}

void mlir::anec::getANEDefaultLayout(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v33 = v35;
  v35[0] = 4;
  v34 = 0xC00000001;
  v36 = 1;
  v37 = v39;
  v39[0] = 4;
  v38 = 0xC00000001;
  v30 = v32;
  v31 = 0xC00000002;
  v32[0] = 0x400000001;
  v40 = 2;
  v41 = v43;
  v42 = 0xC00000002;
  v43[0] = 0x400000001;
  v27 = &v28 + 8;
  v29 = 4;
  v28 = xmmword_1A75EBC70;
  v43[6] = 3;
  v44 = &v46;
  v47 = 4;
  v46 = 0x100000000;
  v45 = 0xC00000003;
  v25 = &v26[8];
  *&v26[16] = 0x400000003;
  *v26 = xmmword_1A75EBC80;
  v48 = 4;
  v49 = v51;
  v51[0] = *&v26[8];
  v50 = 0xC00000004;
  v21 = &v23;
  v24 = 4;
  v23 = xmmword_1A75EBCDC;
  v22 = 0xC00000005;
  v52 = 5;
  v53 = &v55;
  v55 = xmmword_1A75EBCDC;
  v56 = 4;
  v54 = 0xC00000005;
  llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::DenseMap(&v19, &v36, 5);
  if (v53 != &v55)
  {
    free(v53);
  }

  if (v49 != v51)
  {
    free(v49);
  }

  if (v44 != &v46)
  {
    free(v44);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v21 != &v23)
  {
    free(v21);
  }

  if (v25 != &v26[8])
  {
    free(v25);
  }

  if (v27 != &v28 + 8)
  {
    free(v27);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  v2 = v19;
  if ((a1 - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    v3 = v20;
    if (v20)
    {
      goto LABEL_23;
    }

LABEL_50:
    v7 = 0;
    goto LABEL_51;
  }

  if (v20)
  {
    v8 = (v20 - 1) & (((0xBF58476D1CE4E5B9 * a1) >> 31) ^ (484763065 * a1));
    v9 = v19 + 72 * v8;
    v10 = *v9;
    if (*v9 == a1)
    {
      goto LABEL_36;
    }

    v11 = 1;
    while (v10 != -1)
    {
      v12 = v8 + v11++;
      v8 = v12 & (v20 - 1);
      v9 = v19 + 72 * v8;
      v10 = *v9;
      if (*v9 == a1)
      {
        goto LABEL_36;
      }
    }
  }

  v9 = v19 + 72 * v20;
LABEL_36:
  v13 = (v9 + 8);
  if (v9 + 8 == a2)
  {
    v3 = v20;
    if (!v20)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  v14 = *(v9 + 4);
  v15 = *(a2 + 8);
  if (v15 >= v14)
  {
    if (v14)
    {
      memmove(*a2, *v13, 4 * v14);
    }

LABEL_49:
    *(a2 + 8) = v14;
    v2 = v19;
    v3 = v20;
    if (!v20)
    {
      goto LABEL_50;
    }

LABEL_23:
    v4 = 72 * v3;
    v5 = v2 + 24;
    do
    {
      if (*(v5 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = *(v5 - 2);
        if (v5 != v6)
        {
          free(v6);
        }
      }

      v5 += 72;
      v4 -= 72;
    }

    while (v4);
    v2 = v19;
    v7 = 72 * v20;
LABEL_51:
    llvm::deallocate_buffer(v2, v7);
  }

  if (*(a2 + 12) >= v14)
  {
    if (v15)
    {
      memmove(*a2, *v13, 4 * v15);
      goto LABEL_47;
    }
  }

  else
  {
    *(a2 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v14, 4);
  }

  v15 = 0;
LABEL_47:
  v16 = *(v9 + 4) - v15;
  if (v16)
  {
    memcpy((*a2 + 4 * v15), *v13 + 4 * v15, 4 * v16);
  }

  goto LABEL_49;
}

uint64_t mlir::anec::getReferenceFormatIndex(mlir::anec *this, unint64_t a2, unint64_t a3)
{
  if (a2 && (a2 - 1) == this)
  {
    v3 = a3 - 1;
    v4 = (a3 - 1) & 0xFFFFFFFFFFFFFF00;
    if (!a3)
    {
      v3 = 0;
      v4 = 0;
    }

    return v4 | v3;
  }

  if (a2 >= 2 && (a2 - 2) == this)
  {
    v3 = a3 - 2;
    v4 = (a3 - 2) & 0xFFFFFFFFFFFFFF00;
    v5 = a3 >= 2;
    goto LABEL_12;
  }

  if (a2 >= 3 && (a2 - 3) == this)
  {
    v3 = a3 - 3;
    v4 = (a3 - 3) & 0xFFFFFFFFFFFFFF00;
    v5 = a3 >= 3;
LABEL_12:
    if (!v5)
    {
      v3 = 0;
      v4 = 0;
    }

    return v4 | v3;
  }

  if (a2 >= 4 && (a2 - 4) == this)
  {
    if (a2 != 4)
    {
      v4 = 0;
      v3 = a3 > 4;
      return v4 | v3;
    }

LABEL_22:
    v3 = 0;
    v4 = 0;
    return v4 | v3;
  }

  if (a2 < 5)
  {
    return 0;
  }

  v7 = a2 - 5 == this;
  result = 0;
  if (v7)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t mlir::anec::allElementsOnAxis(uint64_t a1, uint64_t a2, int a3)
{
  v16[0] = a1;
  v16[1] = a2;
  Shape = mlir::ShapedType::getShape(v16);
  if (!v5)
  {
    return 1;
  }

  v6 = Shape;
  v7 = 0;
  v8 = 8 * v5 - 8;
  do
  {
    mlir::ShapedType::getShape(v16);
    if (v7 == v9 - 1)
    {
      v10 = 0;
      v11 = 4;
    }

    else if (v9 >= 2 && v7 == v9 - 2)
    {
      v10 = 0;
      v11 = 3;
    }

    else if (v9 >= 3 && v7 == v9 - 3)
    {
      v10 = 0;
      v11 = 1;
    }

    else if (v9 >= 4 && v7 == v9 - 4)
    {
      v10 = 0;
      v11 = 2 * (v9 != 4);
    }

    else
    {
      v11 = 0;
      v10 = v9 < 5 || v7 != v9 - 5;
    }

    if (v11 != a3)
    {
      v10 = 1;
    }

    v13 = *(v6 + 8 * v7) != 1 && v10;
    if (v13)
    {
      break;
    }

    ++v7;
    v14 = v8;
    v8 -= 8;
  }

  while (v14);
  return v13 ^ 1u;
}

uint64_t mlir::anec::verifyCompatibilityWithFlatten(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a1;
  v19[1] = a2;
  v18[0] = a3;
  v18[1] = a4;
  result = mlir::ElementsAttr::getShapedType(v19);
  if (result)
  {
    result = mlir::ElementsAttr::getShapedType(v18);
    if (result)
    {
      mlir::ShapedType::getShape(v19);
      v6 = v5;
      mlir::ShapedType::getShape(v18);
      if (v6 == v7 && (mlir::ShapedType::getShape(v19), v8 <= 4) && (mlir::ShapedType::getShape(v19), v9 >= 4) && (v10 = *mlir::ShapedType::getShape(v19), v10 == *mlir::ShapedType::getShape(v18)) && (Shape = mlir::ShapedType::getShape(v19), NumElements = mlir::ShapedType::getNumElements(Shape, v12), v14 = mlir::ShapedType::getShape(v18), NumElements == mlir::ShapedType::getNumElements(v14, v15)))
      {
        v17[0] = mlir::ShapedType::getShape(v18);
        v17[1] = v16;
        return llvm::any_of<llvm::detail::zippy<llvm::detail::zip_enumerator,llvm::detail::index_stream,llvm::ArrayRef<long long>>,mlir::anec::verifyCompatibilityWithFlatten(mlir::ShapedType,mlir::ShapedType)::$_0>(v17, v18) ^ 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t llvm::any_of<llvm::detail::zippy<llvm::detail::zip_enumerator,llvm::detail::index_stream,llvm::ArrayRef<long long>>,mlir::anec::verifyCompatibilityWithFlatten(mlir::ShapedType,mlir::ShapedType)::$_0>(uint64_t *a1, mlir::ShapedType *this)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = *a1;
  v6 = 8 * v2;
  while (1)
  {
    mlir::ShapedType::getShape(this);
    if (v4 == v7 - 1 || v7 >= 2 && v4 == v7 - 2)
    {
      break;
    }

    if (v7 >= 3 && v4 == v7 - 3)
    {
      goto LABEL_4;
    }

    if (v7 >= 4 && v4 == v7 - 4)
    {
      if (v7 == 4)
      {
        goto LABEL_4;
      }

      break;
    }

    if (v7 < 5 || v4 != v7 - 5)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
      return 0;
    }

LABEL_4:
    ++v4;
    v6 -= 8;
    if (!v6)
    {
      return 0;
    }
  }

  if (*(v5 + 8 * v4) == 1)
  {
    goto LABEL_4;
  }

  return 1;
}

uint64_t llvm::dyn_cast_if_present<mlir::AffineConstantExpr,mlir::AffineExpr>(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v4 = *a1, mlir::arith::FastMathFlagsAttr::getValue(&v4) == 5))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v4, v2);
  return v4;
}

void *llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::SmallDenseMap<llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>> const*>(void *a1, void *a2, void *a3)
{
  v6 = ((*a3 - *a2) >> 5) | (((*a3 - *a2) >> 5) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = v7 | (v7 >> 8) | ((v7 | (v7 >> 8)) >> 16);
  v9 = (HIDWORD(v8) | v8) + 1;
  v10 = (a1 + 1);
  if (v9 <= 4)
  {
    *a1 = 1;
  }

  else
  {
    *a1 &= ~1u;
    buffer = llvm::allocate_buffer(32 * ((HIDWORD(v8) | v8) + 1), 8uLL);
    a1[1] = buffer;
    a1[2] = v9;
    v12 = *a1;
    *a1 = *a1 & 1;
    if ((v12 & 1) == 0)
    {
      v13 = &buffer[32 * v9];
      goto LABEL_6;
    }
  }

  v13 = (a1 + 17);
  buffer = v10;
LABEL_6:
  v14 = v13 - buffer - 32;
  if (v14 < 0x20)
  {
    v15 = buffer;
    do
    {
LABEL_11:
      *v15 = -1;
      v15 += 32;
    }

    while (v15 != v13);
    goto LABEL_12;
  }

  v16 = (v14 >> 5) + 1;
  v15 = &buffer[32 * (v16 & 0xFFFFFFFFFFFFFFELL)];
  v17 = buffer + 32;
  v18 = v16 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *(v17 - 4) = -1;
    *v17 = -1;
    v17 += 8;
    v18 -= 2;
  }

  while (v18);
  if (v16 != (v16 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_11;
  }

LABEL_12:
  v19 = *a2;
  for (i = *a3; v19 != i; v19 += 4)
  {
    if (*a1)
    {
      v21 = 4;
      v22 = v10;
    }

    else
    {
      v21 = *(a1 + 4);
      if (!v21)
      {
        v27 = 0;
LABEL_21:
        llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>,unsigned long long,std::vector<mlir::anec::KernelDim>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::InsertIntoBucket<unsigned long long const&,std::vector<mlir::anec::KernelDim> const&>(a1, v27, v19, v19 + 1);
        continue;
      }

      v22 = a1[1];
    }

    v23 = v21 - 1;
    v24 = v23 & (((0xBF58476D1CE4E5B9 * *v19) >> 31) ^ (484763065 * *v19));
    v25 = &v22[32 * v24];
    v26 = *v25;
    if (*v19 != *v25)
    {
      v28 = 0;
      v29 = 1;
      while (v26 != -1)
      {
        if (v28)
        {
          v30 = 0;
        }

        else
        {
          v30 = v26 == -2;
        }

        if (v30)
        {
          v28 = v25;
        }

        v31 = v24 + v29++;
        v24 = v31 & v23;
        v25 = &v22[32 * v24];
        v26 = *v25;
        if (*v19 == *v25)
        {
          goto LABEL_16;
        }
      }

      if (v28)
      {
        v27 = v28;
      }

      else
      {
        v27 = v25;
      }

      goto LABEL_21;
    }

LABEL_16:
    ;
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>,unsigned long long,std::vector<mlir::anec::KernelDim>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::LookupBucketFor<unsigned long long>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = (v4 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (v3 + 32 * v6);
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
        v7 = (v3 + 32 * v6);
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

void *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>,unsigned long long,std::vector<mlir::anec::KernelDim>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::InsertIntoBucket<unsigned long long const&,std::vector<mlir::anec::KernelDim> const&>(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v4 = a2;
  v13 = a2;
  v5 = *a1;
  v6 = *a1 >> 1;
  if (*a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = a1[4];
  }

  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - a1[1] > v7 >> 3)
  {
    goto LABEL_6;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::grow(a1, v7);
  llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>,unsigned long long,std::vector<mlir::anec::KernelDim>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::LookupBucketFor<unsigned long long>(v10, v12, &v13);
  a1 = v10;
  a3 = v12;
  a4 = v11;
  v5 = *v10;
  v4 = v13;
LABEL_6:
  *a1 = v5 + 2;
  if (*v4 != -1)
  {
    --a1[1];
  }

  *v4 = *a3;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v8 = a4[1];
  if (v8 != *a4)
  {
    if (((v8 - *a4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  return v4;
}

void llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::grow(uint64_t a1, unsigned int a2)
{
  v21[12] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 4)
    {
      v14 = a2;
      v15 = a1;
      buffer = llvm::allocate_buffer(32 * a2, 8uLL);
      a1 = v15;
      *(v15 + 8) = buffer;
      *(v15 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    v17 = (32 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>,unsigned long long,std::vector<mlir::anec::KernelDim>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::moveFromOldBuckets(a1, v5, &v17[v5]);

    llvm::deallocate_buffer(v5, v17);
  }

  v7 = &v18;
  if (*(a1 + 8) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = *(a1 + 8);
    v19 = *(a1 + 16);
    v20 = *(a1 + 32);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v7 = v21;
  }

  v8 = *(a1 + 40);
  if (v8 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    *v7 = v8;
    *(v7 + 1) = *(a1 + 48);
    v7[3] = *(a1 + 64);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    v7 += 4;
  }

  v9 = *(a1 + 72);
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    *v7 = v9;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = 0;
    *(v7 + 1) = *(a1 + 80);
    v7[3] = *(a1 + 96);
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    v7 += 4;
  }

  v10 = *(a1 + 104);
  if (v10 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    *v7 = v10;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = 0;
    *(v7 + 1) = *(a1 + 112);
    v7[3] = *(a1 + 128);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    v7 += 4;
  }

  if (a2 >= 5)
  {
    *a1 &= ~1u;
    v11 = a2;
    v12 = a1;
    v13 = llvm::allocate_buffer(32 * a2, 8uLL);
    a1 = v12;
    *(v12 + 8) = v13;
    *(v12 + 16) = v11;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>,unsigned long long,std::vector<mlir::anec::KernelDim>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::moveFromOldBuckets(a1, &v18, v7);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long long,std::vector<mlir::anec::KernelDim>,4u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>,unsigned long long,std::vector<mlir::anec::KernelDim>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,std::vector<mlir::anec::KernelDim>>>::moveFromOldBuckets(int *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a1 & 1;
  v7 = a1 + 2;
  if (v6)
  {
    v10 = a1 + 34;
    v9 = a1 + 2;
  }

  else
  {
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 1);
    v10 = &v9[8 * v8];
  }

  v11 = v10 - v9 - 32;
  if (v11 < 0x20)
  {
    v12 = v9;
    do
    {
LABEL_10:
      *v12 = -1;
      v12 += 8;
    }

    while (v12 != v10);
    goto LABEL_11;
  }

  v13 = (v11 >> 5) + 1;
  v12 = &v9[8 * (v13 & 0xFFFFFFFFFFFFFFELL)];
  v14 = v9 + 8;
  v15 = v13 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *(v14 - 4) = -1;
    *v14 = -1;
    v14 += 8;
    v15 -= 2;
  }

  while (v15);
  if (v13 != (v13 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a2 != a3)
  {
    do
    {
      v16 = *v4;
      if (*v4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (*a1)
        {
          v18 = 3;
          v17 = v7;
        }

        else
        {
          v17 = *(a1 + 1);
          v18 = a1[4] - 1;
        }

        v19 = v18 & (((0xBF58476D1CE4E5B9 * v16) >> 31) ^ (484763065 * v16));
        v20 = &v17[8 * v19];
        v21 = *v20;
        if (v16 != *v20)
        {
          v23 = 0;
          v24 = 1;
          while (v21 != -1)
          {
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v25 = v21 == -2;
            }

            if (v25)
            {
              v23 = v20;
            }

            v26 = v19 + v24++;
            v19 = v26 & v18;
            v20 = &v17[8 * v19];
            v21 = *v20;
            if (v16 == *v20)
            {
              goto LABEL_19;
            }
          }

          if (v23)
          {
            v20 = v23;
          }
        }

LABEL_19:
        *v20 = v16;
        v20[1] = 0;
        v20[2] = 0;
        v20[3] = 0;
        *(v20 + 1) = *(v4 + 1);
        v20[3] = v4[3];
        v4[1] = 0;
        v4[2] = 0;
        v4[3] = 0;
        *a1 += 2;
        v22 = v4[1];
        if (v22)
        {
          v4[2] = v22;
          operator delete(v22);
        }
      }

      v4 += 4;
    }

    while (v4 != a3);
  }
}

uint64_t mlir::Diagnostic::append<char const(&)[14],long long &,char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(uint64_t a1, char *__s, char **a3, char *a4, char **a5, char *a6, char **a7, char *a8)
{
  v16 = strlen(__s);
  v17 = a1;
  v20 = *(a1 + 16);
  v19 = a1 + 16;
  v18 = v20;
  v39 = 3;
  v40 = __s;
  v41 = v16;
  v21 = *(v19 + 8);
  v22 = &v39;
  if (v21 >= *(v19 + 12))
  {
    if (v18 <= &v39 && v18 + 24 * v21 > &v39)
    {
      v35 = &v39 - v18;
      v36 = v17;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v19, (v17 + 32), v21 + 1, 24);
      v17 = v36;
      v18 = *(v36 + 16);
      v22 = &v35[v18];
    }

    else
    {
      v33 = v17;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v19, (v17 + 32), v21 + 1, 24);
      v17 = v33;
      v18 = *(v33 + 16);
      v22 = &v39;
    }
  }

  v23 = v18 + 24 * *(v17 + 24);
  v24 = *v22;
  *(v23 + 16) = *(v22 + 2);
  *v23 = v24;
  v25 = *(v17 + 28);
  v26 = (*(v17 + 24) + 1);
  *(v17 + 24) = v26;
  v27 = *a3;
  v39 = 2;
  v40 = v27;
  v28 = *(v17 + 16);
  v29 = &v39;
  if (v26 >= v25)
  {
    if (v28 <= &v39 && v28 + 24 * v26 > &v39)
    {
      v37 = &v39 - v28;
      v38 = v17;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v19, (v17 + 32), v26 + 1, 24);
      v17 = v38;
      v28 = *(v38 + 16);
      v29 = &v37[v28];
    }

    else
    {
      v34 = v17;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v19, (v17 + 32), v26 + 1, 24);
      v17 = v34;
      v28 = *(v34 + 16);
      v29 = &v39;
    }
  }

  v30 = v28 + 24 * *(v17 + 24);
  v31 = *v29;
  *(v30 + 16) = *(v29 + 2);
  *v30 = v31;
  ++*(v17 + 24);
  return mlir::Diagnostic::append<char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(v17, a4, a5, a6, a7, a8);
}

uint64_t mlir::Diagnostic::append<char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(uint64_t a1, char *__s, char **a3, char *a4, char **a5, char *a6)
{
  v12 = strlen(__s);
  v13 = a1;
  v16 = *(a1 + 16);
  v15 = a1 + 16;
  v14 = v16;
  v35 = 3;
  v36 = __s;
  v37 = v12;
  v17 = *(v15 + 8);
  v18 = &v35;
  if (v17 >= *(v15 + 12))
  {
    if (v14 <= &v35 && v14 + 24 * v17 > &v35)
    {
      v31 = &v35 - v14;
      v32 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v17 + 1, 24);
      v13 = v32;
      v14 = *(v32 + 16);
      v18 = &v31[v14];
    }

    else
    {
      v29 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v17 + 1, 24);
      v13 = v29;
      v14 = *(v29 + 16);
      v18 = &v35;
    }
  }

  v19 = v14 + 24 * *(v13 + 24);
  v20 = *v18;
  *(v19 + 16) = *(v18 + 2);
  *v19 = v20;
  v21 = *(v13 + 28);
  v22 = (*(v13 + 24) + 1);
  *(v13 + 24) = v22;
  v23 = *a3;
  v35 = 2;
  v36 = v23;
  v24 = *(v13 + 16);
  v25 = &v35;
  if (v22 >= v21)
  {
    if (v24 <= &v35 && v24 + 24 * v22 > &v35)
    {
      v33 = &v35 - v24;
      v34 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v22 + 1, 24);
      v13 = v34;
      v24 = *(v34 + 16);
      v25 = &v33[v24];
    }

    else
    {
      v30 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v22 + 1, 24);
      v13 = v30;
      v24 = *(v30 + 16);
      v25 = &v35;
    }
  }

  v26 = v24 + 24 * *(v13 + 24);
  v27 = *v25;
  *(v26 + 16) = *(v25 + 2);
  *v26 = v27;
  ++*(v13 + 24);
  return mlir::Diagnostic::append<char const(&)[3],long long,char const(&)[2]>(v13, a4, a5, a6);
}

uint64_t mlir::Diagnostic::append<char const(&)[3],long long,char const(&)[2]>(uint64_t a1, char *__s, char **a3, char *a4)
{
  v8 = strlen(__s);
  v9 = a1;
  v10 = a1 + 16;
  v11 = *(a1 + 16);
  v19 = 3;
  v20 = __s;
  v21 = v8;
  v12 = *(a1 + 24);
  v13 = &v19;
  if (v12 >= *(a1 + 28))
  {
    if (v11 <= &v19 && v11 + 24 * v12 > &v19)
    {
      v17 = &v19 - v11;
      v18 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v10, (v9 + 32), v12 + 1, 24);
      v9 = v18;
      v11 = *(v18 + 16);
      v13 = &v17[v11];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v12 + 1, 24);
      v9 = a1;
      v11 = *(a1 + 16);
      v13 = &v19;
    }
  }

  v14 = v11 + 24 * *(v9 + 24);
  v15 = *v13;
  *(v14 + 16) = *(v13 + 2);
  *v14 = v15;
  ++*(v9 + 24);
  return mlir::Diagnostic::append<long long,char const(&)[2]>(v9, a3, a4);
}

uint64_t mlir::Diagnostic::append<long long,char const(&)[2]>(uint64_t a1, char **a2, char *__s)
{
  v6 = a1 + 16;
  v5 = *(a1 + 16);
  v7 = *a2;
  v21 = 2;
  v22 = v7;
  v8 = *(a1 + 24);
  v9 = &v21;
  if (v8 >= *(a1 + 28))
  {
    if (v5 <= &v21 && v5 + 24 * v8 > &v21)
    {
      v19 = &v21 - v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v5 = *(a1 + 16);
      v9 = &v19[v5];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v5 = *(a1 + 16);
      v9 = &v21;
    }
  }

  v10 = v5 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  v12 = (*(a1 + 24) + 1);
  *(a1 + 24) = v12;
  v13 = strlen(__s);
  v21 = 3;
  v22 = __s;
  v23 = v13;
  v14 = *(a1 + 16);
  v15 = &v21;
  if (v12 >= *(a1 + 28))
  {
    if (v14 <= &v21 && v14 + 24 * v12 > &v21)
    {
      v20 = &v21 - v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (a1 + 32), v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v20[v14];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (a1 + 32), v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v21;
    }
  }

  v16 = v14 + 24 * *(a1 + 24);
  v17 = *v15;
  *(v16 + 16) = *(v15 + 2);
  *v16 = v17;
  ++*(a1 + 24);
  return a1;
}

void llvm::SmallSet<long long,4u,std::less<long long>>::insertImpl<long long const&>(uint64_t **result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (result[8])
  {
    v6 = result[7];
    if (!v6)
    {
LABEL_14:
      operator new();
    }

    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = v6[4];
        if (v7 >= v9)
        {
          break;
        }

        v6 = *v8;
        if (!*v8)
        {
          goto LABEL_14;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = v8[1];
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    v15 = 0;
    v16 = 0;
  }

  else
  {
    v10 = *result;
    v11 = *(result + 2);
    v12 = *a2;
    if (!v11)
    {
      goto LABEL_19;
    }

    v13 = 8 * v11;
    v14 = 8 * v11;
    v8 = *result;
    while (*v8 != v12)
    {
      ++v8;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_18;
      }
    }

    if (v14)
    {
      v16 = 0;
      v15 = 1;
      goto LABEL_23;
    }

LABEL_18:
    if (v11 > 3)
    {
      do
      {
        if (!*std::__tree<long long>::__find_equal<long long>(result + 6, result + 7, &v22, &v21, v10))
        {
          operator new();
        }

        ++v10;
        v13 -= 8;
      }

      while (v13);
      *(result + 2) = 0;
      v18 = result[7];
      if (!v18)
      {
LABEL_34:
        operator new();
      }

      v19 = *a2;
      while (1)
      {
        while (1)
        {
          v8 = v18;
          v20 = v18[4];
          if (v19 >= v20)
          {
            break;
          }

          v18 = *v8;
          if (!*v8)
          {
            goto LABEL_34;
          }
        }

        if (v20 >= v19)
        {
          break;
        }

        v18 = v8[1];
        if (!v18)
        {
          goto LABEL_34;
        }
      }

      v15 = 0;
    }

    else
    {
LABEL_19:
      if (v11 >= *(result + 3))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 2, v11 + 1, 8);
        v11 = *(result + 2);
        v10 = *result;
      }

      v10[v11] = v12;
      v17 = *(result + 2) + 1;
      *(result + 2) = v17;
      v8 = &(*result)[v17 - 1];
      v15 = 1;
    }

    v16 = 1;
  }

LABEL_23:
  *(a3 + 8) = v15;
  *a3 = v8;
  *(a3 + 16) = v16;
}

void *llvm::DenseMap<unsigned long,unsigned long,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,unsigned long>>::grow(uint64_t a1, int a2)
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
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -1;
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
        if (*v17 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v25 = v16 & (((0xBF58476D1CE4E5B9 * v24) >> 31) ^ (484763065 * v24));
          v23 = &result[2 * v25];
          v26 = *v23;
          if (v24 != *v23)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -1)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -2;
              }

              if (v29)
              {
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = &result[2 * (v30 & v16)];
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          v23[1] = *(v17 + 1);
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
      *(v20 - 2) = -1;
      *v20 = -1;
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
        *v10 = -1;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

uint64_t llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::DenseMap(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    goto LABEL_11;
  }

  v6 = (4 * a3 / 3u + 1) | ((4 * a3 / 3u + 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  LODWORD(v7) = (((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8)) + 1;
  *(a1 + 16) = v7;
  buffer = llvm::allocate_buffer(72 * v7, 8uLL);
  *a1 = buffer;
  *(a1 + 8) = 0;
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_12:
    v16 = &a2[9 * a3];
    while (1)
    {
      v21 = *(a1 + 16);
      if (!v21)
      {
        break;
      }

      v17 = v21 - 1;
      v18 = v17 & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
      v19 = (*a1 + 72 * v18);
      v20 = *v19;
      if (*a2 != *v19)
      {
        v23 = 0;
        v24 = 1;
        while (v20 != -1)
        {
          if (v23)
          {
            v25 = 0;
          }

          else
          {
            v25 = v20 == -2;
          }

          if (v25)
          {
            v23 = v19;
          }

          v26 = v18 + v24++;
          v18 = v26 & v17;
          v19 = (*a1 + 72 * v18);
          v20 = *v19;
          if (*a2 == *v19)
          {
            goto LABEL_14;
          }
        }

        if (v23)
        {
          v22 = v23;
        }

        else
        {
          v22 = v19;
        }

        goto LABEL_17;
      }

LABEL_14:
      a2 += 9;
      if (a2 == v16)
      {
        return a1;
      }
    }

    v22 = 0;
LABEL_17:
    llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::InsertIntoBucket<unsigned long const&,llvm::SmallVector<mlir::anec::Dim,12u> const&>(a1, v22, a2, (a2 + 1));
    goto LABEL_14;
  }

  v10 = 72 * v9 - 72;
  if (v10 < 0x48)
  {
    v11 = buffer;
LABEL_9:
    v15 = &buffer[9 * v9];
    do
    {
      *v11 = -1;
      v11 += 9;
    }

    while (v11 != v15);
    goto LABEL_11;
  }

  v12 = v10 / 0x48 + 1;
  v11 = &buffer[9 * (v12 & 0x7FFFFFFFFFFFFFELL)];
  v13 = buffer;
  v14 = v12 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    *v13 = -1;
    v13[9] = -1;
    v13 += 18;
    v14 -= 2;
  }

  while (v14);
  if (v12 != (v12 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_9;
  }

LABEL_11:
  if (a3)
  {
    goto LABEL_12;
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::LookupBucketFor<unsigned long>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (*a1 + 72 * v6);
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
        v7 = (v4 + 72 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::InsertIntoBucket<unsigned long const&,llvm::SmallVector<mlir::anec::Dim,12u> const&>(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a2;
  v15 = a2;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v12 = a3;
    v13 = a4;
    v6 *= 2;
  }

  else
  {
    if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
    {
      goto LABEL_3;
    }

    v12 = a3;
    v13 = a4;
  }

  v14 = a1;
  llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::LookupBucketFor<unsigned long>(v14, v12, &v15);
  a1 = v14;
  a3 = v12;
  v5 = *(v14 + 2);
  v4 = v15;
  a4 = v13;
LABEL_3:
  *(a1 + 2) = v5 + 1;
  if (*v4 != -1)
  {
    --*(a1 + 3);
  }

  *v4 = *a3;
  v7 = v4 + 3;
  v4[1] = v4 + 3;
  v4[2] = 0xC00000000;
  if (v4 + 1 != a4)
  {
    v8 = *(a4 + 8);
    if (v8)
    {
      if (v8 < 0xD)
      {
        v10 = *(a4 + 8);
      }

      else
      {
        v9 = a4;
        llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 1), v4 + 3, *(a4 + 8), 4);
        v10 = *(v9 + 8);
        if (!v10)
        {
LABEL_12:
          *(v4 + 4) = v8;
          return v4;
        }

        a4 = v9;
        v7 = v4[1];
      }

      memcpy(v7, *a4, 4 * v10);
      goto LABEL_12;
    }
  }

  return v4;
}

void *llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(72 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 9 * v3;
    llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 72 * v11 - 72;
    if (v12 < 0x48)
    {
      v13 = result;
LABEL_14:
      v17 = &result[9 * v11];
      do
      {
        *v13 = -1;
        v13 += 9;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x48 + 1;
    v13 = &result[9 * (v14 & 0x7FFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v15 = -1;
      v15[9] = -1;
      v15 += 18;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 72 * v6 - 72;
    if (v8 < 0x48)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[9 * v6];
      do
      {
        *v9 = -1;
        v9 += 9;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x48 + 1;
    v9 = &v7[9 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -1;
      v11[9] = -1;
      v11 += 18;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
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
      if (*v4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v15 = *(a1 + 16) - 1;
        v16 = v15 & (((0xBF58476D1CE4E5B9 * v14) >> 31) ^ (484763065 * v14));
        v17 = (*a1 + 72 * v16);
        v18 = *v17;
        if (v14 != *v17)
        {
          v20 = 0;
          v21 = 1;
          while (v18 != -1)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v18 == -2;
            }

            if (v22)
            {
              v20 = v17;
            }

            v23 = v16 + v21++;
            v16 = v23 & v15;
            v17 = (*a1 + 72 * (v23 & v15));
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
        v17[2] = 0xC00000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<int>::operator=((v17 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v19 = v4[1];
        if (v19 != v4 + 3)
        {
          free(v19);
        }
      }

      v4 += 9;
    }

    while (v4 != a3);
  }
}

uint64_t mlir::getStrideInBytes(uint64_t a1, uint64_t a2, int a3)
{
  v20 = a1;
  *(a2 + 8) = 0;
  if (a3)
  {
    v19[0] = mlir::DenseElementsAttr::getRawStringData(&v20);
    v19[1] = v4;
    if (mlir::ElementsAttr::isSplat(v19))
    {
      return 1;
    }

    a1 = v20;
  }

  v18 = 0;
  if ((mlir::getStridesAndOffset(a1, a2, &v18) & 1) == 0)
  {
    return 0;
  }

  v19[0] = mlir::AffineBinaryOpExpr::getRHS(&v20);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v19);
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = IntOrFloatBitWidth >> 3;
    v8 = *a2;
    v9 = (v6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v9)
    {
      v10 = v9 + 1;
      v11 = (v9 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v12 = &v8[v11];
      v13 = v8 + 1;
      v14 = v11;
      do
      {
        v15 = *v13 * v7;
        *(v13 - 1) *= v7;
        *v13 = v15;
        v13 += 2;
        v14 -= 2;
      }

      while (v14);
      if (v10 == v11)
      {
        return 1;
      }
    }

    else
    {
      v12 = *a2;
    }

    v17 = &v8[v6];
    do
    {
      *v12++ *= v7;
    }

    while (v12 != v17);
  }

  return 1;
}

BOOL mlir::inferReturnTypesEqualToFirstArgumentType(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = a4;
  v12[1] = a5;
  if (a5)
  {
    v9 = *(mlir::ValueRange::dereference_iterator(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v10 = *(a9 + 8);
    if (v10 >= *(a9 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a9, (a9 + 16), v10 + 1, 8);
      LODWORD(v10) = *(a9 + 8);
    }

    *(*a9 + 8 * v10) = v9;
    ++*(a9 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::inferReductionOpReturnShape(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, int a7, uint64_t a8)
{
  v34[6] = *MEMORY[0x1E69E9840];
  v32 = v34;
  v33 = 0x600000000;
  result = mlir::getPositiveAxes(a5, a6, a4, &v32, a1, a2, 0);
  if (result)
  {
    v26 = v28;
    v27 = 0x400000000;
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    if (v33)
    {
      v13 = v32;
      v14 = 8 * v33;
      do
      {
        v15 = *v13++;
        v25 = v15;
        llvm::SmallSet<long long,4u,std::less<long long>>::insertImpl<long long const&>(&v26, &v25, v24);
        v14 -= 8;
      }

      while (v14);
    }

    if (a4)
    {
      for (i = 0; i != a4; ++i)
      {
        if (v31)
        {
          v19 = v30;
          if (!v30)
          {
            goto LABEL_7;
          }

          v20 = &v30;
          do
          {
            if (v19[4] >= i)
            {
              v20 = v19;
            }

            v19 = v19[v19[4] < i];
          }

          while (v19);
          if (v20 == &v30 || i < v20[4])
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (!v27)
          {
            goto LABEL_7;
          }

          v21 = v26;
          v22 = 8 * v27;
          while (*v21 != i)
          {
            ++v21;
            v22 -= 8;
            if (!v22)
            {
              goto LABEL_7;
            }
          }

          if (!v22)
          {
LABEL_7:
            v17 = *(a3 + 8 * i);
            v18 = *(a8 + 8);
            if (v18 >= *(a8 + 12))
            {
              goto LABEL_27;
            }

            goto LABEL_8;
          }
        }

        if (!a7)
        {
          continue;
        }

        v18 = *(a8 + 8);
        v17 = 1;
        if (v18 >= *(a8 + 12))
        {
LABEL_27:
          llvm::SmallVectorBase<unsigned int>::grow_pod(a8, (a8 + 16), v18 + 1, 8);
          v18 = *(a8 + 8);
        }

LABEL_8:
        *(*a8 + 8 * v18) = v17;
        ++*(a8 + 8);
      }
    }

    std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v29, v30);
    if (v26 != v28)
    {
      free(v26);
    }

    result = 1;
  }

  if (v32 != v34)
  {
    v23 = result;
    free(v32);
    return v23;
  }

  return result;
}

uint64_t mlir::mps::isMoreSpecializedShape(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v4 = 8 * a2 - 8;
  do
  {
    v5 = v4;
    v6 = *a1 == *a3 || *a3 == 0x8000000000000000;
    v7 = v6;
    if (!v6)
    {
      break;
    }

    ++a1;
    ++a3;
    v4 -= 8;
  }

  while (v5);
  return v7;
}

uint64_t mlir::mps::areMoreSpecializedTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 != a4)
  {
    return 0;
  }

  v16[0] = &unk_1F1A18280;
  v16[1] = a5;
  v17 = v16;
  if (!a2)
  {
    v13 = 1;
    v12 = v16;
LABEL_16:
    (*(*v12 + 32))(v12);
    return v13;
  }

  v7 = 0;
  v8 = a2 - 1;
  do
  {
    v9 = mlir::TypeRange::dereference_iterator(a1, v7);
    v14 = mlir::TypeRange::dereference_iterator(a3, v7);
    v15 = v9;
    if (!v17)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    result = (*(*v17 + 48))(v17, &v15, &v14);
    if (result)
    {
      v11 = v8 == v7;
    }

    else
    {
      v11 = 1;
    }

    ++v7;
  }

  while (!v11);
  v12 = v17;
  if (v17 == v16)
  {
    v13 = result;
    goto LABEL_16;
  }

  if (!v17)
  {
    return result;
  }

  v13 = result;
  (*(*v17 + 40))(v17);
  return v13;
}

uint64_t std::__function::__func<mlir::mps::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mps::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A18280;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlir::mps::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mps::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, void **a2, void **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(**a2 + 8);
  if (v6)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v4 = 0;
  }

  v23[0] = v4;
  v23[1] = v6;
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  result = 0;
  v22[0] = v5;
  v22[1] = v7;
  if (v4 && v5)
  {
    v9 = *(a1 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v23);
    v24 = mlir::ElementsAttr::isSplat(v22);
    v25 = isSplat;
    v11 = *(v9 + 24);
    if (!v11)
    {
      v21 = std::__throw_bad_function_call[abi:nn200100]();
      return mlir::mps::getElementBitWidth(v21);
    }

    result = (*(*v11 + 48))(v11, &v25, &v24);
    if (result)
    {
      if (!mlir::ElementsAttr::getShapedType(v22))
      {
        return 1;
      }

      result = mlir::ElementsAttr::getShapedType(v23);
      if (!result)
      {
        return result;
      }

      Shape = mlir::ShapedType::getShape(v23);
      v14 = v13;
      v15 = mlir::ShapedType::getShape(v22);
      if (v14 != v16)
      {
        return 0;
      }

      if (v14)
      {
        v17 = v15;
        v18 = 8 * v14 - 8;
        do
        {
          v19 = v18;
          v20 = *Shape == *v17 || *v17 == 0x8000000000000000;
          result = v20;
          if (!v20)
          {
            break;
          }

          ++Shape;
          ++v17;
          v18 -= 8;
        }

        while (v19);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::getElementBitWidth(void *a1)
{
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v6 = ElementTypeOrSelf;
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v2 = ElementTypeOrSelf;
  }

  else
  {
    v2 = 0;
  }

  v5 = v2;
  if (!v2)
  {
    return mlir::Type::getIntOrFloatBitWidth(&v6);
  }

  Value = mlir::AffineMapAttr::getValue(&v5);
  return 2 * mlir::mps::getElementBitWidth(Value);
}

uint64_t mlir::mps::getTypeAlignmentSize(void *a1)
{
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v11 = ElementTypeOrSelf;
  v2 = *(*ElementTypeOrSelf + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
  {
    return 1;
  }

  if (v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v3 = v2 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
    if (v2 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v4 = ElementTypeOrSelf;
    }

    else
    {
      v4 = 0;
    }

    v10 = v4;
    if (!v3)
    {
      return mlir::Type::getIntOrFloatBitWidth(&v11) >> 3;
    }

    goto LABEL_15;
  }

  if (mlir::Type::getIntOrFloatBitWidth(&v11) < 8)
  {
    return 1;
  }

  v6 = *(*v11 + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  if (!v7)
  {
    return mlir::Type::getIntOrFloatBitWidth(&v11) >> 3;
  }

LABEL_15:
  Value = mlir::AffineMapAttr::getValue(&v10);
  return mlir::Type::getIntOrFloatBitWidth(&Value) >> 3;
}

uint64_t mlir::mps::getElementsAttrElementBitWidth(void *a1)
{
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v7 = ElementTypeOrSelf;
  v2 = *(*ElementTypeOrSelf + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v3 = ElementTypeOrSelf;
  }

  else
  {
    v3 = 0;
  }

  v6 = v3;
  if (v3)
  {
    Value = mlir::AffineMapAttr::getValue(&v6);
    return 2 * mlir::mps::getElementsAttrElementBitWidth(Value);
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
  {
    return 4;
  }

  else
  {
    return mlir::Type::getIntOrFloatBitWidth(&v7);
  }
}

unint64_t mlir::mps::getElementsAttrStorageSize(uint64_t a1, uint64_t a2)
{
  v24[0] = a1;
  v24[1] = a2;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  if (mlir::Type::isInteger(&isSplat, 1))
  {
    Shape = mlir::ShapedType::getShape(v24);
    NumElements = mlir::ShapedType::getNumElements(Shape, v3);
    v5 = NumElements - (NumElements != 0);
    goto LABEL_3;
  }

  if (mlir::Type::isInteger(&isSplat, 2))
  {
    v8 = mlir::ShapedType::getShape(v24);
    v10 = mlir::ShapedType::getNumElements(v8, v9);
    v11 = v10 - (v10 != 0);
LABEL_9:
    v12 = v11 >> 2;
    if (v10)
    {
      return v12 + 1;
    }

    else
    {
      return v12;
    }
  }

  if (mlir::Type::isInteger(&isSplat, 3))
  {
    v13 = mlir::ShapedType::getShape(v24);
    NumElements = mlir::ShapedType::getNumElements(v13, v14);
    v5 = 3 * NumElements - (NumElements != 0);
LABEL_3:
    v6 = v5 >> 3;
    if (NumElements)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }

  if (*(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id && !mlir::Type::isInteger(&isSplat, 4))
  {
    if (!mlir::Type::isInteger(&isSplat, 6))
    {
      ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(isSplat);
      v21 = mlir::ShapedType::getShape(v24);
      return (mlir::ShapedType::getNumElements(v21, v22) * ElementsAttrElementBitWidth) >> 3;
    }

    v18 = mlir::ShapedType::getShape(v24);
    v10 = mlir::ShapedType::getNumElements(v18, v19);
    v11 = 3 * v10 - (v10 != 0);
    goto LABEL_9;
  }

  v15 = mlir::ShapedType::getShape(v24);
  v17 = mlir::ShapedType::getNumElements(v15, v16);
  if (v17)
  {
    return ((v17 - (v17 != 0)) >> 1) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::isCompatibleWithDenseStorage(uint64_t a1)
{
  v7 = a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v6 = v1;
  if (v1)
  {
    Value = mlir::AffineMapAttr::getValue(&v6);
    return mlir::mps::isCompatibleWithDenseStorage(Value);
  }

  else
  {
    result = mlir::Type::isIntOrFloat(&v7);
    if (result)
    {
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v7);
      return IntOrFloatBitWidth == 1 || IntOrFloatBitWidth > 7;
    }
  }

  return result;
}

ZinIrHalH13g *mlir::mps::MPSDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  result = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(a3);
  v9[0] = result;
  v9[1] = v8;
  if (result)
  {
    return mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>(a2, a5, &v10, v9);
  }

  return result;
}

uint64_t mlir::mps::createBlobHandle@<X0>(mlir::mps *this@<X0>, mlir::MLIRContext *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(this, a2);
  mlir::mps::MPSResourceBlobManagerInterface::allocateBufferTensorBlob(&v22, Manager, a2, a3);
  v15 = v22;
  v16 = v23;
  v19 = v26;
  if (v26 >= 8)
  {
    if ((v26 & 2) != 0 && (v26 & 4) != 0)
    {
      (*((v26 & 0xFFFFFFFFFFFFFFF8) + 8))(&v17, &v24);
      (*((v19 & 0xFFFFFFFFFFFFFFF8) + 16))(&v24);
    }

    else
    {
      v17 = v24;
      v18 = v25;
    }

    v26 = 0;
  }

  v20 = v27;
  v21 = 1;
  result = mlir::mps::MPSResourceBlobManagerInterface::insert(Manager, "tmp", 3uLL, &v15, a4);
  if (v21 == 1 && v19 >= 8)
  {
    v9 = (v19 & 2) != 0 ? &v17 : v17;
    result = (*(v19 & 0xFFFFFFFFFFFFFFF8))(v9, v15, *(&v15 + 1), v16);
    v10 = v19;
    if (v19 >= 8)
    {
      if ((v19 & 4) != 0)
      {
        if ((v19 & 2) != 0)
        {
          v11 = &v17;
        }

        else
        {
          v11 = v17;
        }

        result = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 16))(v11);
      }

      if ((v10 & 2) == 0)
      {
        llvm::deallocate_buffer(v17, *(&v17 + 1));
      }
    }
  }

  if (v26 >= 8)
  {
    v12 = (v26 & 2) != 0 ? &v24 : v24;
    result = (*(v26 & 0xFFFFFFFFFFFFFFF8))(v12, v22, *(&v22 + 1), v23);
    v13 = v26;
    if (v26 >= 8)
    {
      if ((v26 & 4) != 0)
      {
        if ((v26 & 2) != 0)
        {
          v14 = &v24;
        }

        else
        {
          v14 = v24;
        }

        result = (*((v26 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
      }

      if ((v13 & 2) == 0)
      {
        llvm::deallocate_buffer(v24, *(&v24 + 1));
      }
    }
  }

  return result;
}

uint64_t mlir::mps::getBufferTensorAttr(void *a1)
{
  v20 = a1;
  Context = mlir::Attribute::getContext(&v20);
  v2 = mlir::TensorType::operator mlir::ShapedType(&v20);
  ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v2, v3);
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v20);
  TypeAlignmentSize = mlir::mps::getTypeAlignmentSize(RHS);
  mlir::mps::createBlobHandle(Context, ElementsAttrStorageSize, TypeAlignmentSize, &v18);
  v7 = v20;
  v25 = v18;
  v26 = v19;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v21[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
  v21[1] = Context;
  v28[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v28[1] = v21;
  v24 = v7;
  v27 = 0;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v25 - 0xAE502812AA7333) ^ DWORD1(v25));
  v10 = 0x9DDFEA08EB382D69 * (DWORD1(v25) ^ (v9 >> 47) ^ v9);
  v11 = v10 ^ (v10 >> 47);
  v12 = 0x9DDFEA08EB382D69 * v11;
  v13 = 0xB492B66FBE98F273 * ((v7 >> 4) ^ (v7 >> 9));
  v14 = __ROR8__(v13 - 0x9DDFEA08EB382D69 * v11, 43) + 0x6C105E72878303FFLL * v11 - 0x4AA9CCC802B940A1;
  v15 = __ROR8__(v12 ^ 0xC949D7C7509E6557, 20);
  v16 = 0x9DDFEA08EB382D69 * ((v13 - 0xAE502812AA7333 + v15 + 24) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v13 - 0xAE502812AA7333 + v15 + 24))) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ (v13 - 0xAE502812AA7333 + v15 + 24))));
  v22[0] = &v24;
  v22[1] = v28;
  v23 = &v24;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v16 >> 47) ^ v16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v23, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v22);
}

uint64_t mlir::mps::MPSBufferTensorAttr::get(mlir::MLIRContext *a1, uint64_t a2, __int128 *a3)
{
  v19 = *a3;
  v20 = *(a3 + 2);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
  v15[1] = a1;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v22[1] = v15;
  v18 = a2;
  v21 = 0;
  v6 = 0x9DDFEA08EB382D69 * ((8 * v19 - 0xAE502812AA7333) ^ DWORD1(v19));
  v7 = 0x9DDFEA08EB382D69 * (DWORD1(v19) ^ (v6 >> 47) ^ v6);
  v8 = v7 ^ (v7 >> 47);
  v9 = 0x9DDFEA08EB382D69 * v8;
  v10 = 0xB492B66FBE98F273 * ((a2 >> 4) ^ (a2 >> 9));
  v11 = __ROR8__(v10 - 0x9DDFEA08EB382D69 * v8, 43) + 0x6C105E72878303FFLL * v8 - 0x4AA9CCC802B940A1;
  v12 = __ROR8__(v9 ^ 0xC949D7C7509E6557, 20);
  v13 = 0x9DDFEA08EB382D69 * ((v10 - 0xAE502812AA7333 + v12 + 24) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v10 - 0xAE502812AA7333 + v12 + 24))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ (v10 - 0xAE502812AA7333 + v12 + 24))));
  v16[0] = &v18;
  v16[1] = v22;
  v17 = &v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v13 >> 47) ^ v13), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

uint64_t mlir::mps::getBufferTensorAttr(uint64_t a1, const void *a2, const void *a3)
{
  v8[6] = *MEMORY[0x1E69E9840];
  v5[1] = a3;
  v6 = a1;
  v5[0] = a2;
  mlir::mps::getBufferTensorAttrs(&v6, 1uLL, v5, 1, &v7);
  v3 = *v7;
  if (v7 != v8)
  {
    free(v7);
  }

  return v3;
}

void mlir::mps::getBufferTensorAttrs(mlir::Attribute *a1@<X0>, unint64_t a2@<X1>, const void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73[10] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = a1;
    Context = mlir::Attribute::getContext(a1);
    v71 = v73;
    v72 = 0xA00000000;
    if (a2 <= 0xA)
    {
      v68 = v70;
      v69 = 0xA00000000;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, a2, 8);
      v68 = v70;
      v69 = 0xA00000000;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, a2, 16);
    }

    v9 = 0;
    v10 = 0;
    v11 = 8 * a2;
    v12 = v8;
    do
    {
      v63 = *v12;
      RHS = mlir::AffineBinaryOpExpr::getRHS(&v63);
      TypeAlignmentSize = mlir::mps::getTypeAlignmentSize(RHS);
      v15 = TypeAlignmentSize;
      if (v9 <= TypeAlignmentSize)
      {
        v9 = TypeAlignmentSize;
      }

      v16 = v72;
      if (v72 >= HIDWORD(v72))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v72 + 1, 8);
        v16 = v72;
      }

      v17 = (v10 + v15 - 1) / v15 * v15;
      v71[v16] = v17;
      LODWORD(v72) = v72 + 1;
      v18 = v69;
      if (v69 >= HIDWORD(v69))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v69 + 1, 16);
        v18 = v69;
      }

      v19 = (v68 + 16 * v18);
      *v19 = v10;
      v19[1] = v17;
      LODWORD(v69) = v69 + 1;
      v20 = mlir::TensorType::operator mlir::ShapedType(&v63);
      v10 = (mlir::mps::getElementsAttrStorageSize(v20, v21) + v17);
      v12 = (v12 + 8);
      v11 -= 8;
    }

    while (v11);
    mlir::mps::createBlobHandle(Context, v10, v9, &v58);
    *a5 = a5 + 16;
    *(a5 + 8) = 0x600000000;
    if (a2 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), a2, 8);
    }

    if (a4 && v72)
    {
      v22 = v71;
      v23 = 8 * v72 - 8;
      v24 = 16 * a4 - 16;
      v25 = 8 * a2 - 8;
      do
      {
        v26 = *v8;
        v56 = v58;
        v57 = v59;
        v27 = *v22;
        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
        v60[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
        v60[1] = Context;
        v67[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
        v67[1] = v60;
        v64 = v56;
        v65 = v57;
        v63 = v26;
        v66 = v27;
        v29 = 0x9DDFEA08EB382D69 * ((8 * v64 - 0xAE502812AA7333) ^ DWORD1(v64));
        v30 = 0x9DDFEA08EB382D69 * (DWORD1(v56) ^ (v29 >> 47) ^ v29);
        v31 = v30 ^ (v30 >> 47);
        v32 = 0x9DDFEA08EB382D69 * v31;
        v33 = 0xB492B66FBE98F273 * ((v26 >> 4) ^ (v26 >> 9));
        v34 = __ROR8__((0x9AE16A3B2F90404FLL * v27) ^ 0xFF51AFD7ED558CCDLL, 30) + 0x6C105E72878303FFLL * v31 + __ROR8__(v33 - 0x9DDFEA08EB382D69 * v31, 43);
        v35 = v33 - 0x9AE16A3B2F90404FLL * v27 - 0xAE502812AA7333 + __ROR8__(v32 ^ 0xC949D7C7509E6557, 20) + 24;
        v36 = 0x9DDFEA08EB382D69 * (v35 ^ ((0x9DDFEA08EB382D69 * (v34 ^ v35)) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ v35)));
        v61[0] = &v63;
        v61[1] = v67;
        v62 = &v63;
        ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v36 >> 47) ^ v36), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v62, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v61);
        v38 = *(a5 + 8);
        if (v38 >= *(a5 + 12))
        {
          v54 = ParametricStorageTypeImpl;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v38 + 1, 8);
          ParametricStorageTypeImpl = v54;
          v38 = *(a5 + 8);
        }

        *(*a5 + 8 * v38) = ParametricStorageTypeImpl;
        v39 = *(a5 + 8) + 1;
        *(a5 + 8) = v39;
        v40 = *(*a5 + 8 * v39 - 8);
        v41 = *(v40[2] + 16);
        v42 = v40[5];
        v63 = v40[1];
        v43 = mlir::TensorType::operator mlir::ShapedType(&v63);
        ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v43, v44);
        v46 = *a3;
        a3 += 2;
        memcpy((v41 + v42), v46, ElementsAttrStorageSize);
        if (!v25)
        {
          break;
        }

        if (!v24)
        {
          break;
        }

        v8 = (v8 + 8);
        ++v22;
        v47 = v23;
        v23 -= 8;
        v24 -= 16;
        v25 -= 8;
      }

      while (v47);
    }

    v48 = v68;
    if (v69)
    {
      v49 = v58;
      v50 = v68 + 16 * v69;
      do
      {
        v51 = *v48;
        v52 = *(v48 + 1);
        v48 += 16;
        memset((*(v49 + 16) + v51), 255, v52 - v51);
      }

      while (v48 != v50);
      v48 = v68;
    }

    if (v48 != v70)
    {
      free(v48);
    }

    if (v71 != v73)
    {
      free(v71);
    }
  }

  else
  {
    *a5 = a5 + 16;
    *(a5 + 8) = 0x600000000;
  }
}

uint64_t mlir::mps::MPSBufferTensorAttr::get(mlir::MLIRContext *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v18[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
  v18[1] = a1;
  v25[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v25[1] = v18;
  v21 = a2;
  v22 = *a3;
  v23 = *(a3 + 2);
  v24 = a4;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v22 - 0xAE502812AA7333) ^ DWORD1(v22));
  v10 = 0x9DDFEA08EB382D69 * (DWORD1(v22) ^ (v9 >> 47) ^ v9);
  v11 = v10 ^ (v10 >> 47);
  v12 = 0x9DDFEA08EB382D69 * v11;
  v13 = 0xB492B66FBE98F273 * ((a2 >> 4) ^ (a2 >> 9));
  v14 = __ROR8__((0x9AE16A3B2F90404FLL * a4) ^ 0xFF51AFD7ED558CCDLL, 30) + 0x6C105E72878303FFLL * v11 + __ROR8__(v13 - 0x9DDFEA08EB382D69 * v11, 43);
  v15 = v13 - 0x9AE16A3B2F90404FLL * a4 - 0xAE502812AA7333 + __ROR8__(v12 ^ 0xC949D7C7509E6557, 20) + 24;
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v14 ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ v15)));
  v19[0] = &v21;
  v19[1] = v25;
  v20 = &v21;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v16 >> 47) ^ v16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v19);
}

uint64_t mlir::mps::MPSBufferTensorAttr::getMutableRawData(mlir::mps::MPSBufferTensorAttr *this)
{
  v1 = *(*(*this + 16) + 16);
  v2 = *(*this + 40);
  v6 = *(*this + 8);
  v3 = mlir::TensorType::operator mlir::ShapedType(&v6);
  mlir::mps::getElementsAttrStorageSize(v3, v4);
  return v1 + v2;
}

llvm::raw_ostream *mlir::mps::operator<<(llvm::raw_ostream *a1, unsigned int *a2)
{
  v3 = llvm::raw_ostream::operator<<(a1, a2[2]);
  v4 = *(v3 + 4);
  if (*(v3 + 3) == v4)
  {
    v9 = llvm::raw_ostream::write(v3, ".", 1uLL);
    v5 = llvm::raw_ostream::operator<<(v9, a2[3]);
    v6 = *(v5 + 4);
    if (*(v5 + 3) != v6)
    {
LABEL_3:
      *v6 = 46;
      ++*(v5 + 4);
      v7 = a2[4];

      return llvm::raw_ostream::operator<<(v5, v7);
    }
  }

  else
  {
    *v4 = 46;
    ++*(v3 + 4);
    v5 = llvm::raw_ostream::operator<<(v3, a2[3]);
    v6 = *(v5 + 4);
    if (*(v5 + 3) != v6)
    {
      goto LABEL_3;
    }
  }

  v5 = llvm::raw_ostream::write(v5, ".", 1uLL);
  v7 = a2[4];

  return llvm::raw_ostream::operator<<(v5, v7);
}

void mlir::mps::MPSDialect::convertUnregisteredOperation(mlir::OpBuilder *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v30[0] = *(*(a3 + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v30);
  if (v9 && (v9 >= 0x17 ? (v10 = 23) : (v10 = v9), (v11 = v9, v12 = memcmp(AttrData, "mps.reverse_square_root", v10), v11 == 23) && !v12))
  {
    v13 = *(a2 + 8);
    if (v13 && (v13 != 1 || *(a2 + 12) >= 2u))
    {
      v28 = "incorrect version of the operation";
      v29 = 259;
      mlir::Operation::emitError(a3, &v28, v30);
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v30[0])
      {
        mlir::InFlightDiagnostic::report(v30);
      }

      if (v38 == 1)
      {
        if (v37 != &v38)
        {
          free(v37);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v36;
          v22 = __p;
          if (v36 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v36 = v20;
          operator delete(v22);
        }

        v23 = v33;
        if (v33)
        {
          v24 = v34;
          v25 = v33;
          if (v34 != v33)
          {
            do
            {
              v27 = *--v24;
              v26 = v27;
              *v24 = 0;
              if (v27)
              {
                MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
              }
            }

            while (v24 != v23);
            v25 = v33;
          }

          v34 = v23;
          operator delete(v25);
        }

        if (v31 != &v32)
        {
          free(v31);
        }
      }
    }

    else if ((*(a3 + 46) & 0x80) != 0 && *(a3 + 68) == 1)
    {
      v14 = *(a3 + 24);
      v30[0] = *(*(a3 + 72) + 24);
      v15 = mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value>(a1, v14, v30);
      v30[0] = mlir::Operation::getAttrDictionary(a3);
      Value = mlir::ArrayAttr::getValue(v30);
      mlir::Operation::setAttrs(v15, Value, v17);
      v18 = *(v15 + 9);
      v19 = v15 - 16;
      if (!v18)
      {
        v19 = 0;
      }

      *a4 = v19;
      *(a4 + 8) = v18;
      *(a4 + 16) = 1;
    }

    else
    {
      mlir::mps::MPSDialect::convertUnregisteredOperation(a3, a4);
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 16) = 0;
  }
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v16[38] = *MEMORY[0x1E69E9840];
  v13 = a2;
  Context = mlir::Attribute::getContext(&v13);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value>(v16, v15, v14);
  }

  mlir::OperationState::OperationState(v16, a2, v7);
  mlir::mps::ReciprocalSquareRootOp::build(v9, v16, *a3);
  v10 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v11;
}

uint64_t mlir::mps::anonymous namespace::inferElementWiseUnaryComparisonOpReturnTypes(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v16[0] = a2;
  v16[1] = a3;
  v15 = a1;
  IntegerType = mlir::Builder::getIntegerType(&v15, 1);
  v7 = mlir::UnrankedTensorType::get(IntegerType);
  if (a3 == 1)
  {
    v8 = *(mlir::ValueRange::dereference_iterator(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v9 = *(*v8 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v8 = 0;
    }

    v14 = v8;
    if (v8)
    {
      v13[0] = 0;
      v13[16] = 0;
      v7 = mlir::TensorType::cloneWith(&v14, v13, IntegerType);
    }
  }

  v11 = *(a4 + 8);
  if (v11 >= *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v11 + 1, 8);
    LODWORD(v11) = *(a4 + 8);
  }

  *(*a4 + 8 * v11) = v7;
  ++*(a4 + 8);
  return 1;
}

uint64_t mlir::mps::anonymous namespace::inferElementWiseBinaryMathOpReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v21[0] = a2;
  v21[1] = a3;
  if (a3 != 2)
  {
LABEL_8:
    v11 = mlir::Float32Type::get(a1, a2);
    v12 = mlir::UnrankedTensorType::get(v11);
    v13 = *(a4 + 8);
    if (v13 >= *(a4 + 12))
    {
LABEL_17:
      v18 = v12;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v13 + 1, 8);
      v12 = v18;
      LODWORD(v13) = *(a4 + 8);
    }

LABEL_9:
    *(*a4 + 8 * v13) = v12;
    ++*(a4 + 8);
    return 1;
  }

  v5 = a1;
  v6 = mlir::ValueRange::dereference_iterator(v21, 0);
  v7 = mlir::ValueRange::dereference_iterator(v21, 1);
  v20[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8));
  v20[1] = v8;
  v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v7 + 8) & 0xFFFFFFFFFFFFFFF8));
  v19[0] = v9;
  v19[1] = a2;
  if (v20[0])
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    a1 = v5;
    goto LABEL_8;
  }

  ShapedType = mlir::ElementsAttr::getShapedType(v20);
  if (!ShapedType || (mlir::ElementsAttr::getShapedType(v19) & 1) == 0)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v20[0]);
    v12 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v13 = *(a4 + 8);
    if (v13 >= *(a4 + 12))
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v20[0], v19[0], 0);
  if (!BroadcastedType)
  {
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a4, BroadcastedType);
  return 1;
}

BOOL mlir::mps::anonymous namespace::inferElementWiseBinaryComparisonOpReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v25[0] = a3;
  v25[1] = a4;
  if (a4 == 2)
  {
    v7 = a2;
    v23 = (*(mlir::ValueRange::dereference_iterator(v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = (*(mlir::ValueRange::dereference_iterator(v25, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
    BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v23, v22, 0);
    v21 = BroadcastedType;
    if (BroadcastedType)
    {
      v9 = BroadcastedType;
      Context = mlir::Attribute::getContext(&v23);
      v11 = mlir::IntegerType::get(Context, 1u, 0);
      v12 = *(*v9 + 136);
      if (v12 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v16 = mlir::UnrankedTensorType::get(v11);
        if (!v16)
        {
          return mlir::emitOptionalError<char const(&)[17],mlir::Type>(a1, v7, "unexpected type ", &v21);
        }
      }

      else
      {
        if (v12 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          return mlir::emitOptionalError<char const(&)[17],mlir::Type>(a1, v7, "unexpected type ", &v21);
        }

        v24 = v9;
        v13 = v11;
        Value = mlir::ArrayAttr::getValue(&v24);
        v16 = mlir::RankedTensorType::get(Value, v15, v13, 0);
        if (!v16)
        {
          return mlir::emitOptionalError<char const(&)[17],mlir::Type>(a1, v7, "unexpected type ", &v21);
        }
      }

      v18 = a5;
      v19 = a5[2];
      if (v19 >= a5[3])
      {
        v20 = v16;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 4, v19 + 1, 8);
        v16 = v20;
        v18 = a5;
        LODWORD(v19) = a5[2];
      }

      *(*v18 + 8 * v19) = v16;
      ++v18[2];
      return 1;
    }

    else
    {
      return mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[6],mlir::Type &,char const(&)[30]>(a1, v7, "input types ", &v23, " and ", &v22, " are not broadcast compatible");
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[41]>(a1, a2, "invalid number of operands");
  }
}

void mlir::mps::UnrealizedFoldOp::downgradeToVersion(uint64_t **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v23[0] = &unk_1F1A17630;
  v23[1] = 0x100000001;
  v24 = 0;
  v5 = *(a2 + 8);
  if (v5 && (v5 != 1 || *(a2 + 12)))
  {
    v6 = *(v4 + 9);
    v7 = v4 - 2;
    if (!v6)
    {
      v7 = 0;
    }

    *a3 = v7;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
  }

  else
  {
    v16[0] = "failed to downgrade: requested target version is {0}, but the op was first defined in version {1}";
    v16[1] = 97;
    v16[2] = v20;
    v16[3] = 2;
    v17 = 1;
    v18[0] = &unk_1F1A17760;
    v18[1] = a2;
    v19[0] = &unk_1F1A17790;
    v19[1] = v23;
    v20[0] = v18;
    v20[1] = v19;
    v22 = 263;
    v21 = v16;
    mlir::OpState::emitOpError(a1, &v21, v25);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v31;
        v10 = __p;
        if (v31 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v31 = v8;
        operator delete(v10);
      }

      v11 = v28;
      if (v28)
      {
        v12 = v29;
        v13 = v28;
        if (v29 != v28)
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
          v13 = v28;
        }

        v29 = v11;
        operator delete(v13);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }
}

ZinIrHalH13g *mlir::mps::ReciprocalSquareRootOp::downgradeToVersion@<X0>(ZinIrHalH13g *result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = *result;
  v7 = *(a3 + 8);
  if (!v7 || v7 == 1 && *(a3 + 12) <= 1u)
  {
    v8 = *(v6 + 3);
    Context = mlir::Attribute::getContext((v6 + 24));
    v25 = 261;
    v24[0] = "mps.reverse_square_root";
    v24[1] = 23;
    v10 = mlir::StringAttr::get(Context, v24);
    if ((*(v6 + 46) & 0x80) != 0)
    {
      v11 = *(v6 + 9);
      v12 = *(v6 + 17);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    mlir::ValueRange::ValueRange(v30, v11, v12);
    v13 = *(v6 + 9);
    v14 = v6 - 16;
    if (!v13)
    {
      v14 = 0;
    }

    v31 = v14;
    v32 = v13;
    mlir::OperandRange::getTypes(&AttrDictionary, &v31);
    NextResultAtOffset = AttrDictionary;
    v16 = v27;
    v17 = v28;
    if (v27)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v27);
    }

    mlir::ValueRange::ValueRange(&v31, NextResultAtOffset, v17 - v16);
    mlir::TypeRange::TypeRange(v29, v31, v32);
    AttrDictionary = mlir::Operation::getAttrDictionary(v6);
    Value = mlir::ArrayAttr::getValue(&AttrDictionary);
    v20 = v19;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, v6);
    mlir::BlockRange::BlockRange(&AttrDictionary, AttrDictionary, v27);
    result = mlir::OpBuilder::create(a2, v8, v10, v30[0], v30[1], v29[0], v29[1], v21, Value, v20, AttrDictionary, v27, 0, 0);
    v6 = result;
  }

  v22 = *(v6 + 9);
  v23 = v6 - 16;
  if (!v22)
  {
    v23 = 0;
  }

  *a4 = v23;
  *(a4 + 8) = v22;
  *(a4 + 16) = 1;
  return result;
}

BOOL mlir::mps::anonymous namespace::inferElementWiseTernaryMathOpReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v18[0] = a3;
  v18[1] = a4;
  if (a4 == 3)
  {
    v7 = a2;
    v17 = (*(mlir::ValueRange::dereference_iterator(v18, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v16 = (*(mlir::ValueRange::dereference_iterator(v18, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
    v8 = (*(mlir::ValueRange::dereference_iterator(v18, 2) + 8) & 0xFFFFFFFFFFFFFFF8);
    v15 = v8;
    BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v17, v16, 0);
    if (BroadcastedType)
    {
      v10 = mlir::OpTrait::util::getBroadcastedType(BroadcastedType, v8, 0);
      if (v10)
      {
        v11 = a5;
        v12 = a5[2];
        if (v12 >= a5[3])
        {
          v14 = v10;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 4, v12 + 1, 8);
          v10 = v14;
          v11 = a5;
          LODWORD(v12) = a5[2];
        }

        *(*v11 + 8 * v12) = v10;
        ++v11[2];
        return 1;
      }

      else
      {
        return mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[3],mlir::Type &,char const(&)[7],mlir::Type &,char const(&)[30]>(a1, v7, "input types ", &v17, " , ", &v16, " and ", &v15, " are not broadcast compatible");
      }
    }

    else
    {
      return mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[6],mlir::Type &,char const(&)[30]>(a1, v7, "input types ", &v17, " and ", &v16, " are not broadcast compatible");
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[41]>(a1, a2, "invalid number of operands");
  }
}

BOOL mlir::mps::SelectOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23[2] = *MEMORY[0x1E69E9840];
  v23[0] = a4;
  v23[1] = a5;
  if (a5 == 3)
  {
    v13 = (*(mlir::ValueRange::dereference_iterator(v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v22 = v13;
    v21 = (*(mlir::ValueRange::dereference_iterator(v23, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
    v20 = (*(mlir::ValueRange::dereference_iterator(v23, 2) + 8) & 0xFFFFFFFFFFFFFFF8);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v21);
    BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v21, v20, ElementTypeOrSelf);
    if (BroadcastedType && (v16 = mlir::OpTrait::util::getBroadcastedType(BroadcastedType, v13, ElementTypeOrSelf)) != 0)
    {
      v17 = *(a11 + 8);
      if (v17 >= *(a11 + 12))
      {
        v19 = v16;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v17 + 1, 8);
        v16 = v19;
        LODWORD(v17) = *(a11 + 8);
      }

      *(*a11 + 8 * v17) = v16;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
      return mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[3],mlir::Type &,char const(&)[7],mlir::Type &,char const(&)[30]>(a2, v11, "input types ", &v22, ", ", &v21, ", and ", &v20, " are not broadcast compatible");
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[3],mlir::Type &,char const(&)[7],mlir::Type &,char const(&)[30]>(uint64_t a1, char a2, char *a3, uint64_t *a4, char *a5, uint64_t *a6, char *a7, uint64_t *a8, const char *a9)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v25);
  if (v25)
  {
    mlir::Diagnostic::append<char const(&)[13],mlir::Type &,char const(&)[4],mlir::Type &,char const(&)[6],mlir::Type &,char const(&)[30]>(&v26, a3, a4, a5, a6, a7, a8, a9);
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v25);
  if (v25)
  {
    mlir::InFlightDiagnostic::report(&v25);
  }

  if (v34 == 1)
  {
    if (v33 != &v34)
    {
      free(v33);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v32;
      v18 = __p;
      if (v32 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v32 = v16;
      operator delete(v18);
    }

    v19 = v29;
    if (v29)
    {
      v20 = v30;
      v21 = v29;
      if (v30 != v29)
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
        v21 = v29;
      }

      v30 = v19;
      operator delete(v21);
    }

    if (v27 != &v28)
    {
      free(v27);
    }
  }

  return v15;
}

uint64_t mlir::mps::SelectOp::verify(uint64_t **this)
{
  v78 = *MEMORY[0x1E69E9840];
  v2 = (*this)[9];
  v3 = *(v2[3] + 8);
  v4 = *(v2[7] + 8);
  v5 = *(v2[11] + 8);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((v4 & 0xFFFFFFFFFFFFFFF8));
  v63 = mlir::getElementTypeOrSelf((v3 & 0xFFFFFFFFFFFFFFF8));
  if (v63 == ElementTypeOrSelf || mlir::Type::isInteger(&v63, 1))
  {
    if (mlir::OpTrait::util::getBroadcastedType((v3 & 0xFFFFFFFFFFFFFFF8), (v4 & 0xFFFFFFFFFFFFFFF8), ElementTypeOrSelf) && mlir::OpTrait::util::getBroadcastedType((v3 & 0xFFFFFFFFFFFFFFF8), (v5 & 0xFFFFFFFFFFFFFFF8), ElementTypeOrSelf) && mlir::OpTrait::util::getBroadcastedType((v4 & 0xFFFFFFFFFFFFFFF8), (v5 & 0xFFFFFFFFFFFFFFF8), ElementTypeOrSelf))
    {
      return 1;
    }

    v61[0] = "input types ";
    v62 = 259;
    mlir::OpState::emitOpError(this, v61, v67);
    if (v67[0])
    {
      v8 = &v64;
      mlir::DiagnosticArgument::DiagnosticArgument(&v64, v3 & 0xFFFFFFFFFFFFFFF8);
      v9 = v68;
      if (v69 >= v70)
      {
        if (v68 <= &v64 && v68 + 24 * v69 > &v64)
        {
          v54 = &v64 - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v9 = v68;
          v8 = (v68 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v8 = &v64;
          v9 = v68;
        }
      }

      v10 = &v9[24 * v69];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      v12 = ++v69;
      if (v67[0])
      {
        v64 = 3;
        v65 = ", ";
        v66 = 2;
        v13 = &v64;
        v14 = v68;
        if (v12 >= v70)
        {
          if (v68 <= &v64 && v68 + 24 * v12 > &v64)
          {
            v55 = &v64 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v12 + 1, 24);
            v14 = v68;
            v13 = (v68 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v12 + 1, 24);
            v13 = &v64;
            v14 = v68;
          }
        }

        v15 = &v14[24 * v69];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        ++v69;
        if (v67[0])
        {
          v17 = &v64;
          mlir::DiagnosticArgument::DiagnosticArgument(&v64, v4 & 0xFFFFFFFFFFFFFFF8);
          v18 = v68;
          if (v69 >= v70)
          {
            if (v68 <= &v64 && v68 + 24 * v69 > &v64)
            {
              v57 = &v64 - v68;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v18 = v68;
              v17 = (v68 + v57);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v17 = &v64;
              v18 = v68;
            }
          }

          v19 = &v18[24 * v69];
          v20 = *v17;
          *(v19 + 2) = *(v17 + 2);
          *v19 = v20;
          v21 = ++v69;
          if (v67[0])
          {
            v64 = 3;
            v65 = ", and ";
            v66 = 6;
            v22 = &v64;
            v23 = v68;
            if (v21 >= v70)
            {
              if (v68 <= &v64 && v68 + 24 * v21 > &v64)
              {
                v58 = &v64 - v68;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v21 + 1, 24);
                v23 = v68;
                v22 = (v68 + v58);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v21 + 1, 24);
                v22 = &v64;
                v23 = v68;
              }
            }

            v24 = &v23[24 * v69];
            v25 = *v22;
            *(v24 + 2) = *(v22 + 2);
            *v24 = v25;
            ++v69;
            if (v67[0])
            {
              v26 = &v64;
              mlir::DiagnosticArgument::DiagnosticArgument(&v64, v5 & 0xFFFFFFFFFFFFFFF8);
              v27 = v68;
              if (v69 >= v70)
              {
                if (v68 <= &v64 && v68 + 24 * v69 > &v64)
                {
                  v59 = &v64 - v68;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
                  v27 = v68;
                  v26 = (v68 + v59);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
                  v26 = &v64;
                  v27 = v68;
                }
              }

              v28 = &v27[24 * v69];
              v29 = *v26;
              *(v28 + 2) = *(v26 + 2);
              *v28 = v29;
              v30 = ++v69;
              if (v67[0])
              {
                v64 = 3;
                v65 = " are not broadcast compatible";
                v66 = 29;
                v31 = &v64;
                v32 = v68;
                if (v30 >= v70)
                {
                  if (v68 <= &v64 && v68 + 24 * v30 > &v64)
                  {
                    v60 = &v64 - v68;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v30 + 1, 24);
                    v32 = v68;
                    v31 = (v68 + v60);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v30 + 1, 24);
                    v31 = &v64;
                    v32 = v68;
                  }
                }

                v33 = &v32[24 * v69];
                v34 = *v31;
                *(v33 + 2) = *(v31 + 2);
                *v33 = v34;
                ++v69;
              }
            }
          }
        }
      }
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v67);
    if (v67[0])
    {
      mlir::InFlightDiagnostic::report(v67);
    }

    if (v77 == 1)
    {
      if (v76 != &v77)
      {
        free(v76);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v75;
        v37 = __p;
        if (v75 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v75 = v35;
        operator delete(v37);
      }

      v38 = v72;
      if (!v72)
      {
        goto LABEL_57;
      }

      v39 = v73;
      v40 = v72;
      if (v73 == v72)
      {
LABEL_56:
        v73 = v38;
        operator delete(v40);
LABEL_57:
        if (v68 != v71)
        {
          free(v68);
        }

        return v7;
      }

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
LABEL_55:
      v40 = v72;
      goto LABEL_56;
    }
  }

  else
  {
    v61[0] = "condition operand must be a 1-bit integer tensor or match the value element type, but got ";
    v62 = 259;
    mlir::OpState::emitOpError(this, v61, v67);
    if (v67[0])
    {
      v43 = &v64;
      mlir::DiagnosticArgument::DiagnosticArgument(&v64, v3 & 0xFFFFFFFFFFFFFFF8);
      v44 = v68;
      if (v69 >= v70)
      {
        if (v68 <= &v64 && v68 + 24 * v69 > &v64)
        {
          v56 = &v64 - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v44 = v68;
          v43 = (v68 + v56);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v43 = &v64;
          v44 = v68;
        }
      }

      v45 = &v44[24 * v69];
      v46 = *v43;
      *(v45 + 2) = *(v43 + 2);
      *v45 = v46;
      ++v69;
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v67);
    if (v67[0])
    {
      mlir::InFlightDiagnostic::report(v67);
    }

    if (v77 == 1)
    {
      if (v76 != &v77)
      {
        free(v76);
      }

      v47 = __p;
      if (__p)
      {
        v48 = v75;
        v49 = __p;
        if (v75 != __p)
        {
          do
          {
            v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
          }

          while (v48 != v47);
          v49 = __p;
        }

        v75 = v47;
        operator delete(v49);
      }

      v38 = v72;
      if (!v72)
      {
        goto LABEL_57;
      }

      v50 = v73;
      v40 = v72;
      if (v73 == v72)
      {
        goto LABEL_56;
      }

      do
      {
        v52 = *--v50;
        v51 = v52;
        *v50 = 0;
        if (v52)
        {
          MEMORY[0x1AC55A040](v51, 0x1000C8077774924);
        }
      }

      while (v50 != v38);
      goto LABEL_55;
    }
  }

  return v7;
}

BOOL mlir::mps::anonymous namespace::verifyTensorBufferAttr(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v117 = *MEMORY[0x1E69E9840];
  v102 = a3;
  if ((*(a4 + 96) & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      a1(v106, a2);
      if (v106[0])
      {
        v103 = 3;
        v104 = "MPSBufferTensor blob entry is undefined";
        v105 = 39;
        v61 = &v103;
        v62 = v107;
        if (v108 >= v109)
        {
          if (v107 <= &v103 && v107 + 24 * v108 > &v103)
          {
            v93 = &v103 - v107;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
            v62 = v107;
            v61 = (v107 + v93);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
            v61 = &v103;
            v62 = v107;
          }
        }

        v63 = &v62[24 * v108];
        v64 = *v61;
        *(v63 + 2) = *(v61 + 2);
        *v63 = v64;
        ++v108;
      }

      v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v106);
      if (v106[0])
      {
        mlir::InFlightDiagnostic::report(v106);
      }

      if (v116 == 1)
      {
        if (v115 != &v116)
        {
          free(v115);
        }

        v65 = __p;
        if (__p)
        {
          v66 = v114;
          v67 = __p;
          if (v114 != __p)
          {
            do
            {
              v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
            }

            while (v66 != v65);
            v67 = __p;
          }

          v114 = v65;
          operator delete(v67);
        }

        v46 = v111;
        if (!v111)
        {
          goto LABEL_97;
        }

        v68 = v112;
        v48 = v111;
        if (v112 == v111)
        {
          goto LABEL_96;
        }

        do
        {
          v70 = *--v68;
          v69 = v70;
          *v68 = 0;
          if (v70)
          {
            MEMORY[0x1AC55A040](v69, 0x1000C8077774924);
          }
        }

        while (v68 != v46);
        goto LABEL_95;
      }

      return v42;
    }

    return 1;
  }

  if ((*(a4 + 80) & 1) == 0)
  {
    a1(v106, a2);
    if (v106[0])
    {
      v103 = 3;
      v104 = "MPSBufferTensor blob entry memory was released while still in use";
      v105 = 65;
      v51 = &v103;
      v52 = v107;
      if (v108 >= v109)
      {
        if (v107 <= &v103 && v107 + 24 * v108 > &v103)
        {
          v92 = &v103 - v107;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
          v52 = v107;
          v51 = (v107 + v92);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
          v51 = &v103;
          v52 = v107;
        }
      }

      v53 = &v52[24 * v108];
      v54 = *v51;
      *(v53 + 2) = *(v51 + 2);
      *v53 = v54;
      ++v108;
    }

    v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v106);
    if (v106[0])
    {
      mlir::InFlightDiagnostic::report(v106);
    }

    if (v116 == 1)
    {
      if (v115 != &v116)
      {
        free(v115);
      }

      v55 = __p;
      if (__p)
      {
        v56 = v114;
        v57 = __p;
        if (v114 != __p)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = __p;
        }

        v114 = v55;
        operator delete(v57);
      }

      v46 = v111;
      if (!v111)
      {
        goto LABEL_97;
      }

      v58 = v112;
      v48 = v111;
      if (v112 == v111)
      {
        goto LABEL_96;
      }

      do
      {
        v60 = *--v58;
        v59 = v60;
        *v58 = 0;
        if (v60)
        {
          MEMORY[0x1AC55A040](v59, 0x1000C8077774924);
        }
      }

      while (v58 != v46);
      goto LABEL_95;
    }

    return v42;
  }

  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v102);
  TypeAlignmentSize = mlir::mps::getTypeAlignmentSize(RHS);
  v13 = mlir::TensorType::operator mlir::ShapedType(&v102);
  ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v13, v14);
  v16 = a5;
  v17 = (ElementsAttrStorageSize + a5);
  if (v17 > v8)
  {
    a1(v106, a2);
    if (v106[0])
    {
      v103 = 3;
      v104 = "MPSBufferTensor blob is of size ";
      v105 = 32;
      v18 = &v103;
      v19 = v107;
      if (v108 >= v109)
      {
        if (v107 <= &v103 && v107 + 24 * v108 > &v103)
        {
          v94 = &v103 - v107;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
          v19 = v107;
          v18 = (v107 + v94);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
          v18 = &v103;
          v19 = v107;
        }
      }

      v20 = &v19[24 * v108];
      v21 = *v18;
      *(v20 + 2) = *(v18 + 2);
      *v20 = v21;
      v22 = ++v108;
      if (v106[0])
      {
        v103 = 5;
        v104 = v8;
        v23 = &v103;
        v24 = v107;
        if (v22 >= v109)
        {
          if (v107 <= &v103 && v107 + 24 * v22 > &v103)
          {
            v95 = &v103 - v107;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v22 + 1, 24);
            v24 = v107;
            v23 = (v107 + v95);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v22 + 1, 24);
            v23 = &v103;
            v24 = v107;
          }
        }

        v25 = &v24[24 * v108];
        v26 = *v23;
        *(v25 + 2) = *(v23 + 2);
        *v25 = v26;
        v27 = ++v108;
        if (v106[0])
        {
          v103 = 3;
          v104 = " bytes, expected it to be at least ";
          v105 = 35;
          v28 = &v103;
          v29 = v107;
          if (v27 >= v109)
          {
            if (v107 <= &v103 && v107 + 24 * v27 > &v103)
            {
              v97 = &v103 - v107;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v27 + 1, 24);
              v29 = v107;
              v28 = (v107 + v97);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v27 + 1, 24);
              v28 = &v103;
              v29 = v107;
            }
          }

          v30 = &v29[24 * v108];
          v31 = *v28;
          *(v30 + 2) = *(v28 + 2);
          *v30 = v31;
          v32 = ++v108;
          if (v106[0])
          {
            v103 = 5;
            v104 = v17;
            v33 = &v103;
            v34 = v107;
            if (v32 >= v109)
            {
              if (v107 <= &v103 && v107 + 24 * v32 > &v103)
              {
                v99 = &v103 - v107;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v32 + 1, 24);
                v34 = v107;
                v33 = (v107 + v99);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v32 + 1, 24);
                v33 = &v103;
                v34 = v107;
              }
            }

            v35 = &v34[24 * v108];
            v36 = *v33;
            *(v35 + 2) = *(v33 + 2);
            *v35 = v36;
            v37 = ++v108;
            if (v106[0])
            {
              v103 = 3;
              v104 = " bytes";
              v105 = 6;
              v38 = &v103;
              v39 = v107;
              if (v37 >= v109)
              {
                if (v107 <= &v103 && v107 + 24 * v37 > &v103)
                {
                  v101 = &v103 - v107;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v37 + 1, 24);
                  v39 = v107;
                  v38 = (v107 + v101);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v37 + 1, 24);
                  v38 = &v103;
                  v39 = v107;
                }
              }

              v40 = &v39[24 * v108];
              v41 = *v38;
              *(v40 + 2) = *(v38 + 2);
              *v40 = v41;
              ++v108;
            }
          }
        }
      }
    }

    v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v106);
    if (v106[0])
    {
      mlir::InFlightDiagnostic::report(v106);
    }

    if (v116 == 1)
    {
      if (v115 != &v116)
      {
        free(v115);
      }

      v43 = __p;
      if (__p)
      {
        v44 = v114;
        v45 = __p;
        if (v114 != __p)
        {
          do
          {
            v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
          }

          while (v44 != v43);
          v45 = __p;
        }

        v114 = v43;
        operator delete(v45);
      }

      v46 = v111;
      if (!v111)
      {
        goto LABEL_97;
      }

      v47 = v112;
      v48 = v111;
      if (v112 == v111)
      {
LABEL_96:
        v112 = v46;
        operator delete(v48);
LABEL_97:
        if (v107 != v110)
        {
          free(v107);
        }

        return v42;
      }

      do
      {
        v50 = *--v47;
        v49 = v50;
        *v47 = 0;
        if (v50)
        {
          MEMORY[0x1AC55A040](v49, 0x1000C8077774924);
        }
      }

      while (v47 != v46);
LABEL_95:
      v48 = v111;
      goto LABEL_96;
    }

    return v42;
  }

  if (!((v9 + v16) % TypeAlignmentSize))
  {
    return 1;
  }

  a1(v106, a2);
  if (v106[0])
  {
    v103 = 3;
    v104 = "MPSBufferTensor blob is not aligned to ";
    v105 = 39;
    v71 = &v103;
    v72 = v107;
    if (v108 >= v109)
    {
      if (v107 <= &v103 && v107 + 24 * v108 > &v103)
      {
        v96 = &v103 - v107;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
        v72 = v107;
        v71 = (v107 + v96);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
        v71 = &v103;
        v72 = v107;
      }
    }

    v73 = &v72[24 * v108];
    v74 = *v71;
    *(v73 + 2) = *(v71 + 2);
    *v73 = v74;
    v75 = ++v108;
    if (v106[0])
    {
      v103 = 5;
      v104 = TypeAlignmentSize;
      v76 = &v103;
      v77 = v107;
      if (v75 >= v109)
      {
        if (v107 <= &v103 && v107 + 24 * v75 > &v103)
        {
          v98 = &v103 - v107;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v75 + 1, 24);
          v77 = v107;
          v76 = (v107 + v98);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v75 + 1, 24);
          v76 = &v103;
          v77 = v107;
        }
      }

      v78 = &v77[24 * v108];
      v79 = *v76;
      *(v78 + 2) = *(v76 + 2);
      *v78 = v79;
      v80 = ++v108;
      if (v106[0])
      {
        v103 = 3;
        v104 = " bytes";
        v105 = 6;
        v81 = &v103;
        v82 = v107;
        if (v80 >= v109)
        {
          if (v107 <= &v103 && v107 + 24 * v80 > &v103)
          {
            v100 = &v103 - v107;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v80 + 1, 24);
            v82 = v107;
            v81 = (v107 + v100);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v80 + 1, 24);
            v81 = &v103;
            v82 = v107;
          }
        }

        v83 = &v82[24 * v108];
        v84 = *v81;
        *(v83 + 2) = *(v81 + 2);
        *v83 = v84;
        ++v108;
      }
    }
  }

  v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v106);
  if (v106[0])
  {
    mlir::InFlightDiagnostic::report(v106);
  }

  if (v116 == 1)
  {
    if (v115 != &v116)
    {
      free(v115);
    }

    v85 = __p;
    if (__p)
    {
      v86 = v114;
      v87 = __p;
      if (v114 != __p)
      {
        do
        {
          v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
        }

        while (v86 != v85);
        v87 = __p;
      }

      v114 = v85;
      operator delete(v87);
    }

    v46 = v111;
    if (!v111)
    {
      goto LABEL_97;
    }

    v88 = v112;
    v48 = v111;
    if (v112 == v111)
    {
      goto LABEL_96;
    }

    do
    {
      v90 = *--v88;
      v89 = v90;
      *v88 = 0;
      if (v90)
      {
        MEMORY[0x1AC55A040](v89, 0x1000C8077774924);
      }
    }

    while (v88 != v46);
    goto LABEL_95;
  }

  return v42;
}

uint64_t mlir::mps::MPSBufferTensorAttr::getRawData(mlir::mps::MPSBufferTensorAttr *this)
{
  v1 = *(*(*this + 16) + 16);
  v2 = *(*this + 40);
  v6 = *(*this + 8);
  v3 = mlir::TensorType::operator mlir::ShapedType(&v6);
  mlir::mps::getElementsAttrStorageSize(v3, v4);
  return v2 + v1;
}

__n128 mlir::mps::MPSBufferTensorAttr::getHandle@<Q0>(__n128 *__return_ptr a1@<X8>, __n128 **this@<X0>)
{
  v2 = *this;
  result = (*this)[1];
  *a1 = result;
  a1[1].n128_u64[0] = *(v2 + 32);
  return result;
}

void *mlir::mps::ConstantOp::getAsAttribute(mlir::mps::ConstantOp *this)
{
  Context = mlir::Attribute::getContext((*this + 24));
  result = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (result || (result = mlir::UnitAttr::get(Context, Context)) != 0)
  {
    v4 = *result;
    {
      v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        return result;
      }
    }

    else
    {
      v14 = result;
      mlir::mps::ConstantOp::getAsAttribute();
      result = v14;
      v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        return result;
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
  }

  return result;
}

uint64_t mlir::mps::ConstantOp::verify(uint64_t **this)
{
  v133 = *MEMORY[0x1E69E9840];
  Context = mlir::Attribute::getContext((*this + 3));
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (!v3)
  {
    v3 = mlir::UnitAttr::get(Context, Context);
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  v4 = *v3;
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = v3;
    mlir::mps::ConstantOp::getAsAttribute();
    v3 = v14;
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_15;
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
  if (v8 == &v6[2 * v7] || *v8 != v5 || !v8[1])
  {
LABEL_15:
    v113[0] = "failed: property must contain a valid ElementsAttr";
    v114 = 259;
    mlir::OpState::emitOpError(this, v113, &v121);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v121);
    if (v121)
    {
      mlir::InFlightDiagnostic::report(&v121);
    }

    if (v132 == 1)
    {
      if (v131 != &v132)
      {
        free(v131);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v130;
        v18 = __p;
        if (v130 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v130 = v16;
        operator delete(v18);
      }

      v19 = v127;
      if (!v127)
      {
        goto LABEL_138;
      }

      v20 = v128;
      v21 = v127;
      if (v128 == v127)
      {
        goto LABEL_137;
      }

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
      goto LABEL_136;
    }

    return v15;
  }

  v24 = *v3;
  {
    v34 = v3;
    mlir::mps::ConstantOp::getAsAttribute();
    v3 = v34;
    v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    if (v27)
    {
      goto LABEL_34;
    }

LABEL_44:
    v35 = 0;
    goto LABEL_46;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  if (!v27)
  {
    goto LABEL_44;
  }

LABEL_34:
  v28 = v26;
  v29 = v27;
  do
  {
    v30 = v29 >> 1;
    v31 = &v28[2 * (v29 >> 1)];
    v33 = *v31;
    v32 = v31 + 2;
    v29 += ~(v29 >> 1);
    if (v33 < v25)
    {
      v28 = v32;
    }

    else
    {
      v29 = v30;
    }
  }

  while (v29);
  if (v28 == &v26[2 * v27] || *v28 != v25)
  {
    goto LABEL_44;
  }

  v35 = v28[1];
LABEL_46:
  v36 = v3;
  v121 = v3;
  v122 = v35;
  Type = mlir::ElementsAttr::getType(&v121);
  v38 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(Type);
  v112[0] = v38;
  v112[1] = v39;
  if (v38)
  {
    if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v121 = this;
      v15 = 0;
      if (!v40)
      {
        return v15;
      }
    }

    if (*(*this + 9))
    {
      v41 = *this - 2;
    }

    else
    {
      v41 = 0;
    }

    v42 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v42)
    {
      goto LABEL_81;
    }

    v43 = *v42;
    {
      v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v45 = *(v43 + 8);
      v46 = *(v43 + 16);
      if (v46)
      {
        goto LABEL_55;
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v45 = *(v43 + 8);
      v46 = *(v43 + 16);
      if (v46)
      {
LABEL_55:
        v47 = v45;
        v48 = v46;
        do
        {
          v49 = v48 >> 1;
          v50 = &v47[2 * (v48 >> 1)];
          v52 = *v50;
          v51 = v50 + 2;
          v48 += ~(v48 >> 1);
          if (v52 < v44)
          {
            v47 = v51;
          }

          else
          {
            v48 = v49;
          }
        }

        while (v48);
LABEL_79:
        if (v47 != &v45[2 * v46] && *v47 == v44)
        {
          v80 = v47[1];
          v110 = v42;
          v111 = v80;
          if (!mlir::ElementsAttr::getShapedType(&v110))
          {
            goto LABEL_104;
          }

          goto LABEL_82;
        }

LABEL_81:
        v110 = v42;
        v111 = 0;
        if (!mlir::ElementsAttr::getShapedType(&v110))
        {
          goto LABEL_104;
        }

LABEL_82:
        Shape = mlir::ShapedType::getShape(v112);
        v61 = v60;
        v62 = mlir::ShapedType::getShape(&v110);
        if (v61 != v63)
        {
LABEL_92:
          v113[0] = "invalid shape: constant value ";
          v114 = 259;
          mlir::OpState::emitOpError(this, v113, &v121);
          if (v121)
          {
            v67 = &Value;
            mlir::DiagnosticArgument::DiagnosticArgument(&Value, v112[0]);
            v68 = v123;
            if (v124 >= v125)
            {
              if (v123 <= &Value && v123 + 24 * v124 > &Value)
              {
                v104 = &Value - v123;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v126, v124 + 1, 24);
                v68 = v123;
                v67 = (v123 + v104);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v126, v124 + 1, 24);
                v67 = &Value;
                v68 = v123;
              }
            }

            v69 = &v68[24 * v124];
            v70 = *v67;
            *(v69 + 2) = v67[2];
            *v69 = v70;
            v71 = ++v124;
            if (v121)
            {
              LODWORD(Value) = 3;
              v119 = " is not compatible with op result ";
              v120 = 34;
              v72 = &Value;
              v73 = v123;
              if (v71 >= v125)
              {
                if (v123 <= &Value && v123 + 24 * v71 > &Value)
                {
                  v106 = &Value - v123;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v126, v71 + 1, 24);
                  v73 = v123;
                  v72 = (v123 + v106);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v126, v71 + 1, 24);
                  v72 = &Value;
                  v73 = v123;
                }
              }

              v74 = &v73[24 * v124];
              v75 = *v72;
              *(v74 + 2) = v72[2];
              *v74 = v75;
              ++v124;
              if (v121)
              {
                v76 = &Value;
                mlir::DiagnosticArgument::DiagnosticArgument(&Value, v110);
                v77 = v123;
                if (v124 >= v125)
                {
                  if (v123 <= &Value && v123 + 24 * v124 > &Value)
                  {
                    v108 = &Value - v123;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v126, v124 + 1, 24);
                    v77 = v123;
                    v76 = (v123 + v108);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v126, v124 + 1, 24);
                    v76 = &Value;
                    v77 = v123;
                  }
                }

                v78 = &v77[24 * v124];
                v79 = *v76;
                *(v78 + 2) = v76[2];
                *v78 = v79;
                ++v124;
              }
            }
          }

          v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v121);
          if (v121)
          {
            mlir::InFlightDiagnostic::report(&v121);
          }

          if (v132 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v122);
          }

          return v15;
        }

        if (v61)
        {
          v64 = 8 * v61 - 8;
          do
          {
            v65 = v64;
            if (*Shape != *v62 && *v62 != 0x8000000000000000)
            {
              goto LABEL_92;
            }

            ++Shape;
            ++v62;
            v64 -= 8;
          }

          while (v65);
        }

LABEL_104:
        isSplat = mlir::ElementsAttr::isSplat(&v110);
        v82 = mlir::ElementsAttr::isSplat(v112);
        v121 = isSplat;
        v113[0] = v82;
        if (isSplat == v82)
        {
          return 1;
        }

        v83 = v82;
        if (mlir::Type::isF16(&v121) || mlir::Type::isBF16(&v121))
        {
          if (mlir::Type::isF32(v113))
          {
            return 1;
          }
        }

        else if ((*v121)[17] == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && *(*v83 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v117 = v121;
          Value = mlir::AffineMapAttr::getValue(&v117);
          if (mlir::Type::isF16(&Value))
          {
            v115 = v83;
            v116 = mlir::AffineMapAttr::getValue(&v115);
            if (mlir::Type::isF32(&v116))
            {
              return 1;
            }
          }
        }

        v113[0] = "invalid element type: constant value ";
        v114 = 259;
        mlir::OpState::emitOpError(this, v113, &v121);
        if (v121)
        {
          p_Value = &Value;
          mlir::DiagnosticArgument::DiagnosticArgument(&Value, v112[0]);
          v85 = v123;
          if (v124 >= v125)
          {
            if (v123 <= &Value && v123 + 24 * v124 > &Value)
            {
              v105 = &Value - v123;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v126, v124 + 1, 24);
              v85 = v123;
              p_Value = (v123 + v105);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v126, v124 + 1, 24);
              p_Value = &Value;
              v85 = v123;
            }
          }

          v86 = &v85[24 * v124];
          v87 = *p_Value;
          *(v86 + 2) = p_Value[2];
          *v86 = v87;
          v88 = ++v124;
          if (v121)
          {
            LODWORD(Value) = 3;
            v119 = " doesn't match op result ";
            v120 = 25;
            v89 = &Value;
            v90 = v123;
            if (v88 >= v125)
            {
              if (v123 <= &Value && v123 + 24 * v88 > &Value)
              {
                v107 = &Value - v123;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v126, v88 + 1, 24);
                v90 = v123;
                v89 = (v123 + v107);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v126, v88 + 1, 24);
                v89 = &Value;
                v90 = v123;
              }
            }

            v91 = &v90[24 * v124];
            v92 = *v89;
            *(v91 + 2) = v89[2];
            *v91 = v92;
            ++v124;
            if (v121)
            {
              v93 = &Value;
              mlir::DiagnosticArgument::DiagnosticArgument(&Value, v110);
              v94 = v123;
              if (v124 >= v125)
              {
                if (v123 <= &Value && v123 + 24 * v124 > &Value)
                {
                  v109 = &Value - v123;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v126, v124 + 1, 24);
                  v94 = v123;
                  v93 = (v123 + v109);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v126, v124 + 1, 24);
                  v93 = &Value;
                  v94 = v123;
                }
              }

              v95 = &v94[24 * v124];
              v96 = *v93;
              *(v95 + 2) = v93[2];
              *v95 = v96;
              ++v124;
            }
          }
        }

        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v121);
        if (v121)
        {
          mlir::InFlightDiagnostic::report(&v121);
        }

        if (v132 == 1)
        {
          if (v131 != &v132)
          {
            free(v131);
          }

          v97 = __p;
          if (__p)
          {
            v98 = v130;
            v99 = __p;
            if (v130 != __p)
            {
              do
              {
                v98 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v98 - 1);
              }

              while (v98 != v97);
              v99 = __p;
            }

            v130 = v97;
            operator delete(v99);
          }

          v19 = v127;
          if (!v127)
          {
            goto LABEL_138;
          }

          v100 = v128;
          v21 = v127;
          if (v128 == v127)
          {
LABEL_137:
            v128 = v19;
            operator delete(v21);
LABEL_138:
            if (v123 != v126)
            {
              free(v123);
            }

            return v15;
          }

          do
          {
            v102 = *--v100;
            v101 = v102;
            *v100 = 0;
            if (v102)
            {
              MEMORY[0x1AC55A040](v101, 0x1000C8077774924);
            }
          }

          while (v100 != v19);
LABEL_136:
          v21 = v127;
          goto LABEL_137;
        }

        return v15;
      }
    }

    v46 = 0;
    v47 = v45;
    goto LABEL_79;
  }

  v113[0] = "failed: property contained an non shaped-type attribute";
  v114 = 259;
  mlir::OpState::emitOpError(this, v113, &v121);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v121);
  if (v121)
  {
    mlir::InFlightDiagnostic::report(&v121);
  }

  if (v132 == 1)
  {
    if (v131 != &v132)
    {
      free(v131);
    }

    v53 = __p;
    if (__p)
    {
      v54 = v130;
      v55 = __p;
      if (v130 != __p)
      {
        do
        {
          v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
        }

        while (v54 != v53);
        v55 = __p;
      }

      v130 = v53;
      operator delete(v55);
    }

    v19 = v127;
    if (!v127)
    {
      goto LABEL_138;
    }

    v56 = v128;
    v21 = v127;
    if (v128 == v127)
    {
      goto LABEL_137;
    }

    do
    {
      v58 = *--v56;
      v57 = v58;
      *v56 = 0;
      if (v58)
      {
        MEMORY[0x1AC55A040](v57, 0x1000C8077774924);
      }
    }

    while (v56 != v19);
    goto LABEL_136;
  }

  return v15;
}

void mlir::mps::ConstantOp::downgradeToVersion(uint64_t **a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v47 = &unk_1F1A17630;
  v48 = 0x300000001;
  v49 = 1;
  if (*(v6 + 9))
  {
    v7 = (v6 - 2);
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v50[0] = mlir::getElementTypeOrSelf(NextResultAtOffset);
  if (mlir::Type::isUnsignedInteger(v50, 6) && ((v9 = a2[2], v9 < v48) || v9 == v48 && ((v18 = a2[3], v18 < HIDWORD(v48)) || v18 == HIDWORD(v48) && a2[4] < v49)))
  {
    v34 = "failed to downgrade: requested target version is {0}, but uint6 data is only supported from version {1}";
    v35 = 103;
    v36 = &v43;
    v37 = 2;
    v38 = 1;
    v39 = &unk_1F1A17760;
    v40 = a2;
    v41 = &unk_1F1A17790;
    v42 = &v47;
    v43 = &v39;
    v44 = &v41;
    v46 = 263;
    v45[0] = &v34;
    mlir::OpState::emitOpError(a1, v45, v50);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v50[0])
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v56;
        v12 = __p;
        if (v56 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v56 = v10;
        operator delete(v12);
      }

      v13 = v53;
      if (!v53)
      {
        goto LABEL_57;
      }

      v14 = v54;
      v15 = v53;
      if (v54 == v53)
      {
        goto LABEL_56;
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
      goto LABEL_55;
    }
  }

  else
  {
    v31 = &unk_1F1A17630;
    v32 = 0x300000001;
    v33 = 3;
    if (*(*a1 + 9))
    {
      v19 = *a1 - 2;
    }

    else
    {
      v19 = 0;
    }

    v20 = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
    v50[0] = mlir::getElementTypeOrSelf(v20);
    if (!mlir::Type::isUnsignedInteger(v50, 3) || (v21 = a2[2], v21 >= v32) && (v21 != v32 || (v28 = a2[3], v28 >= HIDWORD(v32)) && (v28 != HIDWORD(v32) || a2[4] >= v33)))
    {
      v29 = *(v6 + 9);
      if (v29)
      {
        v30 = v6 - 2;
      }

      else
      {
        v30 = 0;
      }

      *a3 = v30;
      *(a3 + 8) = v29;
      *(a3 + 16) = 1;
      return;
    }

    v34 = "failed to downgrade: requested target version is {0}, but uint3 data is only supported from version {1}";
    v35 = 103;
    v36 = &v43;
    v37 = 2;
    v38 = 1;
    v39 = &unk_1F1A17760;
    v40 = a2;
    v41 = &unk_1F1A17790;
    v42 = &v31;
    v43 = &v39;
    v44 = &v41;
    v46 = 263;
    v45[0] = &v34;
    mlir::OpState::emitOpError(a1, v45, v50);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v50[0])
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v56;
        v24 = __p;
        if (v56 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v56 = v22;
        operator delete(v24);
      }

      v13 = v53;
      if (!v53)
      {
        goto LABEL_57;
      }

      v25 = v54;
      v15 = v53;
      if (v54 == v53)
      {
LABEL_56:
        v54 = v13;
        operator delete(v15);
LABEL_57:
        if (v51 != &v52)
        {
          free(v51);
        }

        return;
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
LABEL_55:
      v15 = v53;
      goto LABEL_56;
    }
  }
}

void mlir::mps::ReadDataFromFileOp::downgradeToVersion(uint64_t **a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v57[0] = &unk_1F1A17630;
  v57[1] = 0x300000001;
  v58 = 0;
  v7 = a2[2];
  if (v7 && (v7 != 1 || a2[3] > 2u))
  {
    v41 = &unk_1F1A17630;
    v42 = 0x300000001;
    v43 = 1;
    if (*(v6 + 9))
    {
      v16 = (v6 - 2);
    }

    else
    {
      v16 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
    v59[0] = mlir::getElementTypeOrSelf(NextResultAtOffset);
    if (mlir::Type::isUnsignedInteger(v59, 6) && ((v18 = a2[2], v18 < v42) || v18 == v42 && ((v25 = a2[3], v25 < HIDWORD(v42)) || v25 == HIDWORD(v42) && a2[4] < v43)))
    {
      v44 = "failed to downgrade: requested target version is {0}, but uint6 data is only supported from version {1}";
      v45 = 103;
      v46 = &v53;
      v47 = 2;
      v48 = 1;
      v49 = &unk_1F1A17760;
      v50 = a2;
      v51 = &unk_1F1A17790;
      v52 = &v41;
      v53 = &v49;
      v54 = &v51;
      v56 = 263;
      v55[0] = &v44;
      mlir::OpState::emitOpError(a1, v55, v59);
      *a3 = 0;
      *(a3 + 16) = 0;
      if (v59[0])
      {
        mlir::InFlightDiagnostic::report(v59);
      }

      if (v67 == 1)
      {
        if (v66 != &v67)
        {
          free(v66);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v65;
          v21 = __p;
          if (v65 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v65 = v19;
          operator delete(v21);
        }

        v11 = v62;
        if (!v62)
        {
          goto LABEL_68;
        }

        v22 = v63;
        v13 = v62;
        if (v63 == v62)
        {
          goto LABEL_67;
        }

        do
        {
          v24 = *--v22;
          v23 = v24;
          *v22 = 0;
          if (v24)
          {
            MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
          }
        }

        while (v22 != v11);
        goto LABEL_66;
      }
    }

    else
    {
      v38 = &unk_1F1A17630;
      v39 = 0x300000001;
      v40 = 3;
      if (*(*a1 + 9))
      {
        v26 = *a1 - 2;
      }

      else
      {
        v26 = 0;
      }

      v27 = mlir::detail::OpResultImpl::getNextResultAtOffset(v26, 0);
      v59[0] = mlir::getElementTypeOrSelf(v27);
      if (mlir::Type::isUnsignedInteger(v59, 3) && ((v28 = a2[2], v28 < v39) || v28 == v39 && ((v35 = a2[3], v35 < HIDWORD(v39)) || v35 == HIDWORD(v39) && a2[4] < v40)))
      {
        v44 = "failed to downgrade: requested target version is {0}, but uint3 data is only supported from version {1}";
        v45 = 103;
        v46 = &v53;
        v47 = 2;
        v48 = 1;
        v49 = &unk_1F1A17760;
        v50 = a2;
        v51 = &unk_1F1A17790;
        v52 = &v38;
        v53 = &v49;
        v54 = &v51;
        v56 = 263;
        v55[0] = &v44;
        mlir::OpState::emitOpError(a1, v55, v59);
        *a3 = 0;
        *(a3 + 16) = 0;
        if (v59[0])
        {
          mlir::InFlightDiagnostic::report(v59);
        }

        if (v67 == 1)
        {
          if (v66 != &v67)
          {
            free(v66);
          }

          v29 = __p;
          if (__p)
          {
            v30 = v65;
            v31 = __p;
            if (v65 != __p)
            {
              do
              {
                v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
              }

              while (v30 != v29);
              v31 = __p;
            }

            v65 = v29;
            operator delete(v31);
          }

          v11 = v62;
          if (!v62)
          {
            goto LABEL_68;
          }

          v32 = v63;
          v13 = v62;
          if (v63 == v62)
          {
            goto LABEL_67;
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

          while (v32 != v11);
          goto LABEL_66;
        }
      }

      else
      {
        v36 = *(v6 + 9);
        if (v36)
        {
          v37 = v6 - 2;
        }

        else
        {
          v37 = 0;
        }

        *a3 = v37;
        *(a3 + 8) = v36;
        *(a3 + 16) = 1;
      }
    }
  }

  else
  {
    v44 = "failed to downgrade: requested target version is {0}, but the op was first defined in version {1}";
    v45 = 97;
    v46 = &v53;
    v47 = 2;
    v48 = 1;
    v49 = &unk_1F1A17760;
    v50 = a2;
    v51 = &unk_1F1A17790;
    v52 = v57;
    v53 = &v49;
    v54 = &v51;
    v56 = 263;
    v55[0] = &v44;
    mlir::OpState::emitOpError(a1, v55, v59);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v59[0])
    {
      mlir::InFlightDiagnostic::report(v59);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v65;
        v10 = __p;
        if (v65 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v65 = v8;
        operator delete(v10);
      }

      v11 = v62;
      if (!v62)
      {
        goto LABEL_68;
      }

      v12 = v63;
      v13 = v62;
      if (v63 == v62)
      {
LABEL_67:
        v63 = v11;
        operator delete(v13);
LABEL_68:
        if (v60 != &v61)
        {
          free(v60);
        }

        return;
      }

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
LABEL_66:
      v13 = v62;
      goto LABEL_67;
    }
  }
}

uint64_t mlir::mps::MatMulOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v117 = *MEMORY[0x1E69E9840];
  v103 = a4;
  v104 = a5;
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0uLL;
  }

  v95 = a6;
  LOBYTE(v96) = 0;
  v97 = 0;
  v98 = v15;
  v16 = a5;
  v99 = a9;
  v100 = a10;
  if (a6)
  {
    v17 = a1;
    Context = mlir::Attribute::getContext(&v95);
    if (v97 == 1)
    {
      v97 = 0;
    }

    mlir::OperationName::OperationName(&v96, "mps.matmul", 10, Context);
    v97 = 1;
    v16 = v104;
    a1 = v17;
  }

  v101 = a4;
  v102 = a5;
  if (v16 <= 1)
  {
    v19 = mlir::Float32Type::get(a1, a2);
LABEL_20:
    v28 = mlir::UnrankedTensorType::get(v19);
    goto LABEL_21;
  }

  mlir::UnknownLoc::get(a1, a2);
  v91 = *(&v98 + 1);
  v92 = v98;
  if (!v98)
  {
    Value = 0;
    if (*(&v98 + 1))
    {
      goto LABEL_12;
    }

LABEL_14:
    v21 = 0;
    goto LABEL_15;
  }

  Value = mlir::BoolAttr::getValue(&v92);
  if (!v91)
  {
    goto LABEL_14;
  }

LABEL_12:
  v21 = mlir::BoolAttr::getValue(&v91);
LABEL_15:
  v22 = (*(mlir::ValueRange::dereference_iterator(&v103, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = (*(mlir::ValueRange::dereference_iterator(&v103, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  v111 = v22;
  v112 = v23;
  mlir::ValueRange::ValueRange(&v114, &v111, 2uLL);
  if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_20;
  }

  v24 = v19;
  v94[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v22);
  v94[1] = v25;
  v26 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v23);
  v93[0] = v26;
  v93[1] = v27;
  if (!v94[0] && !v26)
  {
    v19 = v24;
    goto LABEL_20;
  }

  if (*(*v94[0] + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || *(*v26 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    if (!mlir::emitOptionalError<char const(&)[22],mlir::ShapedType &,char const(&)[3],mlir::ShapedType &>(a2, v13, "invalid input types: ", v94, ", ", v93))
    {
      return 0;
    }

    v28 = 0;
    goto LABEL_21;
  }

  v105 = v107;
  v106 = 0x400000000;
  Shape = mlir::ShapedType::getShape(v94);
  v33 = v32;
  v34 = mlir::ShapedType::getShape(v93);
  v114 = &v116;
  v115 = 0x400000000;
  v90 = v35;
  v111 = v113;
  v112 = 0x400000000;
  v89 = v33;
  if (v33 == 1)
  {
    v36 = *Shape;
    v116.i64[0] = 1;
    v116.i64[1] = v36;
    goto LABEL_32;
  }

  if (!v33)
  {
    v116 = vdupq_n_s64(1uLL);
LABEL_32:
    LODWORD(v115) = 2;
    goto LABEL_33;
  }

  __n = v33;
  v108 = v110;
  v109 = 0x400000000;
  v40 = (8 * v33) >> 3;
  __src = v34;
  if (v40 < 5)
  {
    v41 = 0;
    v42 = v110;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v110, v40, 8);
    v41 = v109;
    v42 = v108;
  }

  memcpy(&v42[8 * v41], Shape, __n * 8);
  v49 = v108;
  v50 = (v109 + v33);
  LODWORD(v109) = v109 + v33;
  if (v108 != v110)
  {
    if (v114 != &v116)
    {
      free(v114);
      v49 = v108;
      LODWORD(v50) = v109;
    }

    v114 = v49;
    v115 = __PAIR64__(HIDWORD(v109), v50);
    v108 = v110;
    HIDWORD(v109) = 0;
    goto LABEL_74;
  }

  v52 = v115;
  if (v115 >= v50)
  {
    if (v50)
    {
      memmove(v114, v108, 8 * v50);
    }

    goto LABEL_73;
  }

  if (HIDWORD(v115) >= v50)
  {
    if (v115)
    {
      memmove(v114, v108, 8 * v115);
      goto LABEL_71;
    }
  }

  else
  {
    LODWORD(v115) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, &v116, v50, 8);
  }

  v52 = 0;
LABEL_71:
  if (v109 != v52)
  {
    memcpy(v114 + 8 * v52, v108 + 8 * v52, 8 * (v109 - v52));
  }

LABEL_73:
  LODWORD(v115) = v50;
LABEL_74:
  LODWORD(v109) = 0;
  if (v108 != v110)
  {
    free(v108);
  }

  v34 = __src;
  v35 = v90;
  if (Value)
  {
    v55 = &v114->i8[8 * v115];
    *(v55 - 1) = Shape[__n - 2];
    *(v55 - 2) = Shape[__n - 1];
  }

LABEL_33:
  if (v35 == 1)
  {
    v38 = *v34;
    LODWORD(v112) = 0;
    if (HIDWORD(v112) > 1)
    {
      v39 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v113, 2uLL, 8);
      v39 = v112;
    }

    v47 = &v111[8 * v39];
    *v47 = v38;
    goto LABEL_47;
  }

  if (!v35)
  {
    LODWORD(v112) = 0;
    if (HIDWORD(v112) > 1)
    {
      v37 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v113, 2uLL, 8);
      v37 = v112;
    }

    v47 = &v111[8 * v37];
    *v47 = 1;
LABEL_47:
    *(v47 + 1) = 1;
    LODWORD(v48) = v112 + 2;
    LODWORD(v112) = v112 + 2;
    goto LABEL_88;
  }

  __srca = v34;
  v43 = 8 * v35;
  v108 = v110;
  v109 = 0x400000000;
  v44 = (8 * v35) >> 3;
  if (v44 < 5)
  {
    v45 = 0;
    v46 = v110;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v110, v44, 8);
    v45 = v109;
    v46 = v108;
  }

  memcpy(&v46[8 * v45], __srca, v43);
  v51 = v108;
  v48 = v109 + (v43 >> 3);
  LODWORD(v109) = v109 + (v43 >> 3);
  if (v108 != v110)
  {
    if (v111 != v113)
    {
      free(v111);
      v51 = v108;
      LODWORD(v48) = v109;
    }

    v111 = v51;
    v112 = __PAIR64__(HIDWORD(v109), v48);
    v108 = v110;
    HIDWORD(v109) = 0;
    goto LABEL_84;
  }

  v53 = v112;
  if (v112 >= v48)
  {
    if (v48)
    {
      memmove(v111, v108, 8 * v48);
    }

    goto LABEL_83;
  }

  if (HIDWORD(v112) >= v48)
  {
    if (v112)
    {
      memmove(v111, v108, 8 * v112);
      goto LABEL_81;
    }
  }

  else
  {
    LODWORD(v112) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v113, v48, 8);
  }

  v53 = 0;
LABEL_81:
  if (v109 != v53)
  {
    memcpy(&v111[8 * v53], v108 + 8 * v53, 8 * (v109 - v53));
  }

LABEL_83:
  LODWORD(v112) = v48;
LABEL_84:
  LODWORD(v109) = 0;
  if (v108 != v110)
  {
    free(v108);
    LODWORD(v48) = v112;
  }

  if (v21)
  {
    v56 = &v111[8 * v48];
    *(v56 - 1) = *&__srca[v43 - 16];
    *(v56 - 2) = *&__srca[v43 - 8];
  }

LABEL_88:
  LODWORD(v106) = 0;
  if (v115 <= v48)
  {
    v57 = 0;
    if (v48)
    {
      v61 = v111;
      v62 = 8 * v48;
      do
      {
        v63 = *v61;
        if (v57 >= HIDWORD(v106))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v107, v57 + 1, 8);
          v57 = v106;
        }

        *(v105 + v57) = v63;
        v57 = v106 + 1;
        LODWORD(v106) = v106 + 1;
        ++v61;
        v62 -= 8;
      }

      while (v62);
    }
  }

  else
  {
    v57 = 0;
    v58 = v114;
    v59 = 8 * v115;
    do
    {
      v60 = v58->i64[0];
      if (v57 >= HIDWORD(v106))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v107, v57 + 1, 8);
        v57 = v106;
      }

      *(v105 + v57) = v60;
      v57 = v106 + 1;
      LODWORD(v106) = v106 + 1;
      v58 = (v58 + 8);
      v59 -= 8;
    }

    while (v59);
  }

  v64 = v114;
  v65 = v115;
  v66 = &v114->i8[8 * v115];
  v67 = v111;
  v68 = v112;
  v69 = &v111[8 * v112];
  v70 = v105;
  v71 = v105 + 8 * v57;
  *(v71 - 1) = *(v69 - 1);
  v72 = v69 - 16;
  *(v71 - 2) = *(v66 - 2);
  v73 = v66 - 16 == v64 || v72 == v67;
  if (v73)
  {
LABEL_120:
    if (v89 <= 1)
    {
      v81 = *(v71 - 1);
      LODWORD(v106) = --v57;
      v70[v57 - 1] = v81;
    }

    if (v90 > 1)
    {
      v82 = 0;
      if (v67 == v113)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v82 = 0;
      LODWORD(v106) = v57 - 1;
      if (v67 == v113)
      {
        goto LABEL_125;
      }
    }

    goto LABEL_124;
  }

  v74 = 8 * v65 - 24;
  v75 = &v70[v57 - 3];
  v76 = 8 * v68 - 24;
  while (1)
  {
    v77 = *(v64->i64 + v74);
    v78 = *&v67[v76];
    if (v77 == 0x8000000000000000)
    {
      if (v78 <= 1)
      {
        v77 = 0x8000000000000000;
      }

      else
      {
        v77 = *&v67[v76];
      }

      goto LABEL_118;
    }

    if (v78 == 0x8000000000000000)
    {
      if (v77 <= 1)
      {
        v77 = 0x8000000000000000;
      }

      goto LABEL_118;
    }

    if (v77 != v78 && v78 != 1)
    {
      v73 = v77 == 1;
      v77 = *&v67[v76];
      if (!v73)
      {
        break;
      }
    }

LABEL_118:
    *v75-- = v77;
    if (v74)
    {
      v74 -= 8;
      v80 = v76;
      v76 -= 8;
      if (v80)
      {
        continue;
      }
    }

    goto LABEL_120;
  }

  LODWORD(v106) = 0;
  v85 = mlir::emitOptionalError<char const(&)[41]>(a2, v13, "incompatible dimensions");
  v67 = v111;
  v82 = !v85;
  if (v111 != v113)
  {
LABEL_124:
    free(v67);
  }

LABEL_125:
  if (v114 != &v116)
  {
    free(v114);
  }

  if (v82)
  {
    v83 = mlir::emitOptionalError<char const(&)[41]>(a2, v13, "invalid shape");
    v28 = 0;
  }

  else
  {
    v28 = mlir::RankedTensorType::get(v105, v106, v24, 0);
    v83 = 1;
  }

  if (v105 != v107)
  {
    v84 = v28;
    free(v105);
    v28 = v84;
  }

  if (!v83)
  {
    return 0;
  }

LABEL_21:
  v29 = *(a11 + 8);
  if (v29 >= *(a11 + 12))
  {
    v54 = v28;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v29 + 1, 8);
    v28 = v54;
    LODWORD(v29) = *(a11 + 8);
  }

  *(*a11 + 8 * v29) = v28;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::anonymous namespace::defaultInferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3)
{
  if (!a3)
  {
    v7 = mlir::Float32Type::get(a1, a2);
    v4 = mlir::UnrankedTensorType::get(v7);
    v5 = *(a2 + 2);
    if (v5 < *(a2 + 3))
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v5 + 1, 8);
    v4 = v8;
    v5 = *(a2 + 2);
    goto LABEL_3;
  }

  v4 = mlir::UnrankedTensorType::get(a3);
  v5 = *(a2 + 2);
  if (v5 >= *(a2 + 3))
  {
    goto LABEL_5;
  }

LABEL_3:
  *(*a2 + 8 * v5) = v4;
  ++*(a2 + 2);
  return 1;
}

BOOL mlir::mps::MatMulOp::verify(uint64_t **this)
{
  v90 = *MEMORY[0x1E69E9840];
  v2 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v71 = v3;
    mlir::Builder::getZeroAttr();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v71 + 8);
    v6 = *(v71 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
    goto LABEL_14;
  }

  v13 = v7[1];
LABEL_15:
  v75[0] = v2;
  v75[1] = v13;
  v14 = *(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v14)
  {
    v15 = *v14;
    {
      v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v25 = v14;
      mlir::Builder::getZeroAttr();
      v14 = v25;
      v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    v19 = v17;
    v20 = v18;
    do
    {
      v21 = v20 >> 1;
      v22 = &v19[2 * (v20 >> 1)];
      v24 = *v22;
      v23 = v22 + 2;
      v20 += ~(v20 >> 1);
      if (v24 < v16)
      {
        v19 = v23;
      }

      else
      {
        v20 = v21;
      }
    }

    while (v20);
    if (v19 != &v17[2 * v18] && *v19 == v16)
    {
      v26 = v19[1];
      goto LABEL_30;
    }
  }

LABEL_29:
  v26 = 0;
LABEL_30:
  v74[0] = v14;
  v74[1] = v26;
  if (*(*v75[0] + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  Shape = mlir::ShapedType::getShape(v75);
  v29 = v28;
  v30 = mlir::ShapedType::getShape(v74);
  if (!v29)
  {
    v39 = 1;
    if (v31)
    {
      goto LABEL_38;
    }

LABEL_48:
    v43 = 1;
    result = 1;
    if (v39 == 0x8000000000000000)
    {
      return result;
    }

    goto LABEL_49;
  }

  if (v29 != 1)
  {
    v32 = &Shape[v29];
    v79[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
    v33 = v30;
    v34 = v31;
    Value = mlir::BoolAttr::getValue(v79);
    v31 = v34;
    v36 = Value;
    v30 = v33;
    v37 = !v36;
    v38 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v37)
    {
      v38 = 0x1FFFFFFFFFFFFFFELL;
    }

    Shape = &v32[v38];
  }

  v39 = *Shape;
  if (!v31)
  {
    goto LABEL_48;
  }

LABEL_38:
  if (v31 != 1)
  {
    v40 = &v30[v31];
    v79[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
    v41 = mlir::BoolAttr::getValue(v79);
    v42 = 0x1FFFFFFFFFFFFFFELL;
    if (v41)
    {
      v42 = 0x1FFFFFFFFFFFFFFFLL;
    }

    v30 = &v40[v42];
  }

  v43 = *v30;
  result = 1;
  if (v39 != 0x8000000000000000)
  {
LABEL_49:
    if (v43 != 0x8000000000000000 && v39 != v43)
    {
      v72 = "contracting dimensions differ ";
      v73 = 259;
      mlir::OpState::emitOpError(this, &v72, v79);
      if (v79[0])
      {
        v76 = 2;
        v77 = v39;
        v45 = &v76;
        v46 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v76 && v80 + 24 * v81 > &v76)
          {
            v68 = &v76 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v46 = v80;
            v45 = (v80 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v45 = &v76;
            v46 = v80;
          }
        }

        v47 = &v46[24 * v81];
        v48 = *v45;
        *(v47 + 2) = *(v45 + 2);
        *v47 = v48;
        v49 = ++v81;
        if (v79[0])
        {
          v76 = 3;
          v77 = " & ";
          v78 = 3;
          v50 = &v76;
          v51 = v80;
          if (v49 >= v82)
          {
            if (v80 <= &v76 && v80 + 24 * v49 > &v76)
            {
              v69 = &v76 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v49 + 1, 24);
              v51 = v80;
              v50 = (v80 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v49 + 1, 24);
              v50 = &v76;
              v51 = v80;
            }
          }

          v52 = &v51[24 * v81];
          v53 = *v50;
          *(v52 + 2) = *(v50 + 2);
          *v52 = v53;
          v54 = ++v81;
          if (v79[0])
          {
            v76 = 2;
            v77 = v43;
            v55 = &v76;
            v56 = v80;
            if (v54 >= v82)
            {
              if (v80 <= &v76 && v80 + 24 * v54 > &v76)
              {
                v70 = &v76 - v80;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v54 + 1, 24);
                v56 = v80;
                v55 = (v80 + v70);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v54 + 1, 24);
                v55 = &v76;
                v56 = v80;
              }
            }

            v57 = &v56[24 * v81];
            v58 = *v55;
            *(v57 + 2) = *(v55 + 2);
            *v57 = v58;
            ++v81;
          }
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v79);
      v59 = result;
      if (v79[0])
      {
        mlir::InFlightDiagnostic::report(v79);
        result = v59;
      }

      if (v89 == 1)
      {
        if (v88 != &v89)
        {
          free(v88);
          result = v59;
        }

        v60 = __p;
        if (__p)
        {
          v61 = v87;
          v62 = __p;
          if (v87 != __p)
          {
            do
            {
              v61 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v61 - 1);
            }

            while (v61 != v60);
            v62 = __p;
          }

          v87 = v60;
          operator delete(v62);
          result = v59;
        }

        v63 = v84;
        if (v84)
        {
          v64 = v85;
          v65 = v84;
          if (v85 != v84)
          {
            do
            {
              v67 = *--v64;
              v66 = v67;
              *v64 = 0;
              if (v67)
              {
                MEMORY[0x1AC55A040](v66, 0x1000C8077774924);
              }
            }

            while (v64 != v63);
            v65 = v84;
          }

          v85 = v63;
          operator delete(v65);
          result = v59;
        }

        if (v80 != v83)
        {
          free(v80);
          return v59;
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::verifySparseTensorHelper(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void (*a7)(void *__return_ptr, uint64_t, void *), uint64_t a8)
{
  v116 = *MEMORY[0x1E69E9840];
  v105 = a6;
  v106 = a5;
  v13 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = *v13;
    {
      v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      if (!v17)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v77 = v14;
      v78 = v13;
      mlir::Builder::getZeroAttr();
      v13 = v78;
      v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v16 = *(v77 + 8);
      v17 = *(v77 + 16);
      if (!v17)
      {
        goto LABEL_14;
      }
    }

    v18 = v16;
    v19 = v17;
    do
    {
      v20 = v19 >> 1;
      v21 = &v18[2 * (v19 >> 1)];
      v23 = *v21;
      v22 = v21 + 2;
      v19 += ~(v19 >> 1);
      if (v23 < v15)
      {
        v18 = v22;
      }

      else
      {
        v19 = v20;
      }
    }

    while (v19);
    if (v18 != &v16[2 * v17] && *v18 == v15)
    {
      v43 = v18[1];
      v103 = v13;
      v104 = v43;
      if (!mlir::ElementsAttr::getShapedType(&v103))
      {
        return 1;
      }

      goto LABEL_15;
    }
  }

LABEL_14:
  v103 = v13;
  v104 = 0;
  if (!mlir::ElementsAttr::getShapedType(&v103))
  {
    return 1;
  }

LABEL_15:
  Shape = mlir::ShapedType::getShape(&v103);
  if (v25)
  {
    v26 = 8 * v25;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v26 -= 8;
      if (!v26)
      {
        goto LABEL_19;
      }
    }

    return 1;
  }

LABEL_19:
  v27 = *mlir::ShapedType::getShape(&v103) - 1;
  if (a4 == 2 && v106 != v27)
  {
    v87 = "failed: sparse tensor shape is {0}x{1} while index_tensor1 shape is {2}";
    v88 = 71;
    v89 = &v98;
    v90 = 3;
    v91 = 1;
    v92 = &unk_1F1A177C0;
    v93 = &v106;
    v94 = &unk_1F1A177C0;
    v95 = &v105;
    v96 = &unk_1F1A18360;
    v97 = &v103;
    v98 = &v92;
    v99 = &v94;
    v100 = &v96;
    v101[0] = &v87;
    v102 = 263;
    a7(v107, a8, v101);
    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v107);
    if (v107[0])
    {
      mlir::InFlightDiagnostic::report(v107);
    }

    if (v115 == 1)
    {
      if (v114 != &v115)
      {
        free(v114);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v113;
        v31 = __p;
        if (v113 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v113 = v29;
        operator delete(v31);
      }

      v32 = v110;
      if (!v110)
      {
        goto LABEL_69;
      }

      v33 = v111;
      v34 = v110;
      if (v111 == v110)
      {
LABEL_68:
        v111 = v32;
        operator delete(v34);
LABEL_69:
        if (v108 != &v109)
        {
          free(v108);
        }

        return v28;
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
LABEL_67:
      v34 = v110;
      goto LABEL_68;
    }

    return v28;
  }

  if (a4 != 1 || v105 == v27)
  {
    v44 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v44)
    {
      goto LABEL_74;
    }

    v45 = *v44;
    {
      v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v47 = *(v45 + 8);
      v48 = *(v45 + 16);
      if (!v48)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v79 = v45;
      mlir::Builder::getI32VectorAttr();
      v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v47 = *(v79 + 8);
      v48 = *(v79 + 16);
      if (!v48)
      {
        goto LABEL_74;
      }
    }

    v49 = v47;
    v50 = v48;
    do
    {
      v51 = v50 >> 1;
      v52 = &v49[2 * (v50 >> 1)];
      v54 = *v52;
      v53 = v52 + 2;
      v50 += ~(v50 >> 1);
      if (v54 < v46)
      {
        v49 = v53;
      }

      else
      {
        v50 = v51;
      }
    }

    while (v50);
    if (v49 != &v47[2 * v48] && *v49 == v46)
    {
      v66 = v49[1];
      v85 = v44;
      v86 = v66;
      v55 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v55)
      {
        goto LABEL_89;
      }

LABEL_75:
      v56 = *v55;
      {
        v57 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v58 = *(v56 + 8);
        v59 = *(v56 + 16);
        if (!v59)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v80 = v56;
        mlir::Builder::getI32VectorAttr();
        v57 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v58 = *(v80 + 8);
        v59 = *(v80 + 16);
        if (!v59)
        {
          goto LABEL_89;
        }
      }

      v60 = v58;
      v61 = v59;
      do
      {
        v62 = v61 >> 1;
        v63 = &v60[2 * (v61 >> 1)];
        v65 = *v63;
        v64 = v63 + 2;
        v61 += ~(v61 >> 1);
        if (v65 < v57)
        {
          v60 = v64;
        }

        else
        {
          v61 = v62;
        }
      }

      while (v61);
      if (v60 != &v58[2 * v59] && *v60 == v57)
      {
        v75 = v60[1];
        v83 = v55;
        v84 = v75;
        if (!mlir::ElementsAttr::getShapedType(&v85))
        {
          return 1;
        }

LABEL_90:
        v67 = mlir::ShapedType::getShape(&v85);
        if (v68)
        {
          v69 = 8 * v68;
          while (*v67 != 0x8000000000000000)
          {
            ++v67;
            v69 -= 8;
            if (!v69)
            {
              goto LABEL_94;
            }
          }
        }

        else
        {
LABEL_94:
          if (mlir::ElementsAttr::getShapedType(&v83))
          {
            v70 = mlir::ShapedType::getShape(&v83);
            if (v71)
            {
              v72 = 8 * v71;
              while (*v70 != 0x8000000000000000)
              {
                ++v70;
                v72 -= 8;
                if (!v72)
                {
                  goto LABEL_99;
                }
              }
            }

            else
            {
LABEL_99:
              v73 = *mlir::ShapedType::getShape(&v85);
              if (v73 != *mlir::ShapedType::getShape(&v83))
              {
                v74 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
                v81 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
                v82 = v74;
                llvm::formatv<mlir::Type,mlir::Type>(&v87, "failed: index_tensor0 and sparse_values shape mismatch, {0} and {1}", &v82, &v81);
                v102 = 263;
                v101[0] = &v87;
                a7(v107, a8, v101);
                v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v107);
                mlir::InFlightDiagnostic::~InFlightDiagnostic(v107);
                return v28;
              }
            }
          }
        }

        return 1;
      }

LABEL_89:
      v83 = v55;
      v84 = 0;
      if (!mlir::ElementsAttr::getShapedType(&v85))
      {
        return 1;
      }

      goto LABEL_90;
    }

LABEL_74:
    v85 = v44;
    v86 = 0;
    v55 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v55)
    {
      goto LABEL_89;
    }

    goto LABEL_75;
  }

  v87 = "failed: sparse tensor shape is {0}x{1} while index_tensor1 shape is {2}";
  v88 = 71;
  v89 = &v98;
  v90 = 3;
  v91 = 1;
  v92 = &unk_1F1A177C0;
  v93 = &v106;
  v94 = &unk_1F1A177C0;
  v95 = &v105;
  v96 = &unk_1F1A18360;
  v97 = &v103;
  v98 = &v92;
  v99 = &v94;
  v100 = &v96;
  v101[0] = &v87;
  v102 = 263;
  a7(v107, a8, v101);
  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v107);
  if (v107[0])
  {
    mlir::InFlightDiagnostic::report(v107);
  }

  if (v115 == 1)
  {
    if (v114 != &v115)
    {
      free(v114);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v113;
      v39 = __p;
      if (v113 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v113 = v37;
      operator delete(v39);
    }

    v32 = v110;
    if (!v110)
    {
      goto LABEL_69;
    }

    v40 = v111;
    v34 = v110;
    if (v111 == v110)
    {
      goto LABEL_68;
    }

    do
    {
      v42 = *--v40;
      v41 = v42;
      *v40 = 0;
      if (v42)
      {
        MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
      }
    }

    while (v40 != v32);
    goto LABEL_67;
  }

  return v28;
}

const char *llvm::formatv<mlir::Type,mlir::Type>@<X0>(const char **__return_ptr a1@<X8>, const char *__s@<X0>, const char **a3@<X1>, const char **a4@<X2>)
{
  v4 = __s;
  v6 = *a3;
  v7 = *a4;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a1 = v4;
  a1[1] = __s;
  a1[9] = (a1 + 5);
  a1[2] = (a1 + 9);
  a1[3] = 2;
  *(a1 + 32) = 1;
  a1[5] = &unk_1F1A183A8;
  a1[6] = v6;
  a1[7] = &unk_1F1A183A8;
  a1[8] = v7;
  a1[10] = (a1 + 7);
  return __s;
}

BOOL mlir::mps::MaterializeSparseTensorOp::verify(uint64_t **this)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(*this + 9))
  {
    v2 = *this - 2;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = *v3;
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    mlir::Builder::getZeroAttr();
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_17;
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
    v14 = v8[1];
    goto LABEL_18;
  }

LABEL_17:
  v14 = 0;
LABEL_18:
  v36[0] = v3;
  v36[1] = v14;
  Shape = mlir::ShapedType::getShape(v36);
  v16 = *Shape;
  v17 = Shape[1];
  v18 = *this;
  if ((*(*this + 46) & 0x80) != 0 && v18[17] - 1 <= 1)
  {
    v34 = "failure: expected at least two operands to represent COO, CSR or CSC sparse formats.";
    v35 = 259;
    mlir::OpState::emitOpError(this, &v34, v36);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v42;
        v22 = __p;
        if (v42 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v42 = v20;
        operator delete(v22);
      }

      v23 = v39;
      if (v39)
      {
        v24 = v40;
        v25 = v39;
        if (v40 != v39)
        {
          do
          {
            v27 = *--v24;
            v26 = v27;
            *v24 = 0;
            if (v27)
            {
              MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
            }
          }

          while (v24 != v23);
          v25 = v39;
        }

        v40 = v23;
        operator delete(v25);
      }

      if (v37 != &v38)
      {
        free(v37);
      }
    }
  }

  else
  {
    v28 = *(v18 + 9);
    v29 = v28[3];
    v30 = v28[7];
    v31 = v28[11];
    v32 = *(*(v18 + 10) + 8);
    v36[0] = this;
    return mlir::mps::verifySparseTensorHelper(v29, v30, v31, v32, v16, v17, llvm::function_ref<mlir::InFlightDiagnostic ()(llvm::Twine const&)>::callback_fn<mlir::mps::MaterializeSparseTensorOp::verify(void)::$_0>, v36);
  }

  return v19;
}

uint64_t mlir::mps::HammingDistanceOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v73[4] = *MEMORY[0x1E69E9840];
  v69 = a4;
  v70 = a5;
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v61 = a6;
  LOBYTE(v62) = 0;
  v63 = 0;
  v64 = v14;
  v65 = a9;
  v15 = a5;
  v66 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v61);
    if (v63 == 1)
    {
      v63 = 0;
    }

    mlir::OperationName::OperationName(&v62, "mps.hamming_distance", 20, Context);
    v63 = 1;
    v15 = v70;
  }

  v67 = a4;
  v68 = a5;
  if (v15 >= 2)
  {
    v17 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::HammingDistanceOpAdaptor::verify(&v61, v17))
    {
      v58 = v64;
      Value = mlir::IntegerType::get(this, 0x20u, 2u);
      if (v58)
      {
        Value = mlir::AffineMapAttr::getValue(&v58);
      }

      v19 = Value;
      v20 = (*(mlir::ValueRange::dereference_iterator(&v69, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      v21 = mlir::ValueRange::dereference_iterator(&v69, 1);
      if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || (v22 = (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8), *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id) || (v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v20), v60[0] = v23, v60[1] = v24, v25 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v22), v59[0] = v25, v59[1] = v26, !v23) || !v25)
      {
        v39 = mlir::UnrankedTensorType::get(v19);
LABEL_28:
        v40 = *(a11 + 8);
        if (v40 >= *(a11 + 12))
        {
          v57 = v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v40 + 1, 8);
          v39 = v57;
          LODWORD(v40) = *(a11 + 8);
        }

        *(*a11 + 8 * v40) = v39;
        goto LABEL_31;
      }

      v71 = v73;
      v72 = 0x400000000;
      Shape = mlir::ShapedType::getShape(v60);
      v29 = v28;
      v30 = mlir::ShapedType::getShape(v59);
      if (v29 <= v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = v29;
      }

      if (v29 < 2)
      {
        v33 = 1;
        if (v31 < 2)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v33 = *(Shape + 8 * v29 - 16);
        if (v31 < 2)
        {
LABEL_21:
          v34 = 1;
LABEL_34:
          v42 = v72;
          if (v32 != v72)
          {
            if (v32 >= v72)
            {
              if (v32 > HIDWORD(v72))
              {
                v43 = v30;
                v44 = v31;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v32, 8);
                v31 = v44;
                v30 = v43;
                v42 = v72;
              }

              if (v32 != v42)
              {
                v45 = v30;
                v46 = v31;
                bzero(v71 + 8 * v42, 8 * (v32 - v42));
                v31 = v46;
                v30 = v45;
              }
            }

            LODWORD(v72) = v32;
            LODWORD(v42) = v32;
          }

          v47 = v71;
          if (v32 >= 1)
          {
            v48 = v71 + 8 * v32;
            *(v48 - 1) = v34;
            if (v32 != 1)
            {
              *(v48 - 2) = v33;
              if (v32 >= 3)
              {
                v49 = v31 - 3;
                v50 = v32 - 2;
                v51 = (v48 - 24);
                v52 = v29 - 3;
                do
                {
                  if ((v52 & 0x8000000000000000) != 0)
                  {
                    if ((v49 & 0x8000000000000000) != 0)
                    {
                      v53 = 1;
                    }

                    else
                    {
                      v53 = *(v30 + 8 * v49);
                    }
                  }

                  else
                  {
                    v53 = *(Shape + 8 * v52);
                    if ((v49 & 0x8000000000000000) == 0)
                    {
                      if (v53 == 0x8000000000000000)
                      {
                        v54 = *(v30 + 8 * v49);
                      }

                      else
                      {
                        v54 = *(Shape + 8 * v52);
                      }

                      if (*(v30 + 8 * v49) == 1)
                      {
                        v54 = *(Shape + 8 * v52);
                      }

                      if (v53 == 1)
                      {
                        v53 = *(v30 + 8 * v49);
                      }

                      else
                      {
                        v53 = v54;
                      }
                    }
                  }

                  *v51-- = v53;
                  --v49;
                  --v50;
                  --v52;
                }

                while (v50 > 0);
              }
            }
          }

          v39 = mlir::RankedTensorType::get(v47, v42, v19, 0);
          if (v71 != v73)
          {
            v55 = v39;
            free(v71);
            v39 = v55;
          }

          goto LABEL_28;
        }
      }

      v34 = *(v30 + 8 * v31 - 16);
      goto LABEL_34;
    }
  }

  v35 = mlir::IntegerType::get(this, 0x20u, 2u);
  if (!v35)
  {
    v35 = mlir::Float32Type::get(this, v36);
  }

  v37 = mlir::UnrankedTensorType::get(v35);
  v38 = *(a11 + 8);
  if (v38 >= *(a11 + 12))
  {
    v56 = v37;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v38 + 1, 8);
    v37 = v56;
    v38 = *(a11 + 8);
  }

  *(*a11 + 8 * v38) = v37;
LABEL_31:
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::HammingDistanceOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    v14[0] = *(a1 + 24);
    mlir::AffineMapAttr::getValue(v14);
    return 1;
  }

  else
  {
    v12 = "'mps.hamming_distance' op requires attribute 'resultElementType'";
    v13 = 259;
    mlir::emitError(a2, &v12, v14);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
    if (v14[0])
    {
      mlir::InFlightDiagnostic::report(v14);
    }

    if (v22 == 1)
    {
      if (v21 != &v22)
      {
        free(v21);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v20;
        v5 = __p;
        if (v20 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v20 = v3;
        operator delete(v5);
      }

      v6 = v17;
      if (v17)
      {
        v7 = v18;
        v8 = v17;
        if (v18 != v17)
        {
          do
          {
            v10 = *--v7;
            v9 = v10;
            *v7 = 0;
            if (v10)
            {
              MEMORY[0x1AC55A040](v9, 0x1000C8077774924);
            }
          }

          while (v7 != v6);
          v8 = v17;
        }

        v18 = v6;
        operator delete(v8);
      }

      if (v15 != &v16)
      {
        free(v15);
      }
    }
  }

  return v2;
}

uint64_t mlir::mps::HammingDistanceOp::verify(uint64_t **this)
{
  v103 = *MEMORY[0x1E69E9840];
  v92[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  Value = mlir::AffineMapAttr::getValue(v92);
  isSignedInteger = mlir::Type::isSignedInteger(&Value);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&Value);
  if (!isSignedInteger && (IntOrFloatBitWidth == 16 || IntOrFloatBitWidth == 32))
  {
    v4 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v4)
    {
      v5 = *v4;
      {
        v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v7 = *(v5 + 8);
        v8 = *(v5 + 16);
        if (!v8)
        {
          goto LABEL_33;
        }
      }

      else
      {
        mlir::Builder::getI32VectorAttr();
        v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v7 = *(v5 + 8);
        v8 = *(v5 + 16);
        if (!v8)
        {
          goto LABEL_33;
        }
      }

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
      if (v9 != &v7[2 * v8] && *v9 == v6)
      {
        v24 = v9[1];
LABEL_34:
        v85[0] = v4;
        v85[1] = v24;
        v25 = *(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (!v25)
        {
          goto LABEL_48;
        }

        v26 = *v25;
        {
          v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v28 = *(v26 + 8);
          v29 = *(v26 + 16);
          if (!v29)
          {
            goto LABEL_48;
          }
        }

        else
        {
          mlir::Builder::getI32VectorAttr();
          v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v28 = *(v26 + 8);
          v29 = *(v26 + 16);
          if (!v29)
          {
            goto LABEL_48;
          }
        }

        v30 = v28;
        v31 = v29;
        do
        {
          v32 = v31 >> 1;
          v33 = &v30[2 * (v31 >> 1)];
          v35 = *v33;
          v34 = v33 + 2;
          v31 += ~(v31 >> 1);
          if (v35 < v27)
          {
            v30 = v34;
          }

          else
          {
            v31 = v32;
          }
        }

        while (v31);
        if (v30 != &v28[2 * v29] && *v30 == v27)
        {
          v46 = v30[1];
          v83 = v25;
          v84 = v46;
          v36 = v85[0];
          if (!v85[0])
          {
            return 1;
          }

          goto LABEL_49;
        }

LABEL_48:
        v83 = v25;
        v84 = 0;
        v36 = v85[0];
        if (!v85[0])
        {
          return 1;
        }

LABEL_49:
        v37 = *(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v25 == 0;
        if (v37 || *(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          return 1;
        }

        Shape = mlir::ShapedType::getShape(v85);
        v40 = v39;
        v41 = mlir::ShapedType::getShape(&v83);
        if (v40 <= v42)
        {
          v43 = v42;
        }

        else
        {
          v43 = v40;
        }

        if (v40)
        {
          v44 = *(Shape + 8 * v40 - 8);
          if (v42)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v44 = 1;
          if (v42)
          {
LABEL_59:
            v45 = *(v41 + 8 * v42 - 8);
            if (v45 == 0x8000000000000000)
            {
LABEL_68:
              if (v43 < 3)
              {
                return 1;
              }

              v50 = v43 - 2;
              v51 = v40 - 3;
              for (i = v42 - 3; ; --i)
              {
                if ((v51 & 0x8000000000000000) != 0)
                {
                  v53 = 1;
                  if ((i & 0x8000000000000000) == 0)
                  {
LABEL_74:
                    v54 = *(v41 + 8 * i);
                    if (v53 == 0x8000000000000000)
                    {
                      goto LABEL_71;
                    }

                    goto LABEL_78;
                  }
                }

                else
                {
                  v53 = *(Shape + 8 * v51);
                  if ((i & 0x8000000000000000) == 0)
                  {
                    goto LABEL_74;
                  }
                }

                v54 = 1;
                if (v53 == 0x8000000000000000)
                {
                  goto LABEL_71;
                }

LABEL_78:
                if (v54 != 1 && v54 != 0x8000000000000000 && v53 != 1 && v53 != v54)
                {
                  v86[0] = "Leading n-2 dimensions not broadcast compatible: ";
                  v87 = 259;
                  mlir::OpState::emitOpError(this, v86, v92);
                  if (v92[0])
                  {
                    v89 = 3;
                    v90 = "LHS = ";
                    v91 = 6;
                    v55 = &v89;
                    v56 = v93;
                    if (v94 >= v95)
                    {
                      if (v93 <= &v89 && v93 + 24 * v94 > &v89)
                      {
                        v79 = &v89 - v93;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
                        v56 = v93;
                        v55 = (v93 + v79);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
                        v55 = &v89;
                        v56 = v93;
                      }
                    }

                    v57 = &v56[24 * v94];
                    v58 = *v55;
                    *(v57 + 2) = *(v55 + 2);
                    *v57 = v58;
                    ++v94;
                    if (v92[0])
                    {
                      v59 = &v89;
                      mlir::DiagnosticArgument::DiagnosticArgument(&v89, v85[0]);
                      v60 = v93;
                      if (v94 >= v95)
                      {
                        if (v93 <= &v89 && v93 + 24 * v94 > &v89)
                        {
                          v80 = &v89 - v93;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
                          v60 = v93;
                          v59 = (v93 + v80);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
                          v59 = &v89;
                          v60 = v93;
                        }
                      }

                      v61 = &v60[24 * v94];
                      v62 = *v59;
                      *(v61 + 2) = *(v59 + 2);
                      *v61 = v62;
                      v63 = ++v94;
                      if (v92[0])
                      {
                        v89 = 3;
                        v90 = " RHS = ";
                        v91 = 7;
                        v64 = &v89;
                        v65 = v93;
                        if (v63 >= v95)
                        {
                          if (v93 <= &v89 && v93 + 24 * v63 > &v89)
                          {
                            v81 = &v89 - v93;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v63 + 1, 24);
                            v65 = v93;
                            v64 = (v93 + v81);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v63 + 1, 24);
                            v64 = &v89;
                            v65 = v93;
                          }
                        }

                        v66 = &v65[24 * v94];
                        v67 = *v64;
                        *(v66 + 2) = *(v64 + 2);
                        *v66 = v67;
                        ++v94;
                        if (v92[0])
                        {
                          v68 = &v89;
                          mlir::DiagnosticArgument::DiagnosticArgument(&v89, v83);
                          v69 = v93;
                          if (v94 >= v95)
                          {
                            if (v93 <= &v89 && v93 + 24 * v94 > &v89)
                            {
                              v82 = &v89 - v93;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
                              v69 = v93;
                              v68 = (v93 + v82);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
                              v68 = &v89;
                              v69 = v93;
                            }
                          }

                          v70 = &v69[24 * v94];
                          v71 = *v68;
                          *(v70 + 2) = *(v68 + 2);
                          *v70 = v71;
                          ++v94;
                        }
                      }
                    }
                  }

                  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v92);
                  if (v92[0])
                  {
                    mlir::InFlightDiagnostic::report(v92);
                  }

                  if (v102)
                  {
                    if (v101 != &v102)
                    {
                      free(v101);
                    }

                    v72 = __p;
                    if (__p)
                    {
                      v73 = v100;
                      v74 = __p;
                      if (v100 != __p)
                      {
                        do
                        {
                          v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
                        }

                        while (v73 != v72);
                        v74 = __p;
                      }

                      v100 = v72;
                      operator delete(v74);
                    }

                    v19 = v97;
                    if (v97)
                    {
                      v75 = v98;
                      v21 = v97;
                      if (v98 != v97)
                      {
                        do
                        {
                          v77 = *--v75;
                          v76 = v77;
                          *v75 = 0;
                          if (v77)
                          {
                            MEMORY[0x1AC55A040](v76, 0x1000C8077774924);
                          }
                        }

                        while (v75 != v19);
                        goto LABEL_107;
                      }

                      goto LABEL_108;
                    }

                    goto LABEL_109;
                  }

                  return v15;
                }

LABEL_71:
                --v50;
                --v51;
                if (v50 < 1)
                {
                  return 1;
                }
              }
            }

LABEL_65:
            if (v44 != 0x8000000000000000 && v44 != v45)
            {
              v86[0] = "Incompatible last dimension shapes: LHS = ";
              v87 = 259;
              mlir::OpState::emitOpError(this, v86, v92);
              mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v92, v85);
              mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v47, " RHS = ");
              mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v48, &v83);
              v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(v92);
              return v15;
            }

            goto LABEL_68;
          }
        }

        v45 = 1;
        goto LABEL_65;
      }
    }

LABEL_33:
    v24 = 0;
    goto LABEL_34;
  }

  v87 = 259;
  mlir::OpState::emitOpError(this, v86, v92);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v92);
  if (v92[0])
  {
    mlir::InFlightDiagnostic::report(v92);
  }

  if (v102 == 1)
  {
    if (v101 != &v102)
    {
      free(v101);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v100;
      v18 = __p;
      if (v100 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v100 = v16;
      operator delete(v18);
    }

    v19 = v97;
    if (v97)
    {
      v20 = v98;
      v21 = v97;
      if (v98 != v97)
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
LABEL_107:
        v21 = v97;
      }

LABEL_108:
      v98 = v19;
      operator delete(v21);
    }

LABEL_109:
    if (v93 != v96)
    {
      free(v93);
    }
  }

  return v15;
}

uint64_t mlir::mps::TransposeOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v77 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    ElementTypeOrSelf = mlir::Float32Type::get(a1, a2);
    goto LABEL_9;
  }

  v70 = a6;
  LOBYTE(v71) = 0;
  v72 = 0;
  v73 = a9;
  v74 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v70);
    if (v72 == 1)
    {
      v72 = 0;
    }

    mlir::OperationName::OperationName(&v71, "mps.transpose", 13, Context);
    v72 = 1;
  }

  v75 = a4;
  v76 = a5;
  if (a5 <= 2)
  {
    v63 = a4;
    v64 = 0;
    v14 = mlir::ValueRange::dereference_iterator(&v63, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v14);
LABEL_9:
    v16 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v17 = *(a11 + 8);
    if (v17 >= *(a11 + 12))
    {
      v29 = v16;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v17 + 1, 8);
      v16 = v29;
      LODWORD(v17) = *(a11 + 8);
    }

    *(*a11 + 8 * v17) = v16;
    ++*(a11 + 8);
    return 1;
  }

  v63 = a4;
  v64 = 0;
  v18 = (*(mlir::ValueRange::dereference_iterator(&v63, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = *v18;
  {
    mlir::Builder::getI32VectorAttr();
    v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (v22)
    {
      goto LABEL_15;
    }

LABEL_25:
    v30 = 0;
    goto LABEL_26;
  }

  v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  if (!v22)
  {
    goto LABEL_25;
  }

LABEL_15:
  v23 = v21;
  v24 = v22;
  do
  {
    v25 = v24 >> 1;
    v26 = &v23[2 * (v24 >> 1)];
    v28 = *v26;
    v27 = v26 + 2;
    v24 += ~(v24 >> 1);
    if (v28 < v20)
    {
      v23 = v27;
    }

    else
    {
      v24 = v25;
    }
  }

  while (v24);
  if (v23 == &v21[2 * v22] || *v23 != v20)
  {
    goto LABEL_25;
  }

  v30 = v23[1];
LABEL_26:
  v59[0] = v18;
  v59[1] = v30;
  v68[0] = &v69;
  v68[1] = 0x100000000;
  v66[0] = &v67;
  v66[1] = 0x100000000;
  if (mlir::ElementsAttr::getShapedType(v59))
  {
    v63 = v75;
    v64 = 1;
    v63 = mlir::ValueRange::offset_base(&v63, 1);
    v64 = 0;
    v31 = mlir::ValueRange::dereference_iterator(&v63, 0);
    mlir::ShapedType::getShape(v59);
    v33 = v32;
    v63 = 0;
    v64 = 0;
    v60 = &v63;
    *&v61 = v31;
    DefiningOp = mlir::Value::getDefiningOp(&v61);
    if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v60, DefiningOp) & 1) != 0)
    {
      {
        goto LABEL_35;
      }

LABEL_32:
      v63 = v75;
      v64 = 2;
      v63 = mlir::ValueRange::offset_base(&v63, 2);
      v64 = 0;
      v35 = mlir::ValueRange::dereference_iterator(&v63, 0);
      mlir::ShapedType::getShape(v59);
      v37 = v36;
      v63 = 0;
      v64 = 0;
      v60 = &v63;
      *&v61 = v35;
      v38 = mlir::Value::getDefiningOp(&v61);
      if (v38 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v60, v38) & 1) != 0)
      {
        {
          goto LABEL_35;
        }
      }

      else if (!mlir::emitOptionalError<char const(&)[41]>(0, 0, "axes is not a constant"))
      {
        goto LABEL_35;
      }

      Shape = mlir::ShapedType::getShape(v59);
      v45 = mlir::ShapedType::getShape(v59);
      v47 = (v45 + 8 * v46);
      v63 = v65;
      v64 = 0x600000000;
      v48 = (v47 - Shape) >> 3;
      if (v48 < 7)
      {
        v49 = 0;
        v50 = v65;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v48, 8);
        v49 = v64;
        v50 = v63;
      }

      if (v47 != Shape)
      {
        memcpy(&v50[8 * v49], Shape, v47 - Shape);
        v49 = v64;
        v50 = v63;
      }

      v51 = v49 + ((v47 - Shape) >> 3);
      LODWORD(v64) = v51;
      v52 = *v66[0];
      v53 = *&v50[8 * *v68[0]];
      *&v50[8 * *v68[0]] = *&v50[8 * *v66[0]];
      *&v50[8 * v52] = v53;
      *&v61 = v50;
      *(&v61 + 1) = v51;
      v62 = 1;
      isSplat = mlir::ElementsAttr::isSplat(v59);
      v55 = mlir::ShapedType::cloneWith(v59, &v61, isSplat);
      v56 = *(a11 + 8);
      if (v56 >= *(a11 + 12))
      {
        v58 = v55;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v56 + 1, 8);
        v55 = v58;
        LODWORD(v56) = *(a11 + 8);
      }

      *(*a11 + 8 * v56) = v55;
      ++*(a11 + 8);
      if (v63 != v65)
      {
        free(v63);
      }

      goto LABEL_38;
    }

    if (mlir::emitOptionalError<char const(&)[41]>(0, 0, "axes is not a constant"))
    {
      goto LABEL_32;
    }
  }

LABEL_35:
  v63 = v75;
  v64 = 0;
  v39 = mlir::ValueRange::dereference_iterator(&v63, 0);
  v40 = mlir::getElementTypeOrSelf(v39);
  v41 = mlir::UnrankedTensorType::get(v40);
  v42 = *(a11 + 8);
  if (v42 >= *(a11 + 12))
  {
    v57 = v41;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v42 + 1, 8);
    v41 = v57;
    LODWORD(v42) = *(a11 + 8);
  }

  *(*a11 + 8 * v42) = v41;
  ++*(a11 + 8);
LABEL_38:
  if (v66[0] != &v67)
  {
    free(v66[0]);
  }

  if (v68[0] != &v69)
  {
    free(v68[0]);
  }

  return 1;
}

void *llvm::SmallVector<long long,6u>::SmallVector<long long const*,void>(void *a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  v5 = a3 - a2;
  v6 = (a3 - a2) >> 3;
  if (v6 >= 7)
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v6, 8);
    a2 = v7;
    v8 = *(a1 + 2);
    if (v7 == a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  if (a2 != a3)
  {
LABEL_5:
    memcpy((*a1 + 8 * v8), a2, v5);
    v8 = *(a1 + 2);
  }

LABEL_6:
  *(a1 + 2) = v8 + (v5 >> 3);
  return a1;
}

BOOL mlir::mps::PermuteOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v46[4] = *MEMORY[0x1E69E9840];
  v40[0] = a4;
  v40[1] = a5;
  if (a5 == 2)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(v40, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v14 = mlir::ValueRange::dereference_iterator(v40, 1);
    v15 = *(*v13 + 136);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v17 = v13;
    }

    else
    {
      v17 = 0;
    }

    v35 = v17;
    if (!v17)
    {
      if (mlir::emitOptionalError<char const(&)[41]>(a2, a3, "cannot permute a non-tensor type"))
      {
        v24 = 0;
LABEL_39:
        v34 = *(a11 + 8);
        if (v34 >= *(a11 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v34 + 1, 8);
          LODWORD(v34) = *(a11 + 8);
        }

        *(*a11 + 8 * v34) = v24;
        ++*(a11 + 8);
        return 1;
      }

      return 0;
    }

    v18 = v14;
    __b = v43;
    v42 = 0x400000000;
    v39 = v17;
    if (mlir::TensorType::hasRank(&v39))
    {
      mlir::ArrayAttr::getValue(&v39);
      NumElements = v19;
      v38 = v19;
      v21 = v42;
      v22 = v19 >= v42;
      if (v19 == v42)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v44 = (*(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
      Value = mlir::ArrayAttr::getValue(&v44);
      NumElements = mlir::ShapedType::getNumElements(Value, v26);
      v38 = NumElements;
      v21 = v42;
      v22 = NumElements >= v42;
      if (NumElements == v42)
      {
        goto LABEL_25;
      }
    }

    if (v22)
    {
      if (NumElements > HIDWORD(v42))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v43, NumElements, 8);
        v21 = v42;
      }

      if (NumElements != v21)
      {
        bzero(__b + 8 * v21, 8 * (NumElements - v21));
      }
    }

    LODWORD(v42) = NumElements;
LABEL_25:
    v44 = v46;
    v45 = 0x400000000;
    if (*(*v39 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || (mlir::matchConstantWithIntVector<long long>(v18, &v44) & 1) == 0)
    {
      if (NumElements)
      {
        memset_pattern16(__b, &unk_1A75D94C0, 8 * NumElements);
      }

      v29 = 1;
      v30 = v44;
      if (v44 == v46)
      {
LABEL_33:
        v31 = __b;
        if (v29)
        {
          v32 = v42;
          ElementType = mlir::TensorType::getElementType(&v35);
          v24 = mlir::RankedTensorType::get(v31, v32, ElementType, 0);
          v31 = __b;
          if (__b == v43)
          {
LABEL_38:
            if (v29)
            {
              goto LABEL_39;
            }

            return 0;
          }
        }

        else
        {
          v24 = 0;
          if (__b == v43)
          {
            goto LABEL_38;
          }
        }

        free(v31);
        goto LABEL_38;
      }
    }

    else
    {
      if (NumElements == v45)
      {
        v36[0] = mlir::ArrayAttr::getValue(&v39);
        v36[1] = v27;
        v37 = 1;
      }

      else
      {
        v36[0] = v45;
        v28 = mlir::emitOptionalError<char const(&)[37],char const(&)[14],unsigned long,char const(&)[5],unsigned long &>(a2, a3, "perm tensor length must equal input ", "tensor rank, ", v36, " != ", &v38);
      }

      v29 = v28;
      v30 = v44;
      if (v44 == v46)
      {
        goto LABEL_33;
      }
    }

    free(v30);
    goto LABEL_33;
  }

  return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
}