BOOL ValueEquivalenceCache::checkCommutativeEquivalent(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v81[4] = *MEMORY[0x277D85DE8];
  if (a3 != a5)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 0;
  v70 = a2;
  v71 = a4;
  v8 = a2 & 0xFFFFFFFFFFFFFFF8;
  v9 = (a2 & 0xFFFFFFFFFFFFFFF8) == 0 || (a2 & 6) != 0;
  v10 = (a2 & 0xFFFFFFFFFFFFFFF8) == 0 || (a2 & 6) != 2;
  v11 = (a4 & 6) != 2;
  v12 = a4 & 0xFFFFFFFFFFFFFFF8;
  v13 = (a4 & 0xFFFFFFFFFFFFFFF8) == 0 || (a4 & 6) != 0;
  if ((a4 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    v11 = 1;
  }

  v72 = v11;
  for (i = a3; ; --i)
  {
    if (v9)
    {
      if (v10)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, v7);
        if (!v13)
        {
          goto LABEL_26;
        }
      }

      else
      {
        NextResultAtOffset = *(v8 + 32 * v7 + 24);
        if (!v13)
        {
LABEL_26:
          v16 = *(v12 + 8 * v7);
          if (NextResultAtOffset == v16)
          {
            goto LABEL_32;
          }

          goto LABEL_29;
        }
      }
    }

    else
    {
      NextResultAtOffset = *(v8 + 8 * v7);
      if (!v13)
      {
        goto LABEL_26;
      }
    }

    if (v72)
    {
      v16 = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, v7);
      if (NextResultAtOffset == v16)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v16 = *(v12 + 32 * v7 + 24);
      if (NextResultAtOffset == v16)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v17 = *(a1 + 4);
    if (!v17)
    {
      goto LABEL_15;
    }

    v18 = *a1;
    v19 = 0x9DDFEA08EB382D69 * ((8 * NextResultAtOffset - 0xAE502812AA7333) ^ HIDWORD(NextResultAtOffset));
    v20 = 0x9DDFEA08EB382D69 * (HIDWORD(NextResultAtOffset) ^ (v19 >> 47) ^ v19);
    LODWORD(v19) = -348639895 * ((v20 >> 47) ^ v20);
    v21 = v17 - 1;
    v22 = (v17 - 1) & v19;
    v23 = *(*a1 + 16 * v22);
    if (v23 == NextResultAtOffset)
    {
      break;
    }

    v24 = 1;
    while (v23 != -4096)
    {
      v25 = v22 + v24++;
      v22 = v25 & v21;
      v23 = *(v18 + 16 * v22);
      if (v23 == NextResultAtOffset)
      {
        goto LABEL_31;
      }
    }

LABEL_15:
    if (v16)
    {
      goto LABEL_39;
    }

LABEL_32:
    if (++v7 == a3)
    {
      return 1;
    }
  }

LABEL_31:
  if (*(v18 + 16 * v22 + 8) == v16)
  {
    goto LABEL_32;
  }

LABEL_39:
  v27 = a3 - v7;
  if (a3 == v7)
  {
    return 1;
  }

  if (v7)
  {
    if (v9)
    {
      if (v10)
      {
        v28 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, v7) & 0xFFFFFFFFFFFFFFF9 | 4;
      }

      else
      {
        v28 = (v8 + 32 * v7) | 2;
      }
    }

    else
    {
      v28 = v8 + 8 * v7;
    }

    v70 = v28;
  }

  v78 = v80;
  v79 = 0x600000000;
  if (v27 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v29 = v80;
  v30 = v70 & 0xFFFFFFFFFFFFFFF8;
  if ((v70 & 6) != 0 || !v30)
  {
    if ((v70 & 6) == 2 && v30)
    {
      v38 = i;
      v39 = (v30 + 24);
      do
      {
        v40 = *v39;
        v39 += 4;
        *v29++ = v40;
        --v38;
      }

      while (v38);
    }

    else
    {
      v37 = 0;
      do
      {
        v80[v37] = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, v37);
        ++v37;
      }

      while (i != v37);
    }
  }

  else
  {
    v31 = 0;
    if (v27 < 4 || v80 - v30 <= 0x1F)
    {
      v32 = v80;
    }

    else
    {
      v31 = v27 & 4;
      v32 = &v80[v27 & 0xFFFFFFFFFFFFFFFCLL];
      v33 = (v30 + 16);
      v34 = v81;
      v35 = i & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v36 = *v33;
        *(v34 - 1) = *(v33 - 1);
        *v34 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 4;
      }

      while (v35);
      if (v27 == v31)
      {
        goto LABEL_69;
      }
    }

    do
    {
      *v32++ = *(v30 + 8 * v31++);
    }

    while (i != v31);
  }

LABEL_69:
  v41 = (v79 + v27);
  v67 = v79 + v27 == 0;
  LODWORD(v79) = v41;
  v42 = (v78 + 8 * v41);
  v43 = 126 - 2 * __clz(v41);
  if (v67)
  {
    v44 = 0;
  }

  else
  {
    v44 = v43;
  }

  std::__introsort<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(v78, v42, &v74, v44, 1);
  if (v7)
  {
    if (v13)
    {
      if (v72)
      {
        v45 = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, v7) & 0xFFFFFFFFFFFFFFF9 | 4;
      }

      else
      {
        v45 = (v12 + 32 * v7) | 2;
      }
    }

    else
    {
      v45 = v12 + 8 * v7;
    }

    v71 = v45;
  }

  v74 = v76;
  v75 = 0x600000000;
  v46 = v76;
  v47 = v71 & 0xFFFFFFFFFFFFFFF8;
  if ((v71 & 6) != 0 || !v47)
  {
    if ((v71 & 6) == 2 && v47)
    {
      v56 = i;
      v57 = (v47 + 24);
      do
      {
        v58 = *v57;
        v57 += 4;
        *v46++ = v58;
        --v56;
      }

      while (v56);
    }

    else
    {
      v54 = 0;
      v55 = v7 - a3;
      do
      {
        v76[v54] = mlir::detail::OpResultImpl::getNextResultAtOffset(v47, v54);
        ++v54;
      }

      while (v55 + v54);
    }
  }

  else
  {
    v48 = 0;
    if (v27 < 4 || v76 - v47 <= 0x1F)
    {
      v49 = v76;
    }

    else
    {
      v48 = v27 & 4;
      v49 = &v76[v27 & 0xFFFFFFFFFFFFFFFCLL];
      v50 = (v47 + 16);
      v51 = &v77;
      v52 = i & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v53 = *v50;
        *(v51 - 1) = *(v50 - 1);
        *v51 = v53;
        v50 += 2;
        v51 += 4;
        v52 -= 4;
      }

      while (v52);
      if (v27 == v48)
      {
        goto LABEL_97;
      }
    }

    do
    {
      *v49++ = *(v47 + 8 * v48++);
    }

    while (i != v48);
  }

LABEL_97:
  v59 = (v75 + v27);
  v67 = v75 + v27 == 0;
  LODWORD(v75) = v59;
  v60 = (v74 + 8 * v59);
  v61 = 126 - 2 * __clz(v59);
  if (v67)
  {
    v62 = 0;
  }

  else
  {
    v62 = v61;
  }

  std::__introsort<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(v74, v60, &v73, v62, 1);
  if (v79 != v75)
  {
    result = 0;
    v63 = v74;
    goto LABEL_110;
  }

  v63 = v74;
  if (v79)
  {
    v64 = 0;
    do
    {
      v65 = *(v78 + v64);
      v66 = *(v74 + v64);
      result = v65 == v66;
      v67 = v65 != v66 || 8 * v79 - 8 == v64;
      v64 += 8;
    }

    while (!v67);
LABEL_110:
    if (v63 != v76)
    {
LABEL_111:
      v68 = result;
      free(v63);
      result = v68;
    }
  }

  else
  {
    result = 1;
    if (v74 != v76)
    {
      goto LABEL_111;
    }
  }

  if (v78 != v80)
  {
    v69 = result;
    free(v78);
    return v69;
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
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
      v71 = *(a2 - 1);
      v72 = *v10;
      if (v71 < *v10)
      {
        *v10 = v71;
        *(a2 - 1) = v72;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v81 = v10 + 1;
      v83 = v10 == a2 || v81 == a2;
      if (a5)
      {
        if (!v83)
        {
          v84 = 0;
          v85 = v10;
          do
          {
            v88 = *v85;
            v87 = v85[1];
            v85 = v81;
            if (v87 < v88)
            {
              v89 = v84;
              do
              {
                *(v10 + v89 + 8) = v88;
                if (!v89)
                {
                  v86 = v10;
                  goto LABEL_125;
                }

                v88 = *(v10 + v89 - 8);
                v89 -= 8;
              }

              while (v87 < v88);
              v86 = (v10 + v89 + 8);
LABEL_125:
              *v86 = v87;
            }

            v81 = v85 + 1;
            v84 += 8;
          }

          while (v85 + 1 != a2);
        }
      }

      else if (!v83)
      {
        do
        {
          v94 = *v9;
          v93 = v9[1];
          v9 = v81;
          if (v93 < v94)
          {
            do
            {
              *v81 = v94;
              v94 = *(v81 - 2);
              --v81;
            }

            while (v93 < v94);
            *v81 = v93;
          }

          v81 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,mlir::Value*>(v10, a2, a2);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v16 = *v10;
      v17 = v10[v12];
      if (*v10 < v17)
      {
        if (v13 < v16)
        {
          v10[v12] = v13;
          goto LABEL_37;
        }

        v10[v12] = v16;
        *v10 = v17;
        v29 = *(a2 - 1);
        if (v29 < v17)
        {
          *v10 = v29;
LABEL_37:
          *(a2 - 1) = v17;
        }

LABEL_38:
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v13 >= v16)
      {
        goto LABEL_38;
      }

      *v10 = v13;
      *(a2 - 1) = v16;
      v20 = v10[v12];
      if (*v10 >= v20)
      {
        goto LABEL_38;
      }

      v10[v12] = *v10;
      *v10 = v20;
      --a4;
      v21 = v20;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) < v21)
      {
        goto LABEL_62;
      }

      if (v21 >= *(a2 - 1))
      {
        v56 = (v10 + 1);
        do
        {
          v10 = v56;
          if (v56 >= a2)
          {
            break;
          }

          v56 += 8;
        }

        while (v21 >= *v10);
      }

      else
      {
        do
        {
          v55 = v10[1];
          ++v10;
        }

        while (v21 >= v55);
      }

      v57 = a2;
      if (v10 < a2)
      {
        v57 = a2;
        do
        {
          v58 = *--v57;
        }

        while (v21 < v58);
      }

      if (v10 < v57)
      {
        v59 = *v10;
        v60 = *v57;
        do
        {
          *v10 = v60;
          *v57 = v59;
          do
          {
            v61 = v10[1];
            ++v10;
            v59 = v61;
          }

          while (v21 >= v61);
          do
          {
            v62 = *--v57;
            v60 = v62;
          }

          while (v21 < v62);
        }

        while (v10 < v57);
      }

      v63 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v63;
      }

      a5 = 0;
      *v63 = v21;
    }

    else
    {
      v14 = v10[v12];
      v15 = *v10;
      if (v14 >= *v10)
      {
        if (v13 < v14)
        {
          v10[v12] = v13;
          *(a2 - 1) = v14;
          v18 = v10[v12];
          v19 = *v10;
          if (v18 < *v10)
          {
            *v10 = v18;
            v10[v12] = v19;
          }
        }
      }

      else
      {
        if (v13 >= v14)
        {
          *v10 = v14;
          v10[v12] = v15;
          v22 = *(a2 - 1);
          if (v22 >= v15)
          {
            goto LABEL_29;
          }

          v10[v12] = v22;
        }

        else
        {
          *v10 = v13;
        }

        *(a2 - 1) = v15;
      }

LABEL_29:
      v23 = v12 - 1;
      v24 = v10[v12 - 1];
      v25 = v10[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          v10[v23] = v26;
          *(a2 - 2) = v24;
          v27 = v10[v23];
          v28 = v10[1];
          if (v27 < v28)
          {
            v10[1] = v27;
            v10[v23] = v28;
          }
        }
      }

      else
      {
        if (v26 >= v24)
        {
          v10[1] = v24;
          v10[v23] = v25;
          v30 = *(a2 - 2);
          if (v30 >= v25)
          {
            goto LABEL_43;
          }

          v10[v23] = v30;
        }

        else
        {
          v10[1] = v26;
        }

        *(a2 - 2) = v25;
      }

LABEL_43:
      v31 = v12 + 1;
      v32 = v10[v12 + 1];
      v33 = v10[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v32)
        {
          v10[v31] = v34;
          *(a2 - 3) = v32;
          v35 = v10[v31];
          v36 = v10[2];
          if (v35 < v36)
          {
            v10[2] = v35;
            v10[v31] = v36;
          }
        }
      }

      else
      {
        if (v34 >= v32)
        {
          v10[2] = v32;
          v10[v31] = v33;
          v37 = *(a2 - 3);
          if (v37 >= v33)
          {
            goto LABEL_52;
          }

          v10[v31] = v37;
        }

        else
        {
          v10[2] = v34;
        }

        *(a2 - 3) = v33;
      }

LABEL_52:
      v38 = v10[v12];
      v39 = v10[v23];
      v40 = v10[v31];
      if (v38 >= v39)
      {
        if (v40 < v38)
        {
          v10[v12] = v40;
          v10[v31] = v38;
          v38 = v40;
          if (v40 < v39)
          {
            v10[v23] = v40;
            v10[v12] = v39;
            v38 = v39;
          }
        }
      }

      else if (v40 >= v38)
      {
        v10[v23] = v38;
        v10[v12] = v39;
        v38 = v39;
        if (v40 < v39)
        {
          v10[v12] = v40;
          v10[v31] = v39;
          v38 = v40;
        }
      }

      else
      {
        v10[v23] = v40;
        v10[v31] = v39;
      }

      v41 = *v10;
      *v10 = v38;
      v10[v12] = v41;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v42 = 0;
      do
      {
        v43 = v10[++v42];
      }

      while (v43 < v21);
      v44 = &v10[v42];
      v45 = a2;
      if (v42 == 1)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *--v45;
        }

        while (v47 >= v21);
      }

      else
      {
        do
        {
          v46 = *--v45;
        }

        while (v46 >= v21);
      }

      if (v44 >= v45)
      {
        v53 = v44 - 1;
        if (v44 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v53;
        goto LABEL_80;
      }

      v48 = *v45;
      v49 = &v10[v42];
      v50 = v45;
      do
      {
        *v49 = v48;
        *v50 = v43;
        do
        {
          v51 = v49[1];
          ++v49;
          v43 = v51;
        }

        while (v51 < v21);
        do
        {
          v52 = *--v50;
          v48 = v52;
        }

        while (v52 >= v21);
      }

      while (v49 < v50);
      v53 = v49 - 1;
      if (v49 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v53 = v21;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*>(v10, v53);
      v10 = v53 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*>(v53 + 1, a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(v9, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v53 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v76 = v10 + 1;
      v77 = v10[1];
      v78 = v10 + 2;
      v79 = v10[2];
      v80 = *v10;
      if (v77 >= *v10)
      {
        if (v79 < v77)
        {
          *v76 = v79;
          *v78 = v77;
          if (v79 < v80)
          {
            *v10 = v79;
            v92 = v10 + 1;
            goto LABEL_171;
          }

LABEL_172:
          v79 = v77;
        }
      }

      else
      {
        if (v79 < v77)
        {
          *v10 = v79;
          goto LABEL_170;
        }

        *v10 = v77;
        v10[1] = v80;
        if (v79 < v80)
        {
          *v76 = v79;
LABEL_170:
          v92 = v10 + 2;
          v77 = v80;
LABEL_171:
          *v92 = v80;
          goto LABEL_172;
        }
      }

      v100 = *(a2 - 1);
      if (v100 < v79)
      {
        *v78 = v100;
        *(a2 - 1) = v79;
        v101 = *v78;
        v102 = *v76;
        if (v101 < v102)
        {
          v10[1] = v101;
          v10[2] = v102;
          v103 = *v10;
          if (v101 < *v10)
          {
            *v10 = v101;
            v10[1] = v103;
          }
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v64 = v10 + 1;
      v65 = v10[1];
      v67 = v10 + 2;
      v66 = v10[2];
      v68 = *v10;
      if (v65 >= *v10)
      {
        if (v66 >= v65)
        {
          v70 = *v10;
          v68 = v10[1];
          v95 = v10[3];
          if (v95 < v66)
          {
            goto LABEL_155;
          }

          goto LABEL_159;
        }

        *v64 = v66;
        *v67 = v65;
        if (v66 < v68)
        {
          *v10 = v66;
          v69 = v10 + 1;
          v70 = v66;
          v66 = v68;
          goto LABEL_154;
        }

        v70 = v68;
        v68 = v66;
        v66 = v65;
        v95 = v10[3];
        if (v95 >= v66)
        {
          goto LABEL_159;
        }

LABEL_155:
        v10[2] = v95;
        v10[3] = v66;
        if (v95 < v68)
        {
          *v64 = v95;
          *v67 = v68;
          if (v95 < v70)
          {
            *v10 = v95;
            v10[1] = v70;
          }
        }
      }

      else
      {
        if (v66 < v65)
        {
          *v10 = v66;
          v69 = v10 + 2;
          v70 = v66;
          v66 = v65;
          goto LABEL_153;
        }

        *v10 = v65;
        v10[1] = v68;
        if (v66 >= v68)
        {
          v70 = v65;
          v95 = v10[3];
          if (v95 < v66)
          {
            goto LABEL_155;
          }
        }

        else
        {
          *v64 = v66;
          v69 = v10 + 2;
          v70 = v65;
LABEL_153:
          v65 = v68;
LABEL_154:
          *v69 = v68;
          v68 = v66;
          v66 = v65;
          v95 = v10[3];
          if (v95 < v66)
          {
            goto LABEL_155;
          }
        }

LABEL_159:
        v66 = v95;
      }

      v96 = *(a2 - 1);
      if (v96 >= v66)
      {
        return result;
      }

      v10[3] = v96;
      *(a2 - 1) = v66;
      v97 = v10[2];
      v90 = v10[3];
      if (v90 >= v97)
      {
        return result;
      }

      v10[2] = v90;
      v10[3] = v97;
      v98 = v10[1];
      if (v90 >= v98)
      {
        return result;
      }

      v10[1] = v90;
      v10[2] = v98;
      v91 = *v10;
      if (v90 >= *v10)
      {
        return result;
      }

LABEL_164:
      *v10 = v90;
      v10[1] = v91;
      return result;
    }

    goto LABEL_10;
  }

  v73 = *v10;
  v74 = v10[1];
  v75 = *(a2 - 1);
  if (v74 < *v10)
  {
    if (v75 >= v74)
    {
      *v10 = v74;
      v10[1] = v73;
      v99 = *(a2 - 1);
      if (v99 >= v73)
      {
        return result;
      }

      v10[1] = v99;
    }

    else
    {
      *v10 = v75;
    }

    *(a2 - 1) = v73;
    return result;
  }

  if (v75 < v74)
  {
    v10[1] = v75;
    *(a2 - 1) = v74;
    v91 = *v10;
    v90 = v10[1];
    if (v90 < *v10)
    {
      goto LABEL_164;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v13 = *a1;
      v14 = a1[1];
      v15 = *(a2 - 1);
      if (v14 < *a1)
      {
        if (v15 >= v14)
        {
          *a1 = v14;
          a1[1] = v13;
          v29 = *(a2 - 1);
          if (v29 >= v13)
          {
            return 1;
          }

          a1[1] = v29;
          *(a2 - 1) = v13;
          return 1;
        }

        else
        {
          *a1 = v15;
          *(a2 - 1) = v13;
          return 1;
        }
      }

      if (v15 >= v14)
      {
        return 1;
      }

      a1[1] = v15;
      *(a2 - 1) = v14;
      v27 = *a1;
      v26 = a1[1];
      if (v26 >= *a1)
      {
        return 1;
      }

LABEL_78:
      *a1 = v26;
      a1[1] = v27;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 < v5)
        {
          *v4 = v6;
          *v7 = v5;
          if (v6 >= v8)
          {
            v10 = v8;
LABEL_55:
            v8 = v6;
            v6 = v5;
            v36 = a1[3];
            if (v36 >= v6)
            {
              goto LABEL_73;
            }

LABEL_58:
            a1[2] = v36;
            a1[3] = v6;
            if (v36 < v8)
            {
              *v4 = v36;
              *v7 = v8;
              if (v36 < v10)
              {
                *a1 = v36;
                a1[1] = v10;
              }
            }

LABEL_74:
            v41 = *(a2 - 1);
            if (v41 >= v6)
            {
              return 1;
            }

            a1[3] = v41;
            *(a2 - 1) = v6;
            v42 = a1[2];
            v26 = a1[3];
            if (v26 >= v42)
            {
              return 1;
            }

            a1[2] = v26;
            a1[3] = v42;
            v43 = a1[1];
            if (v26 >= v43)
            {
              return 1;
            }

            a1[1] = v26;
            a1[2] = v43;
            v27 = *a1;
            if (v26 >= *a1)
            {
              return 1;
            }

            goto LABEL_78;
          }

          *a1 = v6;
          v9 = a1 + 1;
          v10 = v6;
          v6 = v8;
LABEL_54:
          *v9 = v8;
          goto LABEL_55;
        }

        v10 = *a1;
        v8 = a1[1];
        v36 = a1[3];
        if (v36 < v6)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v6 < v5)
        {
          *a1 = v6;
          v9 = a1 + 2;
          v10 = v6;
          v6 = v5;
LABEL_53:
          v5 = v8;
          goto LABEL_54;
        }

        *a1 = v5;
        a1[1] = v8;
        if (v6 < v8)
        {
          *v4 = v6;
          v9 = a1 + 2;
          v10 = v5;
          goto LABEL_53;
        }

        v10 = v5;
        v36 = a1[3];
        if (v36 < v6)
        {
          goto LABEL_58;
        }
      }

LABEL_73:
      v6 = v36;
      goto LABEL_74;
    }

    v21 = a1 + 1;
    v22 = a1[1];
    v23 = a1 + 2;
    v24 = a1[2];
    v25 = *a1;
    if (v22 >= *a1)
    {
      if (v24 >= v22)
      {
        goto LABEL_66;
      }

      *v21 = v24;
      *v23 = v22;
      if (v24 >= v25)
      {
        goto LABEL_65;
      }

      *a1 = v24;
      v28 = a1 + 1;
    }

    else
    {
      if (v24 >= v22)
      {
        *a1 = v22;
        a1[1] = v25;
        if (v24 >= v25)
        {
          goto LABEL_66;
        }

        *v21 = v24;
      }

      else
      {
        *a1 = v24;
      }

      v28 = a1 + 2;
      v22 = v25;
    }

    *v28 = v25;
LABEL_65:
    v24 = v22;
LABEL_66:
    v37 = *(a2 - 1);
    if (v37 >= v24)
    {
      return 1;
    }

    *v23 = v37;
    *(a2 - 1) = v24;
    v38 = *v23;
    v39 = *v21;
    if (v38 >= v39)
    {
      return 1;
    }

    a1[1] = v38;
    a1[2] = v39;
    v40 = *a1;
    if (v38 >= *a1)
    {
      return 1;
    }

    *a1 = v38;
    a1[1] = v40;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v16 = a1 + 2;
    v17 = a1[2];
    v18 = a1 + 1;
    v19 = a1[1];
    v20 = *a1;
    if (v19 >= *a1)
    {
      if (v17 >= v19)
      {
        goto LABEL_40;
      }

      *v18 = v17;
      *v16 = v19;
      if (v17 >= v20)
      {
        goto LABEL_40;
      }

      *a1 = v17;
    }

    else
    {
      if (v17 >= v19)
      {
        *a1 = v19;
        a1[1] = v20;
        if (v17 >= v20)
        {
LABEL_40:
          v30 = a1 + 3;
          if (a1 + 3 == a2)
          {
            return 1;
          }

          v31 = 0;
          v32 = 0;
          while (1)
          {
            v33 = *v30;
            v34 = *v16;
            if (*v30 < v34)
            {
              break;
            }

LABEL_49:
            v16 = v30;
            v31 += 8;
            if (++v30 == a2)
            {
              return 1;
            }
          }

          v35 = v31;
          do
          {
            *(a1 + v35 + 24) = v34;
            if (v35 == -16)
            {
              *a1 = v33;
              if (++v32 != 8)
              {
                goto LABEL_49;
              }

              return v30 + 1 == a2;
            }

            v34 = *(a1 + v35 + 8);
            v35 -= 8;
          }

          while (v33 < v34);
          *(a1 + v35 + 24) = v33;
          if (++v32 != 8)
          {
            goto LABEL_49;
          }

          return v30 + 1 == a2;
        }

        *v18 = v17;
      }

      else
      {
        *a1 = v17;
      }

      v18 = a1 + 2;
    }

    *v18 = v20;
    goto LABEL_40;
  }

  v11 = *(a2 - 1);
  v12 = *a1;
  if (v11 >= *a1)
  {
    return 1;
  }

  *a1 = v11;
  *(a2 - 1) = v12;
  return 1;
}

unint64_t *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,mlir::Value*>(char *a1, unint64_t *a2, unint64_t *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = (a2 - a1) >> 3;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v7 = (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
        v8 = &a1[8 * v7];
        v9 = *v8;
        if (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v3 && v9 < v8[1])
        {
          v9 = v8[1];
          ++v8;
          v7 = 2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2;
        }

        v10 = &a1[8 * v5];
        v11 = *v10;
        if (v9 >= *v10)
        {
          v12 = *v8;
          while (1)
          {
            v13 = v8;
            *v10 = v12;
            if (v4 < v7)
            {
              break;
            }

            v14 = (2 * v7) | 1;
            v8 = &a1[8 * v14];
            v7 = 2 * v7 + 2;
            v12 = *v8;
            if (v7 < v3)
            {
              if (v12 >= v8[1])
              {
                v7 = v14;
              }

              else
              {
                v12 = v8[1];
                ++v8;
              }

              v10 = v13;
              if (v12 < v11)
              {
                break;
              }
            }

            else
            {
              v7 = v14;
              v10 = v13;
              if (v12 < v11)
              {
                break;
              }
            }
          }

          *v13 = v11;
        }
      }

      v6 = v5-- <= 0;
    }

    while (!v6);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v16 = *a1;
      i = a2;
      do
      {
        v17 = *i;
        if (*i < v16)
        {
          *i = v16;
          *a1 = v17;
          v16 = v17;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_49;
    }

    v18 = (a1 + 16);
    for (i = a2; i != a3; ++i)
    {
      v19 = *i;
      if (*i < *a1)
      {
        *i = *a1;
        *a1 = v19;
        v20 = *(a1 + 1);
        if (a2 - a1 == 16)
        {
          v21 = (a1 + 8);
          v22 = 1;
          if (v20 >= v19)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v23 = v20 >= *v18;
          if (v20 >= *v18)
          {
            v21 = (a1 + 8);
          }

          else
          {
            v20 = *v18;
            v21 = (a1 + 16);
          }

          if (v23)
          {
            v22 = 1;
          }

          else
          {
            v22 = 2;
          }

          if (v20 >= v19)
          {
LABEL_40:
            v24 = *v21;
            v25 = a1;
            while (1)
            {
              v26 = v21;
              *v25 = v24;
              if (((v3 - 2) >> 1) < v22)
              {
                break;
              }

              v27 = (2 * v22) | 1;
              v21 = &a1[8 * v27];
              v22 = 2 * v22 + 2;
              v24 = *v21;
              if (v22 < v3)
              {
                if (v24 >= v21[1])
                {
                  v22 = v27;
                }

                else
                {
                  v24 = v21[1];
                  ++v21;
                }

                v25 = v26;
                if (v24 < v19)
                {
                  break;
                }
              }

              else
              {
                v22 = v27;
                v25 = v26;
                if (v24 < v19)
                {
                  break;
                }
              }
            }

            *v26 = v19;
          }
        }
      }
    }
  }

LABEL_49:
  if (v3 >= 2)
  {
    do
    {
      v29 = 0;
      v30 = *a1;
      v31 = (v3 - 2) >> 1;
      v32 = a1;
      do
      {
        while (1)
        {
          v36 = &v32[8 * v29];
          v35 = (v36 + 8);
          v37 = (2 * v29) | 1;
          v29 = 2 * v29 + 2;
          if (v29 < v3)
          {
            break;
          }

          v29 = v37;
          *v32 = *v35;
          v32 = v36 + 8;
          if (v37 > v31)
          {
            goto LABEL_61;
          }
        }

        v34 = *(v36 + 2);
        v33 = (v36 + 16);
        if (*(v33 - 1) >= v34)
        {
          v29 = v37;
        }

        else
        {
          v35 = v33;
        }

        *v32 = *v35;
        v32 = v35;
      }

      while (v29 <= v31);
LABEL_61:
      if (v35 == --a2)
      {
        *v35 = v30;
      }

      else
      {
        *v35 = *a2;
        *a2 = v30;
        v38 = (v35 - a1 + 8) >> 3;
        v6 = v38 < 2;
        v39 = v38 - 2;
        if (!v6)
        {
          v40 = v39 >> 1;
          v41 = &a1[8 * v40];
          v42 = *v41;
          v43 = *v35;
          if (*v41 < *v35)
          {
            do
            {
              v44 = v41;
              *v35 = v42;
              if (!v40)
              {
                break;
              }

              v40 = (v40 - 1) >> 1;
              v41 = &a1[8 * v40];
              v42 = *v41;
              v35 = v44;
            }

            while (*v41 < v43);
            *v44 = v43;
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return i;
}

BOOL llvm::function_ref<llvm::LogicalResult ()(mlir::Value,mlir::Value)>::callback_fn<mlir::OperationEquivalence::isEquivalentTo(mlir::Operation *,mlir::Operation *,mlir::OperationEquivalence::Flags)::$_0>(uint64_t **a1, unint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  v4 = *(*a1 + 4);
  if (v4)
  {
    v5 = **a1;
    v6 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
    LODWORD(v6) = -348639895 * ((v7 >> 47) ^ v7);
    v8 = v4 - 1;
    v9 = (v4 - 1) & v6;
    v10 = *(v5 + 16 * v9);
    if (v10 == a2)
    {
      return *(v5 + 16 * v9 + 8) == a3;
    }

    v11 = 1;
    while (v10 != -4096)
    {
      v12 = v9 + v11++;
      v9 = v12 & v8;
      v10 = *(v5 + 16 * v9);
      if (v10 == a2)
      {
        return *(v5 + 16 * v9 + 8) == a3;
      }
    }
  }

  return a3 == 0;
}

uint64_t *llvm::function_ref<void ()(mlir::Value,mlir::Value)>::callback_fn<mlir::OperationEquivalence::isEquivalentTo(mlir::Operation *,mlir::Operation *,mlir::OperationEquivalence::Flags)::$_1>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5 = a2;
  v6 = a3;
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::try_emplace<mlir::Value>(v3, &v5, &v6, v7);
}

_DWORD *OUTLINED_FUNCTION_3_11@<X0>(llvm::SHA1 *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4)
{
  a4 = a2;

  return llvm::SHA1::update(a1, &a4, 8uLL);
}

_DWORD *OUTLINED_FUNCTION_4_10(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = a1;

  return llvm::SHA1::update(v10, &a10, 8uLL);
}

_DWORD *OUTLINED_FUNCTION_5_13@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  a3 = a1;
  v5 = *v3;

  return llvm::SHA1::update(v5, &a3, 8uLL);
}

_WORD *mlir::PatternBenefit::PatternBenefit(_WORD *this, __int16 a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

uint64_t mlir::Pattern::Pattern(uint64_t a1, void *a2, size_t a3, __int16 a4, mlir::StringAttr *a5, uint64_t a6, unint64_t a7)
{
  mlir::OperationName::OperationName(&v13, a2, a3, a5);
  return mlir::Pattern::Pattern(a1, v13, 1, a6, a7, a4, a5);
}

{
  mlir::OperationName::OperationName(&v13, a2, a3, a5);
  return mlir::Pattern::Pattern(a1, v13, 1, a6, a7, a4, a5);
}

uint64_t mlir::Pattern::Pattern(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, __int16 a6, mlir::StringAttr *a7)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a6;
  *(a1 + 16) = a7 & 0xFFFFFFFFFFFFFFFBLL;
  *(a1 + 24) = a1 + 40;
  *(a1 + 32) = 0x200000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a1 + 88;
  *(a1 + 80) = 0;
  if (a5)
  {
    v9 = a4;
    if (a5 >= 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = a4 + 16 * a5;
    do
    {
      mlir::OperationName::OperationName(&v13, *v9, *(v9 + 8), a7);
      v11 = *(a1 + 32);
      if (v11 >= *(a1 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*(a1 + 24) + 8 * v11) = v13;
      ++*(a1 + 32);
      v9 += 16;
    }

    while (v9 != v10);
  }

  return a1;
}

{
  return mlir::Pattern::Pattern(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t mlir::Pattern::Pattern(uint64_t a1, __int16 a2, mlir::StringAttr *a3, uint64_t a4, unint64_t a5)
{
  return mlir::Pattern::Pattern(a1, 0, 0, a4, a5, a2, a3);
}

{
  return mlir::Pattern::Pattern(a1, 0, 0, a4, a5, a2, a3);
}

uint64_t mlir::Pattern::Pattern(uint64_t a1, uint64_t a2, __int16 a3, mlir::StringAttr *a4, uint64_t a5, unint64_t a6)
{
  return mlir::Pattern::Pattern(a1, a2, 2, a5, a6, a3, a4);
}

{
  return mlir::Pattern::Pattern(a1, a2, 2, a5, a6, a3, a4);
}

{
  return mlir::Pattern::Pattern(a1, a2, 3, a5, a6, a3, a4);
}

{
  return mlir::Pattern::Pattern(a1, a2, 3, a5, a6, a3, a4);
}

uint64_t *mlir::RewriterBase::replaceAllOpUsesWith(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v7 = a1[2];
  if (v7 && v7[2] == 1)
  {
    v8 = a2;
    (*(*v7 + 56))(v7, a2, a3, a4);
    a2 = v8;
  }

  v9 = *(a2 + 36);
  if (v9)
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  mlir::ValueRange::ValueRange(v12, v10, v9);
  return mlir::RewriterBase::replaceAllUsesWith(a1, v12[0], v12[1], a3, a4);
}

uint64_t *mlir::RewriterBase::replaceAllOpUsesWith(mlir::RewriterBase *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = *(this + 2);
  if (v5 && v5[2] == 1)
  {
    v6 = a2;
    (*(*v5 + 48))(v5, a2, a3);
    a2 = v6;
  }

  v7 = *(a2 + 9);
  if (v7)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  mlir::ValueRange::ValueRange(v13, v8, v7);
  v9 = *(a3 + 9);
  if (v9)
  {
    v10 = a3 - 16;
  }

  else
  {
    v10 = 0;
  }

  mlir::ValueRange::ValueRange(v12, v10, v9);
  return mlir::RewriterBase::replaceAllUsesWith(this, v13[0], v13[1], v12[0], v12[1]);
}

uint64_t mlir::RewriterBase::replaceOp(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v8 = a1[2];
  if (v8 && v8[2] == 1)
  {
    (*(*v8 + 56))(v8, a2, a3, a4);
  }

  v9 = *(a2 + 36);
  if (v9)
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  mlir::ValueRange::ValueRange(v12, v10, v9);
  mlir::RewriterBase::replaceAllUsesWith(a1, v12[0], v12[1], a3, a4);
  return (*(*a1 + 16))(a1, a2);
}

uint64_t mlir::RewriterBase::replaceOp(mlir::RewriterBase *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (*(a3 + 9))
  {
    v5 = a3 - 16;
  }

  else
  {
    v5 = 0;
  }

  mlir::ValueRange::ValueRange(&v12, v5, *(a3 + 9));
  v6 = v12;
  v7 = v13;
  v8 = *(this + 2);
  if (v8 && v8[2] == 1)
  {
    (*(*v8 + 56))(v8, a2, v12, v13);
  }

  v9 = *(a2 + 9);
  if (v9)
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  mlir::ValueRange::ValueRange(v14, v10, v9);
  mlir::RewriterBase::replaceAllUsesWith(this, v14[0], v14[1], v6, v7);
  return (*(*this + 16))(this, a2);
}

void mlir::RewriterBase::eraseOp(mlir::RewriterBase *this, mlir::Operation *a2)
{
  v2 = *(this + 2);
  if (v2 && *(v2 + 8) == 1)
  {
    operator new();
  }

  mlir::Operation::erase(a2, a2);
}

void mlir::RewriterBase::eraseBlock(mlir::RewriterBase *this, mlir::Block *a2)
{
  v5 = a2 + 32;
  v4 = *(a2 + 4);
  if (v4 != (a2 + 32))
  {
    do
    {
      v6 = *v4;
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      (*(*this + 16))(this, v7);
      v4 = v6;
    }

    while (v6 != v5);
  }

  v8 = *(this + 2);
  if (v8 && v8[2] == 1)
  {
    (*(*v8 + 32))(v8, a2);
  }

  mlir::Block::erase(a2);
}

_DWORD *mlir::RewriterBase::finalizeOpModification(mlir::RewriterBase *this, mlir::Operation *a2)
{
  result = *(this + 2);
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 40))(result, a2);
    }
  }

  return result;
}

const void **mlir::RewriterBase::replaceAllUsesExcept(const void **result, uint64_t **a2, uint64_t *a3, const void ***this)
{
  v4 = *a2;
  if (*a2)
  {
    v7 = result;
    while (1)
    {
      v8 = *v4;
      v9 = v4[2];
      result = *this;
      v10 = this[1];
      if (v10 == *this)
      {
        break;
      }

      result = llvm::SmallPtrSetImplBase::doFind(this, v9);
      v11 = *this;
      v12 = this[1];
      if (result)
      {
        if (v12 == v11)
        {
          v13 = 20;
        }

        else
        {
          v13 = 16;
        }

        if (result == &v12[*(this + v13)])
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v12 == v11)
        {
          v16 = 20;
        }

        else
        {
          v16 = 16;
        }

        result = &v12[*(this + v16)];
        if (v12 == v11)
        {
          v17 = 20;
        }

        else
        {
          v17 = 16;
        }

        if (result == &v12[*(this + v17)])
        {
          goto LABEL_26;
        }
      }

LABEL_4:
      v4 = v8;
      if (!v8)
      {
        return result;
      }
    }

    v14 = *(this + 5);
    if (v14)
    {
      v15 = 8 * v14;
      while (*result != v9)
      {
        ++result;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      result = &v10[v14];
    }

    if (result != &this[1][*(this + 5)])
    {
      goto LABEL_4;
    }

LABEL_26:
    v18 = v4[2];
    (*(*v7 + 5))(v7, v18);
    v19 = v4[1];
    if (v19)
    {
      v20 = *v4;
      *v19 = *v4;
      if (v20)
      {
        v20[1] = v19;
      }
    }

    v4[3] = a3;
    v21 = *a3;
    *v4 = *a3;
    v4[1] = a3;
    if (v21)
    {
      *(v21 + 8) = v4;
    }

    *a3 = v4;
    result = (*(*v7 + 6))(v7, v18);
    goto LABEL_4;
  }

  return result;
}

uint64_t mlir::RewriterBase::replaceUsesWithIf(uint64_t result, uint64_t **a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t *), uint64_t a5, char *a6)
{
  v7 = *a2;
  if (*a2)
  {
    v11 = result;
    v12 = 1;
    do
    {
      v13 = *v7;
      result = a4(a5, v7);
      v14 = result;
      if (result)
      {
        v15 = v7[2];
        (*(*v11 + 40))(v11, v15);
        v16 = v7[1];
        if (v16)
        {
          v17 = *v7;
          *v16 = *v7;
          if (v17)
          {
            *(v17 + 8) = v16;
          }
        }

        v7[3] = a3;
        v18 = *a3;
        *v7 = *a3;
        v7[1] = a3;
        if (v18)
        {
          *(v18 + 8) = v7;
        }

        *a3 = v7;
        result = (*(*v11 + 48))(v11, v15);
      }

      v12 &= v14;
      v7 = v13;
    }

    while (v13);
  }

  else
  {
    v12 = 1;
  }

  if (a6)
  {
    *a6 = v12;
  }

  return result;
}

uint64_t *mlir::RewriterBase::replaceUsesWithIf(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t *), uint64_t a7, char *a8)
{
  v29 = *MEMORY[0x277D85DE8];
  v25 = a2;
  v26 = 0;
  v27 = a4;
  v28 = 0;
  if (a3)
  {
    v10 = result;
    v11 = 0;
    v12 = 1;
    do
    {
      v14 = mlir::ValueRange::dereference_iterator(&v25, v11);
      result = mlir::ValueRange::dereference_iterator(&v27, v28);
      v15 = *v14;
      if (v15)
      {
        v16 = result;
        v13 = 1;
        do
        {
          v17 = *v15;
          result = a6(a7, v15);
          v18 = result;
          if (result)
          {
            v19 = v15[2];
            (*(*v10 + 40))(v10, v19);
            v20 = v15[1];
            if (v20)
            {
              v21 = *v15;
              *v20 = *v15;
              if (v21)
              {
                *(v21 + 8) = v20;
              }
            }

            v15[3] = v16;
            v22 = *v16;
            *v15 = *v16;
            v15[1] = v16;
            if (v22)
            {
              *(v22 + 8) = v15;
            }

            *v16 = v15;
            result = (*(*v10 + 48))(v10, v19);
          }

          v13 &= v18;
          v15 = v17;
        }

        while (v17);
      }

      else
      {
        v13 = 1;
      }

      v12 &= v13;
      v11 = v26 + 1;
      v26 = v11;
      ++v28;
    }

    while (v11 != a3);
  }

  else
  {
    v12 = 1;
  }

  if (a8)
  {
    *a8 = v12;
  }

  return result;
}

uint64_t mlir::RewriterBase::inlineBlockBefore(void *a1, void *a2, mlir::Block *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = a2[6];
  v10 = a2[7];
  v36 = v9;
  v37 = a5;
  v38 = 0;
  if (v9 != v10 && a6 != 0)
  {
    v20 = 0;
    do
    {
      v22 = mlir::ValueRange::dereference_iterator(&v37, v20);
      v23 = **v9;
      if (v23)
      {
        v24 = v22;
        do
        {
          v25 = *v23;
          v26 = v23[2];
          (*(*a1 + 40))(a1, v26);
          v27 = v23[1];
          if (v27)
          {
            v28 = *v23;
            *v27 = *v23;
            if (v28)
            {
              v28[1] = v27;
            }
          }

          v23[3] = v24;
          v29 = *v24;
          *v23 = *v24;
          v23[1] = v24;
          if (v29)
          {
            *(v29 + 8) = v23;
          }

          *v24 = v23;
          (*(*a1 + 48))(a1, v26);
          v23 = v25;
        }

        while (v25);
      }

      v9 = v36 + 1;
      v20 = v38 + 1;
      v36 = v9;
      ++v38;
    }

    while (v9 != v10 && v20 != a6);
  }

  v13 = a2 + 4;
  v12 = a2[4];
  if (a1[2])
  {
    if (v12 != a2 + 4)
    {
      do
      {
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        v15 = v14;
        v17 = v14[1];
        v16 = v14[2];
        mlir::Operation::moveBefore(v14, a3, a4);
        v18 = a1[2];
        if (v18)
        {
          (*(*v18 + 16))(v18, v15, v16, v17);
        }
      }

      while (*v13 != v13);
    }
  }

  else if (v12 != a2 + 4 && v13 != a4)
  {
    v30 = a2[5];
    llvm::ilist_traits<mlir::Operation>::transferNodesFromList(a3 + 32, (a2 + 4), v30, (a2 + 4));
    if (v30 != v13)
    {
      v31 = *v13;
      v32 = *v30;
      *(v32 + 8) = v13;
      *v13 = v32;
      v33 = *a4;
      *(v31 + 8) = a4;
      *v30 = v33;
      *(v33 + 8) = v30;
      *a4 = v31;
    }
  }

  return (*(*a1 + 24))(a1, a2, a3, a4, a5, a6);
}

uint64_t mlir::RewriterBase::moveOpBefore(uint64_t a1, uint64_t *a2, mlir::Block *this, uint64_t *a4)
{
  mlir::Operation::moveBefore(a2, this, a4);
  result = *(a1 + 16);
  if (result)
  {
    v6 = *(*result + 16);

    return v6();
  }

  return result;
}

void mlir::RewriterBase::splitBlock(uint64_t a1, uint64_t **this, mlir::Block *a3)
{
  v7[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = a1 + 24;
    Parent = mlir::Block::getParent(this);
    v6 = this[2];
    mlir::TypeRange::TypeRange(v7, 0, 0);
    mlir::OpBuilder::createBlock((v3 - 16), Parent, v6, v7[0], v7[1], 0, 0);
  }

  mlir::Block::splitBlock(this, a3);
}

void *mlir::RewriterBase::inlineRegionBefore(void *result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (result[2])
  {
    if (*a2 != a2)
    {
      v7 = result;
      do
      {
        v8 = a2[1];
        if (v8)
        {
          v9 = (v8 - 8);
        }

        else
        {
          v9 = 0;
        }

        Parent = mlir::Block::getParent(v9);
        v11 = *(v9 + 2);
        mlir::Block::moveBefore(v9, a3, a4);
        result = v7[2];
        if (result)
        {
          result = (*(*result + 24))(result, v9, Parent, v11);
        }
      }

      while (*a2 != a2);
    }
  }

  else if (*a2 != a2 && a2 != a4)
  {
    v12 = a2[1];
    result = llvm::ilist_traits<mlir::Block>::transferNodesFromList(a3, a2, v12, a2);
    if (v12 != a2)
    {
      v13 = *a2;
      v14 = *v12;
      *(v14 + 8) = a2;
      *a2 = v14;
      v15 = *a4;
      v13[1] = a4;
      *v12 = v15;
      *(v15 + 8) = v12;
      *a4 = v13;
    }
  }

  return result;
}

uint64_t mlir::RewriterBase::moveBlockBefore(uint64_t a1, mlir::Block *this, uint64_t a3, uint64_t *a4)
{
  mlir::Block::getParent(this);
  mlir::Block::moveBefore(this, a3, a4);
  result = *(a1 + 16);
  if (result)
  {
    v9 = *(*result + 24);

    return v9();
  }

  return result;
}

void *mlir::RewriterBase::inlineRegionBefore(mlir::RewriterBase *this, mlir::Region *a2, mlir::Block *a3)
{
  Parent = mlir::Block::getParent(a3);

  return mlir::RewriterBase::inlineRegionBefore(this, a2, Parent, a3 + 1);
}

uint64_t mlir::RewriterBase::moveBlockBefore(mlir::RewriterBase *this, mlir::Block *a2, mlir::Block *a3)
{
  Parent = mlir::Block::getParent(a3);
  mlir::Block::getParent(a2);
  mlir::Block::moveBefore(a2, Parent, a3 + 1);
  result = *(this + 2);
  if (result)
  {
    v8 = *(*result + 24);

    return v8();
  }

  return result;
}

uint64_t mlir::RewriterBase::moveOpBefore(mlir::RewriterBase *this, mlir::Operation *a2, mlir::Block **a3)
{
  mlir::Operation::moveBefore(a2, a3[2], a3);
  result = *(this + 2);
  if (result)
  {
    v5 = *(*result + 16);

    return v5();
  }

  return result;
}

uint64_t mlir::RewriterBase::moveOpAfter(mlir::RewriterBase *this, mlir::Operation *a2, mlir::Operation *a3)
{
  mlir::Operation::moveBefore(a2, *(a3 + 2), *(a3 + 1));
  result = *(this + 2);
  if (result)
  {
    v5 = *(*result + 16);

    return v5();
  }

  return result;
}

uint64_t mlir::RewriterBase::moveOpAfter(uint64_t a1, uint64_t *a2, mlir::Block *this, uint64_t a4)
{
  mlir::Operation::moveBefore(a2, this, *(a4 + 8));
  result = *(a1 + 16);
  if (result)
  {
    v6 = *(*result + 16);

    return v6();
  }

  return result;
}

void mlir::RewritePattern::~RewritePattern(mlir::RewritePattern *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RewritePattern::matchAndRewrite(mlir::RewritePattern *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  if (((*(*this + 24))(this) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 16))(this, a2, a3);
  return 1;
}

__n128 std::__function::__func<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0,std::allocator<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0>,void ()(mlir::Operation *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689D2F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0,std::allocator<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0>,void ()(mlir::Operation *)>::operator()(uint64_t a1, unsigned int **a2)
{
  v109[40] = *MEMORY[0x277D85DE8];
  v74 = *a2;
  v3 = (*a2)[11];
  if ((v3 & 0x7FFFFF) != 0)
  {
    v4 = *(a1 + 16);
    v75 = ((&v74[4 * ((v3 >> 23) & 1) + 17] + ((v3 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v74[10];
    v5 = (v75 + 24 * (v3 & 0x7FFFFF));
    while (1)
    {
      v77 = v5;
      v6 = *(v5 - 3);
      v5 -= 3;
      if (v6 != v5)
      {
        break;
      }

LABEL_3:
      if (v5 == v75)
      {
        goto LABEL_145;
      }
    }

    v76 = v5;
LABEL_7:
    v91 = v93;
    v92 = 0x600000000;
    v78 = v82;
    v79 = v82;
    v81 = 0;
    v80 = 0x100000004;
    v82[0] = 0;
    v7 = *(v77 - 2);
    v106 = &v78;
    __src = v109;
    v108 = 0x800000000;
    if (!v7)
    {
      v14 = 0;
      v98 = &v78;
      __dst = v101;
      v100 = 0x800000000;
      goto LABEL_31;
    }

    v8 = (v7 - 8);
    HIDWORD(v80) = 2;
    v82[1] = v7 - 8;
    mlir::SuccessorRange::SuccessorRange(&v102, (v7 - 8));
    v9 = v102;
    mlir::SuccessorRange::SuccessorRange(&v102, v8);
    v10 = v102;
    v11 = v103;
    v12 = v108;
    if (v108 >= HIDWORD(v108))
    {
      v102 = v8;
      v103 = v9;
      goto LABEL_141;
    }

    v13 = __src + 40 * v108;
    *v13 = v8;
    v13[1] = v9;
LABEL_12:
    v13[2] = 0;
    v13[3] = v10;
    v13[4] = v11;
    v14 = v108 + 1;
    LODWORD(v108) = v108 + 1;
    while (1)
    {
      while (1)
      {
        v15 = __src;
        v16 = __src + 40 * v14;
        v17 = *(v16 - 3);
        if (v17 == *(v16 - 1))
        {
          v98 = v106;
          __dst = v101;
          v100 = 0x800000000;
          if (v14)
          {
            if (v14 >= 9)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            memcpy(v101, __src, 40 * v14);
            LODWORD(v100) = v14;
            v15 = __src;
          }

          if (v15 != v109)
          {
            free(v15);
            v14 = v100;
          }

LABEL_31:
          v94 = &v78;
          v95 = v97;
          v96 = 0x800000000;
          v26 = v98;
          v106 = v98;
          __src = v109;
          v108 = 0x800000000;
          if (!v14)
          {
            v27 = 0;
            v102 = &v78;
            v103 = v105;
            v104 = 0x800000000;
            v83 = v98;
            v84 = v86;
            v85 = 0x800000000;
            goto LABEL_47;
          }

          if (__dst != v101)
          {
            __src = __dst;
            v108 = __PAIR64__(HIDWORD(v100), v14);
            __dst = v101;
            v100 = 0;
            v102 = &v78;
            v103 = v105;
            v104 = 0x800000000;
            goto LABEL_34;
          }

          if (v14 >= 9)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memcpy(v109, __dst, 40 * v14);
          LODWORD(v108) = v14;
          v27 = v96;
          LODWORD(v100) = 0;
          v102 = v94;
          v103 = v105;
          v104 = 0x800000000;
          if (!v96)
          {
            v26 = v106;
LABEL_34:
            v27 = 0;
            v83 = v26;
            v84 = v86;
            v85 = 0x800000000;
LABEL_35:
            if (__src == v109)
            {
              if (v14 >= 9)
              {
                LODWORD(v85) = 0;
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              memcpy(v86, __src, 40 * v14);
              LODWORD(v85) = v14;
              v27 = v104;
            }

            else
            {
              v84 = __src;
              v85 = __PAIR64__(HIDWORD(v108), v14);
              __src = v109;
              HIDWORD(v108) = 0;
            }

            LODWORD(v108) = 0;
            goto LABEL_47;
          }

          if (v95 != v97)
          {
            v103 = v95;
            v104 = v96;
            v95 = v97;
            v96 = 0;
            v83 = v106;
            v84 = v86;
            v85 = 0x800000000;
            goto LABEL_35;
          }

          if (v96 >= 9uLL)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memcpy(v105, v95, 40 * v96);
          LODWORD(v104) = v27;
          v14 = v108;
          LODWORD(v96) = 0;
          v83 = v106;
          v84 = v86;
          v85 = 0x800000000;
          if (v108)
          {
            goto LABEL_35;
          }

LABEL_47:
          v28 = v103;
          v87 = v102;
          v88 = v90;
          v89 = 0x800000000;
          if (v27)
          {
            if (v103 == v105)
            {
              if (v27 >= 9)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              memcpy(v90, v103, 40 * v27);
              v28 = v103;
              LODWORD(v89) = v27;
            }

            else
            {
              v88 = v103;
              v89 = __PAIR64__(HIDWORD(v104), v27);
              v103 = v105;
              HIDWORD(v104) = 0;
              v28 = v105;
            }

            LODWORD(v104) = 0;
          }

          if (v28 != v105)
          {
            free(v28);
          }

          if (__src != v109)
          {
            free(__src);
          }

          if (v95 != v97)
          {
            free(v95);
          }

          if (__dst != v101)
          {
            free(__dst);
          }

          v106 = v83;
          __src = v109;
          v108 = 0x800000000;
          v29 = v85;
          if (v85)
          {
            if (v85 >= 9)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            memcpy(v109, v84, 40 * v85);
            LODWORD(v108) = v29;
          }

          v102 = v87;
          v103 = v105;
          v104 = 0x800000000;
          v30 = v89;
          if (v89)
          {
            if (v89 >= 9)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            memcpy(v105, v88, 40 * v89);
            LODWORD(v104) = v30;
            v29 = v108;
          }

          while (2)
          {
            v31 = __src;
            if (v29 != v30)
            {
LABEL_82:
              v35 = *(__src + 5 * v29 - 5);
              v36 = *(v35 + 32);
              if (v36 != (v35 + 32))
              {
                do
                {
                  v37 = *v36;
                  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
                  v38 = *(a1 + 8);
                  v98 = v39;
                  v40 = *(v38 + 24);
                  if (!v40)
                  {
                    std::__throw_bad_function_call[abi:nn200100]();
                  }

                  (*(*v40 + 48))(v40, &v98);
                  v36 = v37;
                }

                while (v37 != (v35 + 32));
              }

              if (v92 >= HIDWORD(v92))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(v91 + v92) = v35;
              LODWORD(v92) = v92 + 1;
              v29 = v108 - 1;
              LODWORD(v108) = v108 - 1;
              if (!v108)
              {
LABEL_70:
                v30 = v104;
                continue;
              }

              while (1)
              {
LABEL_89:
                v41 = __src + 40 * v29;
                v42 = *(v41 - 3);
                if (v42 == *(v41 - 1))
                {
                  goto LABEL_70;
                }

                v43 = *(v41 - 4);
                *(v41 - 3) = v42 + 1;
                v44 = *(v43 + 32 * v42 + 24);
                v45 = *v106;
                if (*(v106 + 1) != *v106)
                {
                  goto LABEL_91;
                }

                v47 = *(v106 + 5);
                if (!v47)
                {
                  break;
                }

                v48 = 8 * v47;
                v49 = *v106;
                while (*v49 != v44)
                {
                  ++v49;
                  v48 -= 8;
                  if (!v48)
                  {
                    goto LABEL_97;
                  }
                }
              }

LABEL_97:
              if (v47 >= *(v106 + 4))
              {
LABEL_91:
                llvm::SmallPtrSetImplBase::insert_imp_big(v106, v44);
                if ((v46 & 1) == 0)
                {
                  v29 = v108;
                  goto LABEL_89;
                }
              }

              else
              {
                *(v106 + 5) = v47 + 1;
                v45[v47] = v44;
              }

              mlir::SuccessorRange::SuccessorRange(&v98, v44);
              v50 = v98;
              mlir::SuccessorRange::SuccessorRange(&v98, v44);
              v51 = v98;
              v52 = __dst;
              if (v108 >= HIDWORD(v108))
              {
                v98 = v44;
                __dst = v50;
                v100 = 0;
                v101[0] = v51;
                v101[1] = v52;
                if (__src > &v98 || __src + 40 * v108 <= &v98)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v53 = (__src + 40 * v108);
              *v53 = v44;
              v53[1] = v50;
              v53[2] = 0;
              v53[3] = v51;
              v53[4] = v52;
              v29 = v108 + 1;
              LODWORD(v108) = v108 + 1;
              goto LABEL_89;
            }

            break;
          }

          if (v30)
          {
            v32 = v103;
            v33 = __src;
            do
            {
              v34 = *v33 == *v32 && v33[2] == v32[2];
              if (!v34 || v33[4] != v32[4])
              {
                goto LABEL_82;
              }

              v33 += 5;
              v32 += 5;
            }

            while (v33 != (__src + 40 * v30));
          }

          if (v103 != v105)
          {
            free(v103);
            v31 = __src;
          }

          if (v31 != v109)
          {
            free(v31);
          }

          if (v88 != v90)
          {
            free(v88);
          }

          if (v84 != v86)
          {
            free(v84);
          }

          if (v92)
          {
            v54 = v91;
            v55 = v91 + 8 * v92;
            do
            {
              v56 = *v54;
              v57 = *(*v54 + 48);
              v58 = *(*v54 + 56);
              while (v57 != v58)
              {
                v59 = *v57;
                while (1)
                {
                  v60 = *v59;
                  if (!*v59)
                  {
                    break;
                  }

                  v61 = v60[1];
                  if (v61)
                  {
                    v62 = *v60;
                    *v61 = *v60;
                    if (v62)
                    {
                      *(v62 + 8) = v61;
                    }
                  }

                  *v60 = 0;
                  v60[1] = 0;
                  v60[3] = 0;
                }

                ++v57;
              }

              while (1)
              {
                v63 = *v56;
                if (!*v56)
                {
                  break;
                }

                v64 = v63[1];
                if (v64)
                {
                  v65 = *v63;
                  *v64 = *v63;
                  if (v65)
                  {
                    *(v65 + 8) = v64;
                  }
                }

                *v63 = 0;
                v63[1] = 0;
                v63[3] = 0;
              }

              (*(*v4 + 24))(v4);
              v54 += 8;
            }

            while (v54 != v55);
          }

          if (v79 != v78)
          {
            free(v79);
          }

          if (v91 != v93)
          {
            free(v91);
          }

          v5 = v76;
          if (*v76 == v76)
          {
            goto LABEL_3;
          }

          goto LABEL_7;
        }

        v18 = *(v16 - 4);
        *(v16 - 3) = v17 + 1;
        v19 = *(v18 + 32 * v17 + 24);
        v20 = *v106;
        if (*(v106 + 1) == *v106)
        {
          break;
        }

LABEL_15:
        llvm::SmallPtrSetImplBase::insert_imp_big(v106, v19);
        if (v21)
        {
          goto LABEL_23;
        }

        v14 = v108;
      }

      v22 = *(v106 + 5);
      if (!v22)
      {
LABEL_21:
        if (v22 < *(v106 + 4))
        {
          *(v106 + 5) = v22 + 1;
          v20[v22] = v19;
LABEL_23:
          mlir::SuccessorRange::SuccessorRange(&v102, v19);
          v25 = v102;
          mlir::SuccessorRange::SuccessorRange(&v102, v19);
          v10 = v102;
          v11 = v103;
          v12 = v108;
          if (v108 >= HIDWORD(v108))
          {
            v102 = v19;
            v103 = v25;
LABEL_141:
            v104 = 0;
            v105[0] = v10;
            v105[1] = v11;
            if (__src <= &v102 && __src + 40 * v12 > &v102)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v13 = __src + 40 * v108;
          *v13 = v19;
          v13[1] = v25;
          goto LABEL_12;
        }

        goto LABEL_15;
      }

      v23 = 8 * v22;
      v24 = *v106;
      while (*v24 != v19)
      {
        ++v24;
        v23 -= 8;
        if (!v23)
        {
          goto LABEL_21;
        }
      }
    }
  }

LABEL_145:
  (*(****(a1 + 24) + 64))(***(a1 + 24), v74);
  v67 = v74[9];
  if (v67)
  {
    v68 = (v74 - 4);
  }

  else
  {
    v68 = 0;
  }

  if (v67)
  {
    for (i = 0; i != v67; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v68, i);
      while (1)
      {
        v71 = *NextResultAtOffset;
        if (!*NextResultAtOffset)
        {
          break;
        }

        v72 = v71[1];
        if (v72)
        {
          v73 = *v71;
          *v72 = *v71;
          if (v73)
          {
            *(v73 + 8) = v72;
          }
        }

        *v71 = 0;
        v71[1] = 0;
        v71[3] = 0;
      }
    }
  }

  mlir::Operation::erase(v74, v66);
}

uint64_t std::__function::__func<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0,std::allocator<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0>,void ()(mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir12RewriterBase7eraseOpEPNS_9OperationEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir12RewriterBase7eraseOpEPNS_9OperationEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir12RewriterBase7eraseOpEPNS_9OperationEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir12RewriterBase7eraseOpEPNS_9OperationEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *mlir::Region::Region(void *this, mlir::Operation *a2)
{
  *this = this;
  this[1] = this;
  this[2] = a2;
  return this;
}

{
  *this = this;
  this[1] = this;
  this[2] = a2;
  return this;
}

void mlir::Region::~Region(mlir::Region *this)
{
  v2 = *(this + 1);
  if (v2 != this)
  {
    do
    {
      if (v2)
      {
        v3 = v2 - 8;
      }

      else
      {
        v3 = 0;
      }

      mlir::Block::dropAllReferences(v3);
      v2 = *(v2 + 1);
    }

    while (v2 != this);
    v2 = *(this + 1);
  }

  if (v2 != this)
  {
    do
    {
      v4 = *(v2 + 1);
      if (v2)
      {
        v5 = (v2 - 8);
      }

      else
      {
        v5 = 0;
      }

      v6 = v5[2];
      v5[3] &= 7uLL;
      v7 = v5[1];
      *v6 = v7;
      *(v7 + 8) = v6;
      v5[1] = 0;
      v5[2] = 0;
      mlir::Block::~Block(v2 - 1);
      MEMORY[0x259C63180]();
      v2 = v4;
    }

    while (v4 != this);
  }
}

{
  v2 = *(this + 1);
  if (v2 != this)
  {
    do
    {
      if (v2)
      {
        v3 = v2 - 8;
      }

      else
      {
        v3 = 0;
      }

      mlir::Block::dropAllReferences(v3);
      v2 = *(v2 + 1);
    }

    while (v2 != this);
    v2 = *(this + 1);
  }

  if (v2 != this)
  {
    do
    {
      v4 = *(v2 + 1);
      if (v2)
      {
        v5 = (v2 - 8);
      }

      else
      {
        v5 = 0;
      }

      v6 = v5[2];
      v5[3] &= 7uLL;
      v7 = v5[1];
      *v6 = v7;
      *(v7 + 8) = v6;
      v5[1] = 0;
      v5[2] = 0;
      mlir::Block::~Block(v2 - 1);
      MEMORY[0x259C63180]();
      v2 = v4;
    }

    while (v4 != this);
  }
}

uint64_t mlir::Region::dropAllReferences(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != this)
  {
    v2 = this;
    do
    {
      if (v1)
      {
        v3 = v1 - 8;
      }

      else
      {
        v3 = 0;
      }

      this = mlir::Block::dropAllReferences(v3);
      v1 = *(v1 + 8);
    }

    while (v1 != v2);
  }

  return this;
}

uint64_t mlir::Region::getArgumentTypes(mlir::Region *this)
{
  if (*this == this)
  {
    return 0;
  }

  v1 = *(this + 1);
  if (v1)
  {
    v2 = v1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return *(v2 + 48);
}

uint64_t mlir::Region::addArguments(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (v5 - 8);
  }

  else
  {
    v6 = 0;
  }

  return mlir::Block::addArguments(v6, a2, a3, a4, a5);
}

mlir::Block *mlir::Region::getParentRegion(mlir::Region *this)
{
  result = *(*(this + 2) + 16);
  if (result)
  {
    return mlir::Block::getParent(result);
  }

  return result;
}

unint64_t mlir::Region::isProperAncestor(mlir::Region *this, mlir::Region *a2)
{
  if (this == a2)
  {
    return 0;
  }

  while (1)
  {
    result = *(*(a2 + 2) + 16);
    if (!result)
    {
      break;
    }

    result = mlir::Block::getParent(result);
    if (!result)
    {
      break;
    }

    a2 = result;
    if (result == this)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::Region::getRegionNumber(unint64_t this)
{
  v1 = *(this + 16);
  v2 = *(v1 + 44);
  if ((v2 & 0x7FFFFF) != 0)
  {
    return -1431655765 * ((this - (((v1 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40))) >> 3);
  }

  else
  {
    return -1431655765 * (this >> 3);
  }
}

void mlir::Region::cloneInto(mlir::Operation::CloneOptions **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v94[6] = *MEMORY[0x277D85DE8];
  if (*a1 == a1)
  {
    return;
  }

  v5 = a1;
  v6 = a1[1];
  if (v6 != a1)
  {
    operator new();
  }

  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a4 + 10);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = a4[3];
  v10 = ((v7 >> 4) ^ (v7 >> 9)) & (v8 - 1);
  v11 = *(v9 + 16 * v10);
  if (v11 != v7)
  {
    v81 = 1;
    while (v11 != -4096)
    {
      v82 = v10 + v81++;
      v10 = v82 & (v8 - 1);
      v11 = *(v9 + 16 * v10);
      if (v11 == v7)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_10;
  }

LABEL_9:
  if (v10 == v8)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_12;
  }

  v12 = *(v9 + 16 * v10 + 8);
LABEL_12:
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  LOBYTE(v92) = mlir::Operation::CloneOptions::all(a1);
  v14 = mlir::Operation::CloneOptions::cloneRegions(&v92, 0);
  v15 = mlir::Operation::CloneOptions::cloneOperands(v14, 0);
  v16 = *(v5 + 1);
  if (v16 != v5 && v13 != a3)
  {
    v18 = *v15;
    v19 = v13;
    do
    {
      v21 = v16 - 8;
      v86 = v16;
      if (!v16)
      {
        v21 = 0;
      }

      v22 = v21 + 32;
      v23 = *(v21 + 5);
      if (v23 != v21 + 32)
      {
        v24 = v19 - 1;
        if (!v19)
        {
          v24 = 0;
        }

        v25 = v24 + 4;
        do
        {
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
          v27 = mlir::Operation::clone(v26, a4, v18);
          llvm::ilist_traits<mlir::Operation>::addNodeToList(v25, v27);
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
          v28 = *v25;
          *v29 = *v25;
          v29[1] = v25;
          *(v28 + 8) = v29;
          *v25 = v29;
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
          v23 = *(v23 + 8);
        }

        while (v23 != v22);
      }

      v19 = v19[1];
      v16 = *(v86 + 1);
      v5 = a1;
    }

    while (v16 != a1 && v19 != a3);
    v16 = a1[1];
  }

  v92 = v94;
  v93 = 0x600000000;
  if (v16 != v5 && v13 != a3)
  {
    while (1)
    {
      v31 = v16 - 8;
      v87 = v16;
      if (!v16)
      {
        v31 = 0;
      }

      v32 = v13 - 1;
      v83 = v13;
      if (!v13)
      {
        v32 = 0;
      }

      v33 = v32[5];
      v34 = *(v31 + 5);
      v88 = v32 + 4;
      v89 = v31 + 32;
      if (v34 != v31 + 32 && v33 != v32 + 4)
      {
        break;
      }

LABEL_36:
      v13 = v83[1];
      v16 = *(v87 + 1);
      if (v16 == a1 || v13 == a3)
      {
        if (v92 != v94)
        {
          free(v92);
        }

        return;
      }
    }

    while (1)
    {
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      v38 = v37;
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      v40 = v39;
      v41 = *(v38 + 44);
      if ((v41 & 0x800000) != 0)
      {
        v42 = *(v38 + 68);
      }

      else
      {
        v42 = 0;
      }

      if (v93 != v42)
      {
        if (v93 <= v42)
        {
          if (HIDWORD(v93) < v42)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v42 != v93)
          {
            v43 = v42;
            bzero(v92 + 8 * v93, 8 * (v42 - v93));
            v42 = v43;
          }
        }

        LODWORD(v93) = v42;
        v41 = *(v38 + 44);
      }

      if ((v41 & 0x800000) != 0)
      {
        v44 = *(v38 + 68);
        v45 = v92;
        if (v44)
        {
          v46 = *(v38 + 72);
          v47 = *(a4 + 4);
          if (v47)
          {
            v48 = 0;
            v49 = *a4;
            v50 = v47 - 1;
            v51 = v92;
            do
            {
              v52 = *(v46 + 32 * v48 + 24);
              v53 = 0x9DDFEA08EB382D69 * ((8 * v52 - 0xAE502812AA7333) ^ HIDWORD(v52));
              v54 = 0x9DDFEA08EB382D69 * (HIDWORD(v52) ^ (v53 >> 47) ^ v53);
              v55 = (-348639895 * ((v54 >> 47) ^ v54)) & v50;
              v56 = *(v49 + 16 * v55);
              if (v56 == v52)
              {
LABEL_69:
                if (v55 != v47)
                {
                  v52 = *(v49 + 16 * v55 + 8);
                }
              }

              else
              {
                v57 = 1;
                while (v56 != -4096)
                {
                  v58 = v55 + v57++;
                  v55 = v58 & v50;
                  v56 = *(v49 + 16 * v55);
                  if (v56 == v52)
                  {
                    goto LABEL_69;
                  }
                }
              }

              *v51++ = v52;
              ++v48;
            }

            while (v48 != v44);
          }

          else
          {
            if (v44 >= 5 && (v92 >= v46 + 32 * v44 || v46 + 24 >= v92 + 8 * v44))
            {
              v61 = v44 & 3;
              if ((v44 & 3) == 0)
              {
                v61 = 4;
              }

              v59 = v44 - v61;
              v60 = v92 + 8 * (v44 - v61);
              v62 = (v46 + 88);
              v63 = (v92 + 16);
              v64 = v59;
              do
              {
                v65 = v62 - 8;
                v66 = vld4q_f64(v65);
                v67 = vld4q_f64(v62);
                *(v63 - 1) = v66;
                *v63 = v67;
                v62 += 16;
                v63 += 2;
                v64 -= 4;
              }

              while (v64);
            }

            else
            {
              v59 = 0;
              v60 = v92;
            }

            v68 = v44 - v59;
            v69 = (v46 + 32 * v59 + 24);
            do
            {
              v70 = *v69;
              v69 += 4;
              *v60++ = v70;
              --v68;
            }

            while (v68);
          }
        }
      }

      else
      {
        v45 = v92;
      }

      mlir::ValueRange::ValueRange(&v90, v45, v42);
      mlir::Operation::setOperands(v40, v90, v91);
      v71 = *(v38 + 44);
      v72 = v71 & 0x7FFFFF;
      if ((v71 & 0x7FFFFF) != 0)
      {
        v73 = (v38 + 16 * ((v71 >> 23) & 1) + ((v71 >> 21) & 0x7F8) + 32 * *(v38 + 40) + 64);
        v74 = *(v40 + 44);
        v75 = v74 & 0x7FFFFF;
        if ((v74 & 0x7FFFFF) != 0)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v73 = 0;
        v72 = 0;
        v74 = *(v40 + 44);
        v75 = v74 & 0x7FFFFF;
        if ((v74 & 0x7FFFFF) != 0)
        {
LABEL_89:
          if (v72)
          {
            v76 = (v40 + 16 * ((v74 >> 23) & 1) + ((v74 >> 21) & 0x7F8) + 32 * *(v40 + 40) + 64);
            v77 = 24 * v72 - 24;
            v78 = 24 * v75 - 24;
            v79 = v76;
            do
            {
              mlir::Region::cloneInto(v73, v79, v76, a4);
              if (!v77)
              {
                break;
              }

              v73 = (v73 + 24);
              v79 += 24;
              v77 -= 24;
              v76 += 3;
              v80 = v78;
              v78 -= 24;
            }

            while (v80);
          }
        }
      }

      v33 = v33[1];
      v34 = *(v34 + 8);
      if (v34 == v89 || v33 == v88)
      {
        goto LABEL_36;
      }
    }
  }
}

mlir::Block *mlir::Region::findAncestorBlockInRegion(mlir::Region *this, mlir::Block *a2)
{
  while (1)
  {
    if (mlir::Block::getParent(a2) == this)
    {
      return a2;
    }

    ParentOp = mlir::Block::getParentOp(a2);
    if (!ParentOp)
    {
      break;
    }

    a2 = *(ParentOp + 16);
    if (!a2)
    {
      return a2;
    }
  }

  return 0;
}

mlir::Operation *mlir::Region::findAncestorOpInRegion(mlir::Region *this, mlir::Operation *a2)
{
  while (1)
  {
    v4 = *(a2 + 2);
    if (!v4)
    {
      break;
    }

    Parent = mlir::Block::getParent(v4);
    if (!Parent)
    {
      break;
    }

    if (Parent != this)
    {
      a2 = *(Parent + 2);
      if (a2)
      {
        continue;
      }
    }

    return a2;
  }

  return 0;
}

uint64_t llvm::ilist_traits<mlir::Block>::transferNodesFromList(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != a2)
  {
    while (a3 != a4)
    {
      v4 = a3 - 8;
      if (!a3)
      {
        v4 = 0;
      }

      *(v4 + 24) = *(v4 + 24) & 7 | result;
      a3 = *(a3 + 8);
    }
  }

  return result;
}

void *mlir::Region::OpIterator::OpIterator(void *this, mlir::Region *a2, char a3)
{
  *this = a2;
  v3 = a2;
  if ((a3 & 1) == 0)
  {
    v3 = *(a2 + 1);
  }

  this[1] = v3;
  this[2] = 0;
  if (*a2 != a2)
  {
    for (; v3 != a2; this[1] = v3)
    {
      v4 = (v3 - 8);
      if (!v3)
      {
        v4 = 0;
      }

      if (v4[4] != (v4 + 4))
      {
        break;
      }

      v3 = *(v3 + 1);
    }

    if (v3 == a2)
    {
      v6 = 0;
    }

    else
    {
      if (v3)
      {
        v5 = v3 - 8;
      }

      else
      {
        v5 = 0;
      }

      v6 = *(v5 + 5);
    }

    this[2] = v6;
  }

  return this;
}

{
  *this = a2;
  v3 = a2;
  if ((a3 & 1) == 0)
  {
    v3 = *(a2 + 1);
  }

  this[1] = v3;
  this[2] = 0;
  if (*a2 != a2)
  {
    for (; v3 != a2; this[1] = v3)
    {
      v4 = (v3 - 8);
      if (!v3)
      {
        v4 = 0;
      }

      if (v4[4] != (v4 + 4))
      {
        break;
      }

      v3 = *(v3 + 1);
    }

    if (v3 == a2)
    {
      v6 = 0;
    }

    else
    {
      if (v3)
      {
        v5 = v3 - 8;
      }

      else
      {
        v5 = 0;
      }

      v6 = *(v5 + 5);
    }

    this[2] = v6;
  }

  return this;
}

uint64_t *mlir::Region::OpIterator::skipOverBlocksWithNoOps(uint64_t *this)
{
  v2 = *this;
  v1 = this[1];
  if (v1 != *this)
  {
    do
    {
      v3 = v1 - 8;
      if (!v1)
      {
        v3 = 0;
      }

      if (*(v3 + 32) != v3 + 32)
      {
        break;
      }

      v1 = *(v1 + 8);
      this[1] = v1;
    }

    while (v1 != v2);
  }

  if (v1 == v2)
  {
    this[2] = 0;
  }

  else
  {
    if (v1)
    {
      v4 = v1 - 8;
    }

    else
    {
      v4 = 0;
    }

    this[2] = *(v4 + 40);
  }

  return this;
}

uint64_t *mlir::Region::OpIterator::operator++(uint64_t *result)
{
  v1 = result[1];
  v2 = result[2];
  v3 = v1 - 8;
  if (!v1)
  {
    v3 = 0;
  }

  v4 = v3 + 32;
  if (v2 == v4 || (v5 = *(v2 + 8), result[2] = v5, v5 == v4))
  {
    v6 = *(v1 + 8);
    result[1] = v6;
    for (i = *result; v6 != i; result[1] = v6)
    {
      v8 = v6 - 8;
      if (!v6)
      {
        v8 = 0;
      }

      if (*(v8 + 32) != v8 + 32)
      {
        break;
      }

      v6 = *(v6 + 8);
    }

    if (v6 == i)
    {
      result[2] = 0;
    }

    else
    {
      if (v6)
      {
        v9 = v6 - 8;
      }

      else
      {
        v9 = 0;
      }

      result[2] = *(v9 + 40);
    }
  }

  return result;
}

unint64_t *mlir::RegionRange::RegionRange(unint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2 & 0xFFFFFFFFFFFFFFF9;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFF9;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 2;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 2;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 4;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 4;
  result[1] = a3;
  return result;
}

uint64_t mlir::RegionRange::offset_base(void *a1, uint64_t a2)
{
  v2 = *a1 & 6;
  v3 = *a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = v2 != 4 || v3 == 0;
  v5 = v3 + 24 * a2;
  v6 = v3 + 8 * a2;
  if (!v4)
  {
    v5 = v6 | 4;
  }

  v7 = v6 | 2;
  if (v2 != 2 || v3 == 0)
  {
    return v5;
  }

  else
  {
    return v7;
  }
}

unint64_t mlir::RegionRange::dereference_iterator(void *a1, uint64_t a2)
{
  v2 = *a1 & 6;
  v3 = *a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = v2 != 2 || v3 == 0;
  if (v4 && (v2 == 4 ? (v5 = v3 == 0) : (v5 = 1), v5))
  {
    return v3 + 24 * a2;
  }

  else
  {
    return *(v3 + 8 * a2);
  }
}

uint64_t mlir::mayHaveSSADominance(mlir *this, mlir::Region *a2)
{
  v3 = *(this + 2);
  if (!mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v3) || !v3)
  {
    return 1;
  }

  InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v3);
  RegionNumber = mlir::Region::getRegionNumber(this);
  v6 = *(InterfaceFor + 8);

  return v6(RegionNumber);
}

uint64_t mlir::mayBeGraphRegion(mlir *this, mlir::Region *a2)
{
  v2 = *(this + 2);
  if (*(*(v2 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

  if (!mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(*(this + 2)))
  {
    return 0;
  }

  InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v2);
  if (!v2)
  {
    return 0;
  }

  RegionNumber = mlir::Region::getRegionNumber(this);
  return (*(InterfaceFor + 8))(RegionNumber) ^ 1;
}

mlir::SymbolTable *mlir::SymbolTable::SymbolTable(mlir::SymbolTable *this, mlir::Operation *a2)
{
  *this = a2;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  Context = mlir::Attribute::getContext((a2 + 24));
  v24 = 261;
  v23[0] = "sym_name";
  v23[1] = 8;
  v7 = mlir::StringAttr::get(Context, v23, v6);
  v8 = *(((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10) + 8);
  if (v8)
  {
    v9 = v8 - 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 + 32;
  v11 = *(v9 + 40);
  if (v11 != v9 + 32)
  {
    v12 = v7;
    do
    {
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      v14 = v13;
      v23[0] = v12;
      v15 = v12;
      if (*(v13 + 47))
      {
        Value = mlir::StringAttr::getValue(v23);
        InherentAttr = mlir::Operation::getInherentAttr(v14, Value, v17);
        if (v19)
        {
          goto LABEL_11;
        }

        v15 = v23[0];
      }

      InherentAttr = mlir::DictionaryAttr::get(v14 + 56, v15);
LABEL_11:
      if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v21 = InherentAttr;
        v22 = v14;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(v4, &v21, &v22, v23);
      }

      v11 = *(v11 + 8);
    }

    while (v11 != v10);
  }

  return this;
}

uint64_t mlir::SymbolTable::lookup(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v18 = 261;
  v17[0] = a2;
  v17[1] = a3;
  v8 = mlir::StringAttr::get(Context, v17, v7);
  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = *(a1 + 8);
    v11 = v9 - 1;
    v12 = (v9 - 1) & ((v8 >> 4) ^ (v8 >> 9));
    v13 = *(v10 + 16 * v12);
    if (v13 == v8)
    {
      return *(v10 + 16 * v12 + 8);
    }

    v15 = 1;
    while (v13 != -4096)
    {
      v16 = v12 + v15++;
      v12 = v16 & v11;
      v13 = *(v10 + 16 * v12);
      if (v13 == v8)
      {
        return *(v10 + 16 * v12 + 8);
      }
    }
  }

  return 0;
}

uint64_t mlir::SymbolTable::lookup(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = v2 - 1;
    v5 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(v3 + 16 * v5);
    if (v6 == a2)
    {
      return *(v3 + 16 * v5 + 8);
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (v6 == a2)
      {
        return *(v3 + 16 * v5 + 8);
      }
    }
  }

  return 0;
}

int32x2_t mlir::SymbolTable::remove(int32x2_t *this, mlir::Operation *a2)
{
  if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "sym_name", 8), (v6 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "sym_name", 8uLL);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v7 = InherentAttr;
    }

    else
    {
      v7 = 0;
    }

    v8 = this[3].u32[0];
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    v7 = 0;
    v8 = this[3].u32[0];
    if (!v8)
    {
      return result;
    }
  }

  v9 = this[1];
  v10 = ((v7 >> 4) ^ (v7 >> 9)) & (v8 - 1);
  v11 = *(*&v9 + 16 * v10);
  if (v11 == v7)
  {
LABEL_12:
    if (v10 != v8)
    {
      v12 = *&v9 + 16 * v10;
      if (*(v12 + 8) == a2)
      {
        *v12 = -8192;
        result = vadd_s32(this[2], 0x1FFFFFFFFLL);
        this[2] = result;
      }
    }
  }

  else
  {
    v13 = 1;
    while (v11 != -4096)
    {
      v14 = v10 + v13++;
      v10 = v14 & (v8 - 1);
      v11 = *(*&v9 + 16 * v10);
      if (v11 == v7)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void mlir::SymbolTable::erase(int32x2_t *this, mlir::Operation *a2)
{
  mlir::SymbolTable::remove(this, a2);

  mlir::Operation::erase(a2, v3);
}

std::string::size_type mlir::SymbolTable::insert(uint64_t a1, std::string::size_type a2, uint64_t *a3)
{
  v60[16] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 16);
  if (!v6 || !mlir::Block::getParentOp(v6))
  {
    v7 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
    if (v7)
    {
      v8 = v7 - 8;
    }

    else
    {
      v8 = 0;
    }

    v9 = (v8 + 32);
    v10 = (v8 + 32);
    if (!a3 || (v10 = a3, v9 == a3))
    {
      if (*v9 != v9)
      {
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        {
          v49 = v11;
          v11 = v49;
        }

        if ((*(**(v11 + 48) + 32))(*(v11 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          v10 = *v9;
        }
      }
    }

    llvm::ilist_traits<mlir::Operation>::addNodeToList(v9, a2);
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
    v12 = *v10;
    *v13 = *v10;
    v13[1] = v10;
    *(v12 + 8) = v13;
    *v10 = v13;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
    if (!*(a2 + 47))
    {
      goto LABEL_17;
    }

LABEL_16:
    InherentAttr = mlir::Operation::getInherentAttr(a2, "sym_name", 8);
    if (v15)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (*(a2 + 47))
  {
    goto LABEL_16;
  }

LABEL_17:
  InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "sym_name", 8uLL);
LABEL_18:
  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v16 = InherentAttr;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v50 = v16;
  v56.__r_.__value_.__r.__words[0] = v16;
  v56.__r_.__value_.__l.__size_ = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>((a1 + 8), &v56, &v56.__r_.__value_.__l.__size_, &v58);
  if (BYTE8(v59))
  {
    return v16;
  }

  v17 = *(a1 + 24);
  if (!v17)
  {
    goto LABEL_32;
  }

  v18 = *(a1 + 8);
  v19 = v17 - 1;
  v20 = ((v16 >> 4) ^ (v16 >> 9)) & (v17 - 1);
  v21 = *(v18 + 16 * v20);
  if (v16 != v21)
  {
    v22 = 1;
    while (v21 != -4096)
    {
      v23 = v20 + v22++;
      v20 = v23 & v19;
      v21 = *(v18 + 16 * v20);
      if (v16 == v21)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    if (!a2)
    {
      return v16;
    }

    goto LABEL_33;
  }

LABEL_26:
  if (*(v18 + 16 * v20 + 8) == a2)
  {
    return v16;
  }

LABEL_33:
  Context = mlir::Attribute::getContext((a2 + 24));
  Value = mlir::StringAttr::getValue(&v50);
  v27 = v25;
  v58 = v60;
  v59 = xmmword_257371870;
  if (v25 >= 0x81)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v28 = 0;
  if (v25)
  {
    memcpy(v58, Value, v25);
    v28 = v59;
  }

  v29 = v28 + v27;
  v30 = v29;
  *&v59 = v29;
  do
  {
    if (v59 != v30)
    {
      if (v59 <= v30)
      {
        if (*(&v59 + 1) < v30)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        if (v30 != v59)
        {
          bzero(v58 + v59, v30 - v59);
        }
      }

      *&v59 = v30;
    }

    if (v30 >= *(&v59 + 1))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(v58 + v30) = 95;
    *&v59 = v59 + 1;
    v31 = *(a1 + 32);
    *(a1 + 32) = v31 + 1;
    std::to_string(&v56, v31);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v56;
    }

    else
    {
      v32 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v56.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v56.__r_.__value_.__l.__size_;
    }

    v34 = v59;
    v35 = (v59 + size);
    if (*(&v59 + 1) < v59 + size)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (size)
    {
      memcpy(v58 + v59, v32, size);
      v34 = v59;
    }

    v36 = v34 + size;
    *&v59 = v36;
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
      v36 = v59;
    }

    v57 = 261;
    v56.__r_.__value_.__r.__words[0] = v58;
    v56.__r_.__value_.__l.__size_ = v36;
    v51 = mlir::StringAttr::get(Context, &v56, v35);
    v52 = a2;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>((a1 + 8), &v51, &v52, v53);
  }

  while (v54 != 1);
  v37 = v58;
  v38 = v59;
  v39 = mlir::Attribute::getContext((a2 + 24));
  v55 = 261;
  v53[0] = v37;
  v53[1] = v38;
  v41 = mlir::StringAttr::get(v39, v53, v40);
  v42 = mlir::Attribute::getContext((a2 + 24));
  v57 = 261;
  v56.__r_.__value_.__r.__words[0] = "sym_name";
  v56.__r_.__value_.__l.__size_ = 8;
  v44 = mlir::StringAttr::get(v42, &v56, v43);
  mlir::Operation::setAttr(a2, v44, v41);
  if (!*(a2 + 47) || (v45 = mlir::Operation::getInherentAttr(a2, "sym_name", 8), (v46 & 1) == 0))
  {
    v45 = mlir::DictionaryAttr::get(a2 + 56, "sym_name", 8uLL);
  }

  if (!v45)
  {
    v16 = 0;
    v47 = v58;
    if (v58 == v60)
    {
      return v16;
    }

    goto LABEL_68;
  }

  if (*(*v45 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v16 = v45;
  }

  else
  {
    v16 = 0;
  }

  v47 = v58;
  if (v58 != v60)
  {
LABEL_68:
    free(v47);
  }

  return v16;
}

uint64_t mlir::SymbolTable::getSymbolName(mlir::SymbolTable *this, mlir::Operation *a2)
{
  if (!*(this + 47) || (result = mlir::Operation::getInherentAttr(this, "sym_name", 8), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::get(this + 56, "sym_name", 8uLL);
  }

  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::SymbolTable::rename(int32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3].i32[0];
  if (!v3)
  {
LABEL_9:
    v8 = 0;
    return mlir::SymbolTable::rename(a1, v8, a3);
  }

  v4 = a1[1];
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(*&v4 + 16 * v6);
  if (v7 != a2)
  {
    v9 = 1;
    while (v7 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & v5;
      v7 = *(*&v4 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_9;
  }

LABEL_3:
  v8 = *(*&v4 + 16 * v6 + 8);
  return mlir::SymbolTable::rename(a1, v8, a3);
}

uint64_t mlir::SymbolTable::rename(int32x2_t *a1, mlir::Block **a2, uint64_t a3)
{
  if (!*(a2 + 47) || (mlir::Operation::getInherentAttr(a2, "sym_name", 8), (v6 & 1) == 0))
  {
    mlir::DictionaryAttr::get((a2 + 7), "sym_name", 8uLL);
  }

  if ((mlir::SymbolTable::replaceAllSymbolUses(a2, a3, *a1) & 1) == 0)
  {
    return 0;
  }

  mlir::SymbolTable::remove(a1, a2);
  Context = mlir::Attribute::getContext((a2 + 3));
  v12 = 261;
  v11[0] = "sym_name";
  v11[1] = 8;
  v9 = mlir::StringAttr::get(Context, v11, v8);
  mlir::Operation::setAttr(a2, v9, a3);
  mlir::SymbolTable::insert(a1, a2, 0);
  return 1;
}

uint64_t mlir::SymbolTable::replaceAllSymbolUses(mlir::Block **a1, uint64_t a2, unint64_t a3)
{
  v16[8] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v12 = mlir::SymbolRefAttr::get(a2);
  collectSymbolScopes(&v14, a1, a3);
  if (v15)
  {
    NewRefAttr = generateNewRefAttr(*v14, v12);
    v10 = 0;
    v8 = 0u;
    *v9 = 0u;
    *v6 = 0u;
    *__p = 0u;
    operator new();
  }

  if (v14 != v16)
  {
    free(v14);
  }

  return 1;
}

void mlir::SymbolTable::setSymbolName(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a1 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7, v5);
  mlir::Operation::setAttr(a1, v6, a2);
}

uint64_t mlir::SymbolTable::rename(int32x2_t *a1, uint64_t a2, size_t a3, size_t a4)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v21 = 261;
  v20[0] = a3;
  v20[1] = a4;
  v10 = mlir::StringAttr::get(Context, v20, v9);
  v11 = a1[3].i32[0];
  if (!v11)
  {
LABEL_8:
    v16 = 0;
    return mlir::SymbolTable::rename(a1, v16, v10);
  }

  v12 = a1[1];
  v13 = v11 - 1;
  v14 = (v11 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v15 = *(*&v12 + 16 * v14);
  if (v15 != a2)
  {
    v17 = 1;
    while (v15 != -4096)
    {
      v18 = v14 + v17++;
      v14 = v18 & v13;
      v15 = *(*&v12 + 16 * v14);
      if (v15 == a2)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_8;
  }

LABEL_3:
  v16 = *(*&v12 + 16 * v14 + 8);
  return mlir::SymbolTable::rename(a1, v16, v10);
}

uint64_t mlir::SymbolTable::rename(int32x2_t *a1, mlir::Block **a2, size_t a3, size_t a4)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v13 = 261;
  v12[0] = a3;
  v12[1] = a4;
  v10 = mlir::StringAttr::get(Context, v12, v9);
  return mlir::SymbolTable::rename(a1, a2, v10);
}

uint64_t mlir::SymbolTable::renameToUnique(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58[8] = *MEMORY[0x277D85DE8];
  v55 = a2;
  Context = mlir::Attribute::getContext(&v55);
  Value = mlir::StringAttr::getValue(&v55);
  v11 = v9;
  v56 = v58;
  v57 = xmmword_257370CF0;
  if (v9 >= 0x41)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v12 = 0;
  if (v9)
  {
    memcpy(v56, Value, v9);
    v12 = v57;
  }

  v13 = v12 + v11;
  *&v57 = v13;
  v14 = (v13 + 1);
  if ((v13 + 1) > *(&v57 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(v56 + v13) = 95;
  v15 = v57 + 1;
  *&v57 = v57 + 1;
  if (a4)
  {
    v16 = 0;
    v17 = a3 + 8 * a4;
    while (1)
    {
      v4 = v4 & 0xFFFFFFFF00000000 | v16;
      v51 = v56;
      v52 = v15;
      v53 = v4;
      v54 = 2565;
      v18 = mlir::StringAttr::get(Context, &v51, v14);
      v19 = a1[1];
      v20 = a1[3].i32[0];
      v21 = (v18 >> 4) ^ (v18 >> 9);
      if (!v20)
      {
        goto LABEL_12;
      }

      v22 = (v20 - 1) & v21;
      v23 = *(*&v19 + 16 * v22);
      if (v23 != v18)
      {
        break;
      }

LABEL_11:
      if (!*(*&v19 + 16 * v22 + 8))
      {
        goto LABEL_12;
      }

LABEL_8:
      ++v16;
      v15 = v57;
    }

    v32 = 1;
    while (v23 != -4096)
    {
      v33 = v22 + v32++;
      v22 = v33 & (v20 - 1);
      v23 = *(*&v19 + 16 * v22);
      if (v23 == v18)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    v24 = a3;
    while (1)
    {
      v25 = *(*v24 + 24);
      if (v25)
      {
        v26 = *(*v24 + 8);
        v27 = v25 - 1;
        v28 = (v25 - 1) & v21;
        v29 = *(v26 + 16 * v28);
        if (v29 == v18)
        {
LABEL_16:
          if (*(v26 + 16 * v28 + 8))
          {
            goto LABEL_8;
          }
        }

        else
        {
          v30 = 1;
          while (v29 != -4096)
          {
            v31 = v28 + v30++;
            v28 = v31 & v27;
            v29 = *(v26 + 16 * v28);
            if (v29 == v18)
            {
              goto LABEL_16;
            }
          }
        }
      }

      v24 += 8;
      if (v24 == v17)
      {
        goto LABEL_35;
      }
    }
  }

  v34 = 0;
  do
  {
    v11 = v11 & 0xFFFFFFFF00000000 | v34;
    v51 = v56;
    v52 = v57;
    v53 = v11;
    v54 = 2565;
    v18 = mlir::StringAttr::get(Context, &v51, v14);
    v19 = a1[1];
    v20 = a1[3].i32[0];
    if (!v20)
    {
      break;
    }

    v35 = (v20 - 1) & ((v18 >> 4) ^ (v18 >> 9));
    v36 = *(*&v19 + 16 * v35);
    if (v36 != v18)
    {
      v37 = 1;
      while (v36 != -4096)
      {
        v38 = v35 + v37++;
        v35 = v38 & (v20 - 1);
        v36 = *(*&v19 + 16 * v35);
        if (v36 == v18)
        {
          goto LABEL_29;
        }
      }

      break;
    }

LABEL_29:
    ++v34;
  }

  while (*(*&v19 + 16 * v35 + 8));
LABEL_35:
  if (v56 != v58)
  {
    v39 = v18;
    free(v56);
    v18 = v39;
    v19 = a1[1];
    v20 = a1[3].i32[0];
  }

  if (v20)
  {
    v40 = v20 - 1;
    v41 = ((v55 >> 4) ^ (v55 >> 9)) & (v20 - 1);
    v42 = *(*&v19 + 16 * v41);
    if (v42 == v55)
    {
LABEL_39:
      v43 = v18;
      v44 = *(*&v19 + 16 * v41 + 8);
      goto LABEL_46;
    }

    v45 = 1;
    while (v42 != -4096)
    {
      v46 = v41 + v45++;
      v41 = v46 & v40;
      v42 = *(*&v19 + 16 * v41);
      if (v42 == v55)
      {
        goto LABEL_39;
      }
    }
  }

  v43 = v18;
  v44 = 0;
LABEL_46:
  v47 = a1;
  v48 = v43;
  if (mlir::SymbolTable::rename(v47, v44, v43))
  {
    return v48;
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "sym_name", 8), (v9 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "sym_name", 8uLL);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v10 = InherentAttr;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return mlir::SymbolTable::renameToUnique(a1, v10, a3, a4);
}

uint64_t mlir::SymbolTable::getSymbolVisibility(mlir::SymbolTable *this, mlir::Operation *a2)
{
  if (!*(this + 47) || (result = mlir::Operation::getInherentAttr(this, "sym_visibility", 14), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::get(this + 56, "sym_visibility", 0xEuLL);
  }

  if (result)
  {
    if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    v11 = v5;
    if (!v5)
    {
      return 0;
    }

    Value = mlir::StringAttr::getValue(&v11);
    if (v7 != 6)
    {
      return v7 == 7 && *Value == 1986622064 && *(Value + 3) == 1702125942;
    }

    v10 = *Value == 1953719662 && *(Value + 4) == 25701;
    return (2 * v10);
  }

  return result;
}

void mlir::SymbolTable::setSymbolVisibility(uint64_t a1, int a2)
{
  Context = mlir::Attribute::getContext((a1 + 24));
  if (a2)
  {
    v6 = "nested";
    if (a2 == 1)
    {
      v6 = "private";
    }

    v7 = 6;
    v14 = 261;
    if (a2 == 1)
    {
      v7 = 7;
    }

    v13[0] = v6;
    v13[1] = v7;
    v8 = mlir::StringAttr::get(Context, v13, v5);
    v9 = mlir::Attribute::getContext((a1 + 24));
    v17 = 261;
    v15 = "sym_visibility";
    v16 = 14;
    v11 = mlir::StringAttr::get(v9, &v15, v10);
    mlir::Operation::setAttr(a1, v11, v8);
  }

  else
  {
    v17 = 261;
    v15 = "sym_visibility";
    v16 = 14;
    v12 = mlir::StringAttr::get(Context, &v15, v5);
    mlir::Operation::removeAttr(a1, v12);
  }
}

mlir::SymbolTable *mlir::SymbolTable::getNearestSymbolTable(mlir::SymbolTable *this, mlir::Operation *a2)
{
  v2 = this;
  if ((*(this + 11) & 0x7FFFFF) == 1)
  {
    v3 = *(this + 6);
    if (*(v3 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v8 = *(v3 + 8);
      if (mlir::StringAttr::getReferencedDialect(&v8))
      {
        goto LABEL_8;
      }
    }

    else if (*(v3 + 24))
    {
      goto LABEL_8;
    }

    return 0;
  }

  else
  {
    while (1)
    {
LABEL_8:
      {
        mlir::SymbolTable::getNearestSymbolTable();
      }

      if ((*(**(v2 + 6) + 32))(*(v2 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        break;
      }

      v4 = *(v2 + 2);
      if (!v4)
      {
        return 0;
      }

      ParentOp = mlir::Block::getParentOp(v4);
      v2 = ParentOp;
      if (!ParentOp)
      {
        break;
      }

      if ((*(ParentOp + 44) & 0x7FFFFF) == 1)
      {
        v6 = *(ParentOp + 48);
        if (*(v6 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v8 = *(v6 + 8);
          if (!mlir::StringAttr::getReferencedDialect(&v8))
          {
            return 0;
          }
        }

        else if (!*(v6 + 24))
        {
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t mlir::SymbolTable::walkSymbolTables(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  {
    mlir::SymbolTable::walkSymbolTables();
  }

  result = (*(**(a1 + 48) + 32))(*(a1 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id);
  v8 = result;
  if (!result)
  {
    v11 = 1;
    v12 = *(a1 + 44);
    v13 = v12 & 0x7FFFFF;
    if ((v12 & 0x7FFFFF) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if (!mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    goto LABEL_15;
  }

  if (*(a1 + 47) && (InherentAttr = mlir::Operation::getInherentAttr(a1, "sym_name", 8), (v10 & 1) != 0))
  {
    if (!InherentAttr)
    {
      goto LABEL_15;
    }
  }

  else if (!mlir::DictionaryAttr::contains(a1 + 56, "sym_name", 8uLL))
  {
    goto LABEL_15;
  }

  InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  if (a1)
  {
    result = (*(InterfaceFor + 32))();
    v11 = result | a2;
    v12 = *(a1 + 44);
    v13 = v12 & 0x7FFFFF;
    if ((v12 & 0x7FFFFF) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = 1;
  v11 = a2 | 1u;
  v12 = *(a1 + 44);
  v13 = v12 & 0x7FFFFF;
  if ((v12 & 0x7FFFFF) == 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  v15 = ((a1 + 16 * ((v12 >> 23) & 1) + ((v12 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  v16 = v15 + 24 * v13;
  i = *(v15 + 8);
  if (i != v15)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v15 += 24;
    if (v15 == v16)
    {
      break;
    }

    for (i = *(v15 + 8); i != v15; i = *(i + 8))
    {
LABEL_19:
      v18 = i - 8;
      if (!i)
      {
        v18 = 0;
      }

      v19 = v18 + 32;
      v20 = *(v18 + 40);
      if (v20 != v18 + 32)
      {
        do
        {
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
          result = mlir::SymbolTable::walkSymbolTables(v21, v11, a3, a4);
          v20 = *(v20 + 8);
        }

        while (v20 != v19);
      }
    }
  }

LABEL_25:
  if (v8)
  {

    return a3(a4, a1, v11);
  }

  return result;
}

uint64_t mlir::SymbolTable::lookupSymbolIn(unsigned int *a1, uint64_t a2)
{
  v2 = (((&a1[4 * ((a1[11] >> 23) & 1) + 17] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
  if (*v2 != v2)
  {
    Context = mlir::Attribute::getContext((a1 + 6));
    v22 = 261;
    v21[0] = "sym_name";
    v21[1] = 8;
    v6 = mlir::StringAttr::get(Context, v21, v5);
    v7 = v2[1];
    v8 = v7 ? v7 - 8 : 0;
    v9 = v8 + 32;
    v10 = *(v8 + 40);
    if (v10 != v8 + 32)
    {
      v11 = v6;
      do
      {
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        v13 = v12;
        v21[0] = v11;
        v14 = v11;
        if (*(v12 + 47))
        {
          Value = mlir::StringAttr::getValue(v21);
          InherentAttr = mlir::Operation::getInherentAttr(v13, Value, v16);
          if (v18)
          {
            goto LABEL_13;
          }

          v14 = v21[0];
        }

        InherentAttr = mlir::DictionaryAttr::get(v13 + 56, v14);
LABEL_13:
        if (InherentAttr)
        {
          if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v19 = InherentAttr;
          }

          else
          {
            v19 = 0;
          }

          if (v19 == a2)
          {
            return v13;
          }
        }

        else if (!a2)
        {
          return v13;
        }

        v10 = *(v10 + 8);
      }

      while (v10 != v9);
    }
  }

  return 0;
}

uint64_t mlir::SymbolTable::lookupSymbolIn(uint64_t a1, uint64_t a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5 = v7;
  v6 = 0x400000000;
  if (lookupSymbolInImpl(a1, a2, &v5, llvm::function_ref<mlir::Operation * ()(mlir::Operation *,mlir::StringAttr)>::callback_fn<mlir::SymbolTable::lookupSymbolIn(mlir::Operation *,mlir::SymbolRefAttr,llvm::SmallVectorImpl<mlir::Operation *> &)::$_0>, &v4))
  {
    v2 = *(v5 + v6 - 1);
    if (v5 == v7)
    {
      return v2;
    }

    goto LABEL_5;
  }

  v2 = 0;
  if (v5 != v7)
  {
LABEL_5:
    free(v5);
  }

  return v2;
}

uint64_t lookupSymbolInImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v26 = a2;
  RootReference = mlir::SymbolRefAttr::getRootReference(&v26);
  result = a4(a5, a1, RootReference);
  if (result)
  {
    v11 = result;
    v12 = *(a3 + 8);
    if (v12 >= *(a3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a3 + 8 * v12) = result;
    ++*(a3 + 8);
    NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v26);
    if (v14)
    {
      v15 = NestedReferences;
      v16 = v14;
      {
        mlir::SymbolTable::getNearestSymbolTable();
      }

      result = (*(**(v11 + 48) + 32))(*(v11 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id);
      if (result)
      {
        if (&v15[v16 - 1] == v15)
        {
LABEL_18:
          LeafReference = mlir::SymbolRefAttr::getLeafReference(&v26);
          v22 = a4(a5, v11, LeafReference);
          v23 = *(a3 + 8);
          if (v23 >= *(a3 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a3 + 8 * v23) = v22;
          v24 = *(a3 + 8) + 1;
          *(a3 + 8) = v24;
          return *(*a3 + 8 * v24 - 8) != 0;
        }

        else
        {
          v17 = 8 * v16 - 8;
          while (1)
          {
            v25 = *v15;
            v18 = mlir::SymbolRefAttr::getRootReference(&v25);
            v19 = a4(a5, v11, v18);
            if (!v19)
            {
              return 0;
            }

            v11 = v19;
            {
              mlir::SymbolTable::getNearestSymbolTable();
            }

            if (!(*(**(v11 + 48) + 32))(*(v11 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
            {
              return 0;
            }

            v20 = *(a3 + 8);
            if (v20 >= *(a3 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(*a3 + 8 * v20) = v11;
            ++*(a3 + 8);
            ++v15;
            v17 -= 8;
            if (!v17)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

unsigned int *mlir::SymbolTable::lookupNearestSymbolFrom(mlir::SymbolTable *a1, mlir::Operation *a2)
{
  result = mlir::SymbolTable::getNearestSymbolTable(a1, a2);
  if (result)
  {

    return mlir::SymbolTable::lookupSymbolIn(result, a2);
  }

  return result;
}

uint64_t mlir::SymbolTable::lookupNearestSymbolFrom(mlir::SymbolTable *a1, mlir::Operation *a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(a1, a2);
  if (!NearestSymbolTable)
  {
    return 0;
  }

  v7 = v9;
  v8 = 0x400000000;
  if (lookupSymbolInImpl(NearestSymbolTable, a2, &v7, llvm::function_ref<mlir::Operation * ()(mlir::Operation *,mlir::StringAttr)>::callback_fn<mlir::SymbolTable::lookupSymbolIn(mlir::Operation *,mlir::SymbolRefAttr,llvm::SmallVectorImpl<mlir::Operation *> &)::$_0>, &v6))
  {
    v4 = *(v7 + v8 - 1);
    if (v7 == v9)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if (v7 != v9)
  {
LABEL_7:
    free(v7);
  }

  return v4;
}

llvm::raw_ostream *mlir::operator<<(llvm::raw_ostream *result, int a2)
{
  v2 = *(result + 4);
  v3 = *(result + 3) - v2;
  if (a2 == 2)
  {
    if (v3 <= 5)
    {
      v4 = "nested";
      v5 = 6;
      return llvm::raw_ostream::write(result, v4, v5);
    }

    *(v2 + 4) = 25701;
    *v2 = 1953719662;
    *(result + 4) += 6;
  }

  else if (a2 == 1)
  {
    if (v3 <= 6)
    {
      v4 = "private";
      v5 = 7;
      return llvm::raw_ostream::write(result, v4, v5);
    }

    *(v2 + 3) = 1702125942;
    *v2 = 1986622064;
    *(result + 4) += 7;
  }

  else
  {
    if (v3 <= 5)
    {
      v4 = "public";
      v5 = 6;
      return llvm::raw_ostream::write(result, v4, v5);
    }

    *(v2 + 4) = 25449;
    *v2 = 1818391920;
    *(result + 4) += 6;
  }

  return result;
}

BOOL mlir::detail::verifySymbolTable(mlir::detail *this, mlir::Operation *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = *(this + 11);
  if ((v3 & 0x7FFFFF) == 1)
  {
    v4 = ((this + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
    v5 = *(v4 + 8);
    if (v5 != v4 && *(v5 + 8) == v4)
    {
      v49 = 0;
      v48[0] = 0;
      v48[1] = 0;
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        v27 = i - 8;
        if (!i)
        {
          v27 = 0;
        }

        v28 = v27 + 32;
        for (j = *(v27 + 40); j != v28; j = *(j + 8))
        {
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
          v31 = v30;
          if (!*(v30 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(v30, "sym_name", 8), (v33 & 1) == 0))
          {
            InherentAttr = mlir::DictionaryAttr::get((v31 + 7), "sym_name", 8uLL);
          }

          if (InherentAttr)
          {
            v34 = *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id ? InherentAttr : 0;
            v47 = v34;
            if (v34)
            {
              v54 = v31[3];
              llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>,mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>::try_emplace<mlir::pdl_interp::ApplyConstraintOp>(v48, &v47, &v54, &v45);
              if ((v46 & 1) == 0)
              {
                v51 = 257;
                mlir::Operation::emitError(&v54, v31, v50);
                v44[0] = mlir::StringAttr::getValue(&v47);
                v44[1] = v35;
                if (v54)
                {
                  mlir::Diagnostic::append<char const(&)[10],llvm::StringRef &,char const(&)[44]>(&v55, "redefinition of symbol named '", v44, "'");
                }

                mlir::Diagnostic::attachNote(&v55, *(v45 + 8), 1);
              }
            }
          }
        }
      }

      v54 = 0;
      v55 = 0;
      v56 = 0;
      v50[0] = &v54;
      v36 = *(this + 11);
      v37 = v36 & 0x7FFFFF;
      if ((v36 & 0x7FFFFF) != 0)
      {
        v38 = ((this + 16 * ((v36 >> 23) & 1) + ((v36 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
      }

      else
      {
        v38 = 0;
        v37 = 0;
      }

      walkSymbolTable(v38, v37, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<mlir::detail::verifySymbolTable(mlir::Operation *)::$_0>, v50);
      v39 = v54;
      if (v56)
      {
        v40 = (v54 + 8);
        v41 = 16 * v56;
        do
        {
          if ((*(v40 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            v42 = *v40;
            *v40 = 0;
            if (v42)
            {
              llvm::deallocate_buffer(*(v42 + 8), (16 * *(v42 + 24)));
            }
          }

          v40 += 2;
          v41 -= 16;
        }

        while (v41);
        v39 = v54;
        v43 = (16 * v56);
      }

      else
      {
        v43 = 0;
      }

      llvm::deallocate_buffer(v39, v43);
    }

    v51 = 257;
    mlir::Operation::emitOpError(&v54, this, v50);
    if (v54)
    {
      LODWORD(v52) = 3;
      *(&v52 + 1) = "Operations with a 'SymbolTable' must have exactly one block";
      v53 = 59;
      if (v58 >= v59)
      {
        if (v57 > &v52 || v57 + 24 * v58 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v6 = v57 + 24 * v58;
      v7 = v52;
      *(v6 + 2) = v53;
      *v6 = v7;
      ++v58;
    }

    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v54);
    if (v54)
    {
      mlir::InFlightDiagnostic::report(&v54);
    }

    if (v66 == 1)
    {
      if (v65 != &v66)
      {
        free(v65);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v64;
        v11 = __p;
        if (v64 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v64 = v9;
        operator delete(v11);
      }

      v12 = v61;
      if (!v61)
      {
        goto LABEL_44;
      }

      v13 = v62;
      v14 = v61;
      if (v62 == v61)
      {
LABEL_43:
        v62 = v12;
        operator delete(v14);
LABEL_44:
        if (v57 != &v60)
        {
          free(v57);
        }

        return v8;
      }

      do
      {
        v16 = *--v13;
        v15 = v16;
        *v13 = 0;
        if (v16)
        {
          MEMORY[0x259C63150](v15, 0x1000C8077774924);
        }
      }

      while (v13 != v12);
LABEL_42:
      v14 = v61;
      goto LABEL_43;
    }
  }

  else
  {
    v51 = 257;
    mlir::Operation::emitOpError(&v54, this, v50);
    if (v54)
    {
      LODWORD(v52) = 3;
      *(&v52 + 1) = "Operations with a 'SymbolTable' must have exactly one region";
      v53 = 60;
      if (v58 >= v59)
      {
        if (v57 > &v52 || v57 + 24 * v58 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v17 = v57 + 24 * v58;
      v18 = v52;
      *(v17 + 2) = v53;
      *v17 = v18;
      ++v58;
    }

    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v54);
    if (v54)
    {
      mlir::InFlightDiagnostic::report(&v54);
    }

    if (v66 == 1)
    {
      if (v65 != &v66)
      {
        free(v65);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v64;
        v21 = __p;
        if (v64 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v64 = v19;
        operator delete(v21);
      }

      v12 = v61;
      if (!v61)
      {
        goto LABEL_44;
      }

      v22 = v62;
      v14 = v61;
      if (v62 == v61)
      {
        goto LABEL_43;
      }

      do
      {
        v24 = *--v22;
        v23 = v24;
        *v22 = 0;
        if (v24)
        {
          MEMORY[0x259C63150](v23, 0x1000C8077774924);
        }
      }

      while (v22 != v12);
      goto LABEL_42;
    }
  }

  return v8;
}

uint64_t walkSymbolTable(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v6 = a1;
  v38[1] = *MEMORY[0x277D85DE8];
  v7 = a1 + 24 * a2;
  v36 = v38;
  v37 = 0x100000000;
  v8 = (24 * a2) >> 3;
  v9 = -1431655765 * v8;
  if (0xAAAAAAAAAAAAAAABLL * v8 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a1 != v7)
  {
    v10 = v36;
    v11 = 24 * a2 - 24;
    if (v11 < 0x48)
    {
      goto LABEL_34;
    }

    v12 = v11 / 0x18 + 1;
    v13 = a1;
    v10 = (v36 + 8 * (v12 & 0x1FFFFFFFFFFFFFFCLL));
    v6 = a1 + 24 * (v12 & 0x1FFFFFFFFFFFFFFCLL);
    v14 = (v36 + 16);
    v15 = v12 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v16 = vdupq_n_s64(v13);
      v14[-1] = vaddq_s64(v16, xmmword_257392FF0);
      *v14 = vaddq_s64(v16, xmmword_25736F010);
      v13 += 96;
      v14 += 2;
      v15 -= 4;
    }

    while (v15);
    if (v12 != (v12 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_34:
      do
      {
        *v10++ = v6;
        v6 += 24;
      }

      while (v6 != v7);
    }
  }

  v17 = -1431655765 * v8;
  LODWORD(v37) = v9;
  if (v9)
  {
    v18 = 1;
    while (2)
    {
      v19 = *(v36 + v17 - 1);
      LODWORD(v37) = v17 - 1;
      mlir::Region::OpIterator::OpIterator(&v34, v19, 0);
      mlir::Region::OpIterator::OpIterator(v33, v19, 1);
      v20 = v35;
      v21 = v33[2];
      while (v20 != v21)
      {
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        v23 = v22;
        v24 = a3(a4, v22);
        if ((v24 & 0x1FFFFFFFFLL) != 0x100000001)
        {
          v30 = v24 & 0xFF00000000;
          v18 = v24;
          v31 = v36;
          if (v36 != v38)
          {
            goto LABEL_28;
          }

          return v30 | v18;
        }

        {
          mlir::SymbolTable::getNearestSymbolTable();
        }

        if (((*(**(v23 + 48) + 32))(*(v23 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
          v25 = *(v23 + 44);
          v26 = v25 & 0x7FFFFF;
          if ((v25 & 0x7FFFFF) != 0)
          {
            v27 = v23 + 16 * ((v25 >> 23) & 1) + ((v25 >> 21) & 0x7F8) + 32 * *(v23 + 40) + 64;
            v28 = v37;
            v29 = 24 * v26;
            do
            {
              if (v28 >= HIDWORD(v37))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(v36 + v28) = v27;
              v28 = v37 + 1;
              LODWORD(v37) = v37 + 1;
              v27 += 24;
              v29 -= 24;
            }

            while (v29);
          }
        }

        mlir::Region::OpIterator::operator++(&v34);
        v20 = v35;
      }

      v17 = v37;
      if (v37)
      {
        continue;
      }

      break;
    }

    v30 = 0x100000000;
    v31 = v36;
    if (v36 != v38)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v30 = 0x100000000;
    v18 = 1;
    v31 = v36;
    if (v36 != v38)
    {
LABEL_28:
      free(v31);
    }
  }

  return v30 | v18;
}

uint64_t mlir::detail::verifySymbol(mlir::detail *this, mlir::Operation *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  if (!*(this + 47) || (InherentAttr = mlir::Operation::getInherentAttr(this, "sym_name", 8), (v4 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(this + 56, "sym_name", 8uLL);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v53 = 257;
    mlir::Operation::emitOpError(&v57, this, &v51);
    if (v57)
    {
      LODWORD(v54) = 3;
      *(&v54 + 1) = "requires string attribute '";
      v55 = 27;
      if (v60 >= v61)
      {
        if (v59 > &v54 || v59 + 24 * v60 <= &v54)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v5 = v59 + 24 * v60;
      v6 = v54;
      *(v5 + 2) = v55;
      *v5 = v6;
      ++v60;
      if (v57)
      {
        v56 = 261;
        *&v54 = "sym_name";
        *(&v54 + 1) = 8;
        mlir::Diagnostic::operator<<(v58, &v54);
        if (v57)
        {
          LODWORD(v54) = 3;
          *(&v54 + 1) = "'";
          v55 = 1;
          if (v60 >= v61)
          {
            if (v59 > &v54 || v59 + 24 * v60 <= &v54)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v7 = v59 + 24 * v60;
          v8 = v54;
          *(v7 + 2) = v55;
          *v7 = v8;
          ++v60;
        }
      }
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v57);
    if (v57)
    {
      mlir::InFlightDiagnostic::report(&v57);
    }

    if (v68 == 1)
    {
      if (v67 != &v68)
      {
        free(v67);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v66;
        v12 = __p;
        if (v66 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v66 = v10;
        operator delete(v12);
      }

      v13 = v63;
      if (!v63)
      {
        goto LABEL_94;
      }

      v14 = v64;
      v15 = v63;
      if (v64 == v63)
      {
LABEL_93:
        v64 = v13;
        operator delete(v15);
LABEL_94:
        if (v59 != &v62)
        {
          free(v59);
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
          MEMORY[0x259C63150](v16, 0x1000C8077774924);
        }
      }

      while (v14 != v13);
LABEL_92:
      v15 = v63;
      goto LABEL_93;
    }

    return v9;
  }

  if (!*(this + 47) || (v18 = mlir::Operation::getInherentAttr(this, "sym_visibility", 14), (v19 & 1) == 0))
  {
    v18 = mlir::DictionaryAttr::get(this + 56, "sym_visibility", 0xEuLL);
  }

  if (!v18)
  {
    return 1;
  }

  if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v50 = v20;
  if (!v20)
  {
    v27 = v18;
    v53 = 257;
    mlir::Operation::emitOpError(&v57, this, &v51);
    if (v57)
    {
      LODWORD(v54) = 3;
      *(&v54 + 1) = "requires visibility attribute '";
      v55 = 31;
      if (v60 >= v61)
      {
        if (v59 > &v54 || v59 + 24 * v60 <= &v54)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v28 = v59 + 24 * v60;
      v29 = v54;
      *(v28 + 2) = v55;
      *v28 = v29;
      ++v60;
      if (v57)
      {
        v56 = 261;
        *&v54 = "sym_visibility";
        *(&v54 + 1) = 14;
        mlir::Diagnostic::operator<<(v58, &v54);
        if (v57)
        {
          LODWORD(v54) = 3;
          *(&v54 + 1) = "' to be a string attribute, but got ";
          v55 = 36;
          if (v60 >= v61)
          {
            if (v59 > &v54 || v59 + 24 * v60 <= &v54)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v30 = v59 + 24 * v60;
          v31 = v54;
          *(v30 + 2) = v55;
          *v30 = v31;
          ++v60;
          if (v57)
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v54, v27);
            if (v60 >= v61)
            {
              if (v59 > &v54 || v59 + 24 * v60 <= &v54)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v32 = v59 + 24 * v60;
            v33 = v54;
            *(v32 + 2) = v55;
            *v32 = v33;
            ++v60;
          }
        }
      }
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v57);
    if (v57)
    {
      mlir::InFlightDiagnostic::report(&v57);
    }

    if (v68 == 1)
    {
      if (v67 != &v68)
      {
        free(v67);
      }

      v34 = __p;
      if (__p)
      {
        v35 = v66;
        v36 = __p;
        if (v66 != __p)
        {
          do
          {
            v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v66 = v34;
        operator delete(v36);
      }

      v13 = v63;
      if (!v63)
      {
        goto LABEL_94;
      }

      v37 = v64;
      v15 = v63;
      if (v64 == v63)
      {
        goto LABEL_93;
      }

      do
      {
        v39 = *--v37;
        v38 = v39;
        *v37 = 0;
        if (v39)
        {
          MEMORY[0x259C63150](v38, 0x1000C8077774924);
        }
      }

      while (v37 != v13);
      goto LABEL_92;
    }

    return v9;
  }

  Value = mlir::StringAttr::getValue(&v50);
  if (v22 != 7)
  {
    if (v22 != 6)
    {
      goto LABEL_72;
    }

    if (*Value != 1818391920 || *(Value + 4) != 25449)
    {
      v24 = *(Value + 4);
      v25 = *Value == 1953719662;
      v26 = 25701;
      goto LABEL_68;
    }

    return 1;
  }

  v24 = *(Value + 3);
  v25 = *Value == 1986622064;
  v26 = 1702125942;
LABEL_68:
  if (v25 && v24 == v26)
  {
    return 1;
  }

LABEL_72:
  v56 = 257;
  mlir::Operation::emitOpError(&v57, this, &v54);
  if (v57)
  {
    LODWORD(v51) = 3;
    *(&v51 + 1) = "visibility expected to be one of [public, private, nested], but got ";
    v52 = 74;
    if (v60 >= v61)
    {
      if (v59 > &v51 || v59 + 24 * v60 <= &v51)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v41 = v59 + 24 * v60;
    v42 = v51;
    *(v41 + 2) = v52;
    *v41 = v42;
    ++v60;
    if (v57)
    {
      mlir::Diagnostic::operator<<(v58, v50);
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v57);
  if (v57)
  {
    mlir::InFlightDiagnostic::report(&v57);
  }

  if (v68 == 1)
  {
    if (v67 != &v68)
    {
      free(v67);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v66;
      v45 = __p;
      if (v66 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v66 = v43;
      operator delete(v45);
    }

    v13 = v63;
    if (!v63)
    {
      goto LABEL_94;
    }

    v46 = v64;
    v15 = v63;
    if (v64 == v63)
    {
      goto LABEL_93;
    }

    do
    {
      v48 = *--v46;
      v47 = v48;
      *v46 = 0;
      if (v48)
      {
        MEMORY[0x259C63150](v47, 0x1000C8077774924);
      }
    }

    while (v46 != v13);
    goto LABEL_92;
  }

  return v9;
}

double mlir::SymbolTable::getSymbolUses@<D0>(uint64_t *__return_ptr a1@<X8>, mlir::SymbolTable *this@<X0>)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v5 = __p;
  if ((walkSymbolUses(this, llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<std::optional<mlir::SymbolTable::UseRange> getSymbolUsesImpl<mlir::Operation *>(mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>, &v5) & 0x100000000) != 0)
  {
    result = *__p;
    *a1 = *__p;
    a1[2] = v7;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = 0;
    v4 = __p[0];
    *(a1 + 24) = 0;
    if (v4)
    {
      __p[1] = v4;
      operator delete(v4);
    }
  }

  return result;
}

{
  __p[0] = 0;
  __p[1] = 0;
  v5 = __p;
  v9[0] = llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<std::optional<mlir::SymbolTable::UseRange> getSymbolUsesImpl<llvm::MutableArrayRef<mlir::Region>>(llvm::MutableArrayRef<mlir::Region>)::{lambda(mlir::SymbolTable::SymbolUse)#1}>;
  v9[1] = &v5;
  v7 = 0;
  v8 = v9;
  if ((walkSymbolTable(this, 1, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>, &v8) & 0x100000000) != 0)
  {
    result = *__p;
    *a1 = *__p;
    a1[2] = v7;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = 0;
    v4 = __p[0];
    *(a1 + 24) = 0;
    if (v4)
    {
      __p[1] = v4;
      operator delete(v4);
    }
  }

  return result;
}

void mlir::SymbolTable::getSymbolUses(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[2] = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  v22 = v24;
  v23 = 0x100000000;
  v5 = mlir::SymbolRefAttr::get(a1);
  v6 = *(a2 + 44);
  v7 = 0;
  if ((v6 & 0x7FFFFF) != 0)
  {
    v8 = ((a2 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v9 = 24 * (v6 & 0x7FFFFF);
    do
    {
      if (v7 >= HIDWORD(v23))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = (v22 + 16 * v7);
      *v10 = v5;
      v10[1] = v8 | 4;
      v7 = v23 + 1;
      LODWORD(v23) = v23 + 1;
      v8 += 24;
      v9 -= 24;
    }

    while (v9);
  }

  v11 = v22;
  if (v7)
  {
    v12 = 16 * v7;
    v13 = (v22 + 8);
    while (1)
    {
      v14 = *v13;
      v13 += 2;
      v19[0] = v11;
      v19[1] = __p;
      v15 = v14 & 0xFFFFFFFFFFFFFFF8;
      if ((v14 & 4) != 0 && v15)
      {
        v21[1] = v19;
        v20 = v21;
        if ((walkSymbolTable(v15, 1, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>, &v20) & 0x100000000) == 0)
        {
          goto LABEL_19;
        }
      }

      {
LABEL_19:
        *a3 = 0;
        *(a3 + 24) = 0;
        if (v22 != v24)
        {
          free(v22);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        return;
      }

      v11 += 16;
      v12 -= 16;
      if (!v12)
      {
        v11 = v22;
        break;
      }
    }
  }

  if (v11 != v24)
  {
    free(v11);
  }

  v16 = v18;
  *a3 = *__p;
  *(a3 + 16) = v16;
  *(a3 + 24) = 1;
}

void mlir::SymbolTable::getSymbolUses(mlir::Block **this@<X0>, uint64_t a2@<X8>, unint64_t a3@<X1>)
{
  v17[4] = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  collectSymbolScopes(&v15, this, a3);
  v4 = v15;
  if (v16)
  {
    v5 = 16 * v16;
    v6 = (v15 + 8);
    while (1)
    {
      v7 = *v6;
      v6 += 2;
      v12[0] = v4;
      v12[1] = __p;
      v8 = v7 & 0xFFFFFFFFFFFFFFF8;
      if ((v7 & 4) != 0 && v8)
      {
        v14[1] = v12;
        v13 = v14;
        if ((walkSymbolTable(v8, 1, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>, &v13) & 0x100000000) == 0)
        {
          goto LABEL_13;
        }
      }

      {
LABEL_13:
        *a2 = 0;
        *(a2 + 24) = 0;
        if (v15 != v17)
        {
          free(v15);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        return;
      }

      v4 += 16;
      v5 -= 16;
      if (!v5)
      {
        v4 = v15;
        break;
      }
    }
  }

  if (v4 != v17)
  {
    free(v4);
  }

  v9 = v11;
  *a2 = *__p;
  *(a2 + 16) = v9;
  *(a2 + 24) = 1;
}

double mlir::SymbolTable::getSymbolUses@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[2] = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  v12 = v14;
  v14[0] = mlir::SymbolRefAttr::get(a1);
  v14[1] = a2 | 4;
  v13 = 0x100000001;
  v9[0] = v14;
  v9[1] = __p;
  if ((a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v11[1] = v9;
    v10 = v11;
    if ((walkSymbolTable(a2 & 0xFFFFFFFFFFFFFFF8, 1, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>, &v10) & 0x100000000) == 0)
    {
LABEL_3:
      *a3 = 0;
      *(a3 + 24) = 0;
      if (v12 != v14)
      {
        free(v12);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      return result;
    }
  }

  {
    goto LABEL_3;
  }

  if (v12 != v14)
  {
    free(v12);
  }

  v6 = v8;
  result = *__p;
  *a3 = *__p;
  *(a3 + 16) = v6;
  *(a3 + 24) = 1;
  return result;
}

void mlir::SymbolTable::getSymbolUses(mlir::Block **this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[4] = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  collectSymbolScopes(&v16, this, *(a2 + 16));
  v5 = v16;
  if (v17)
  {
    *(v16 + 2 * v17 - 1) = a2 | 4;
    v5 = v16;
    if (v17)
    {
      v6 = 16 * v17;
      v7 = (v16 + 8);
      while (1)
      {
        v8 = *v7;
        v7 += 2;
        v13[0] = v5;
        v13[1] = __p;
        v9 = v8 & 0xFFFFFFFFFFFFFFF8;
        if ((v8 & 4) != 0 && v9)
        {
          v15[1] = v13;
          v14 = v15;
          if ((walkSymbolTable(v9, 1, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>, &v14) & 0x100000000) == 0)
          {
            goto LABEL_15;
          }
        }

        {
LABEL_15:
          *a3 = 0;
          *(a3 + 24) = 0;
          if (v16 != v18)
          {
            free(v16);
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          return;
        }

        v5 += 16;
        v6 -= 16;
        if (!v6)
        {
          v5 = v16;
          break;
        }
      }
    }
  }

  if (v5 != v18)
  {
    free(v5);
  }

  v10 = v12;
  *a3 = *__p;
  *(a3 + 16) = v10;
  *(a3 + 24) = 1;
}

BOOL mlir::SymbolTable::symbolKnownUseEmpty(uint64_t a1, uint64_t a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = 0x100000000;
  v3 = mlir::SymbolRefAttr::get(a1);
  v4 = *(a2 + 44);
  v5 = 0;
  if ((v4 & 0x7FFFFF) != 0)
  {
    v6 = ((a2 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v7 = 24 * (v4 & 0x7FFFFF);
    do
    {
      if (v5 >= HIDWORD(v23))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = (v22 + 16 * v5);
      *v8 = v3;
      v8[1] = v6 | 4;
      v5 = v23 + 1;
      LODWORD(v23) = v23 + 1;
      v6 += 24;
      v7 -= 24;
    }

    while (v7);
  }

  v9 = v22;
  if (!v5)
  {
    v12 = 1;
    if (v22 == v24)
    {
      return v12;
    }

    goto LABEL_21;
  }

  v10 = v22 + 16 * v5;
  do
  {
    while (1)
    {
      v19 = v9;
      v14 = *(v9 + 1);
      v15 = v14 & 0xFFFFFFFFFFFFFFF8;
      if ((v14 & 4) == 0 || !v15)
      {
        break;
      }

      v21[0] = llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<BOOL symbolKnownUseEmptyImpl<mlir::StringAttr,mlir::Operation>(mlir::StringAttr,mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>;
      v21[1] = &v19;
      v20 = v21;
      v16 = walkSymbolTable(v15, 1, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>, &v20);
      v12 = (v16 & 0x1FFFFFFFFLL) == 0x100000001;
      v9 += 16;
      if ((v16 & 0x1FFFFFFFFLL) != 0x100000001 || v9 == v10)
      {
        goto LABEL_20;
      }
    }

    v11 = walkSymbolUses(v15, llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<BOOL symbolKnownUseEmptyImpl<mlir::StringAttr,mlir::Operation>(mlir::StringAttr,mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>, &v19);
    v12 = (v11 & 0x1FFFFFFFFLL) == 0x100000001;
    v9 += 16;
  }

  while ((v11 & 0x1FFFFFFFFLL) == 0x100000001 && v9 != v10);
LABEL_20:
  v9 = v22;
  if (v22 != v24)
  {
LABEL_21:
    free(v9);
  }

  return v12;
}

{
  v11[2] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v11[0] = mlir::SymbolRefAttr::get(a1);
  v11[1] = a2 | 4;
  v10 = 0x100000001;
  v6 = v11;
  if ((a2 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    v3 = walkSymbolUses(0, llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<BOOL symbolKnownUseEmptyImpl<mlir::StringAttr,mlir::Region>(mlir::StringAttr,mlir::Region *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>, &v6);
    v4 = v9;
    if (v9 == v11)
    {
      return (v3 & 0x1FFFFFFFFLL) == 0x100000001;
    }

    goto LABEL_3;
  }

  v8[0] = llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<BOOL symbolKnownUseEmptyImpl<mlir::StringAttr,mlir::Region>(mlir::StringAttr,mlir::Region *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>;
  v8[1] = &v6;
  v7 = v8;
  v3 = walkSymbolTable(a2 & 0xFFFFFFFFFFFFFFF8, 1, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>, &v7);
  v4 = v9;
  if (v9 != v11)
  {
LABEL_3:
    free(v4);
  }

  return (v3 & 0x1FFFFFFFFLL) == 0x100000001;
}

BOOL mlir::SymbolTable::symbolKnownUseEmpty(mlir::Block **this, mlir::Operation *a2, mlir::Operation *a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  collectSymbolScopes(&v16, this, a2);
  v3 = v16;
  if (!v17)
  {
    v6 = 1;
    if (v16 == v18)
    {
      return v6;
    }

    goto LABEL_15;
  }

  v4 = v16 + 16 * v17;
  do
  {
    while (1)
    {
      v13 = v3;
      v8 = *(v3 + 1);
      v9 = v8 & 0xFFFFFFFFFFFFFFF8;
      if ((v8 & 4) == 0 || !v9)
      {
        break;
      }

      v15[0] = llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<BOOL symbolKnownUseEmptyImpl<mlir::Operation *,mlir::Operation>(mlir::Operation *,mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>;
      v15[1] = &v13;
      v14 = v15;
      v10 = walkSymbolTable(v9, 1, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>, &v14);
      v6 = (v10 & 0x1FFFFFFFFLL) == 0x100000001;
      v3 += 16;
      if ((v10 & 0x1FFFFFFFFLL) != 0x100000001 || v3 == v4)
      {
        goto LABEL_14;
      }
    }

    v5 = walkSymbolUses(v9, llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<BOOL symbolKnownUseEmptyImpl<mlir::Operation *,mlir::Operation>(mlir::Operation *,mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>, &v13);
    v6 = (v5 & 0x1FFFFFFFFLL) == 0x100000001;
    v3 += 16;
  }

  while ((v5 & 0x1FFFFFFFFLL) == 0x100000001 && v3 != v4);
LABEL_14:
  v3 = v16;
  if (v16 != v18)
  {
LABEL_15:
    free(v3);
  }

  return v6;
}

BOOL mlir::SymbolTable::symbolKnownUseEmpty(mlir::Block **this, unint64_t a2, mlir::Region *a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  collectSymbolScopes(&v17, this, *(a2 + 16));
  v4 = v17;
  if (!v18 || (*(v17 + 2 * v18 - 1) = a2 | 4, v4 = v17, !v18))
  {
    v7 = 1;
    if (v4 == v19)
    {
      return v7;
    }

LABEL_18:
    free(v4);
    return v7;
  }

  v5 = v17 + 16 * v18;
  do
  {
    while (1)
    {
      v14 = v4;
      v9 = *(v4 + 1);
      v10 = v9 & 0xFFFFFFFFFFFFFFF8;
      if ((v9 & 4) == 0 || !v10)
      {
        break;
      }

      v16[0] = llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<BOOL symbolKnownUseEmptyImpl<mlir::Operation *,mlir::Region>(mlir::Operation *,mlir::Region *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>;
      v16[1] = &v14;
      v15 = v16;
      v11 = walkSymbolTable(v10, 1, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>, &v15);
      v7 = (v11 & 0x1FFFFFFFFLL) == 0x100000001;
      v4 += 16;
      if ((v11 & 0x1FFFFFFFFLL) != 0x100000001 || v4 == v5)
      {
        goto LABEL_15;
      }
    }

    v6 = walkSymbolUses(v10, llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<BOOL symbolKnownUseEmptyImpl<mlir::Operation *,mlir::Region>(mlir::Operation *,mlir::Region *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>, &v14);
    v7 = (v6 & 0x1FFFFFFFFLL) == 0x100000001;
    v4 += 16;
  }

  while ((v6 & 0x1FFFFFFFFLL) == 0x100000001 && v4 != v5);
LABEL_15:
  v4 = v17;
  if (v17 != v19)
  {
    goto LABEL_18;
  }

  return v7;
}

uint64_t mlir::SymbolTable::replaceAllSymbolUses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = mlir::SymbolRefAttr::get(a2);
  v12 = 0;
  v5 = mlir::SymbolRefAttr::get(a1);
  v6 = *(a3 + 44);
  v7 = 0;
  if ((v6 & 0x7FFFFF) != 0)
  {
    v8 = ((a3 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a3 + 40);
    v9 = 24 * (v6 & 0x7FFFFF);
    do
    {
      if (v7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v5;
      v14 = v8 | 4;
      v7 = ++v12;
      v8 += 24;
      v9 -= 24;
    }

    while (v9);
  }

  if (v7)
  {
    generateNewRefAttr(v13, v11);
    operator new();
  }

  return 1;
}

void mlir::SymbolTable::replaceAllSymbolUses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v12 = mlir::SymbolRefAttr::get(a2);
  v14 = v16;
  v16[0] = mlir::SymbolRefAttr::get(a1);
  v16[1] = (a3 | 4);
  v15 = 0x100000001;
  v11 = v16[0];
  NewRefAttr = generateNewRefAttr(v16[0], v12);
  v9 = 0;
  v7 = 0u;
  *v8 = 0u;
  *v5 = 0u;
  *__p = 0u;
  operator new();
}

uint64_t mlir::SymbolTable::replaceAllSymbolUses(mlir::Block **a1, uint64_t a2, uint64_t a3)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v14 = a2;
  v13 = mlir::SymbolRefAttr::get(a2);
  collectSymbolScopes(&v15, a1, *(a3 + 16));
  v5 = v15;
  if (v16)
  {
    *(v15 + 2 * v16 - 1) = a3 | 4;
    v5 = v15;
    if (v16)
    {
      NewRefAttr = generateNewRefAttr(*v15, v13);
      v11 = 0;
      v9 = 0u;
      *v10 = 0u;
      *v7 = 0u;
      *__p = 0u;
      operator new();
    }
  }

  if (v5 != v17)
  {
    free(v5);
  }

  return 1;
}

uint64_t mlir::SymbolTableCollection::lookupSymbolIn(mlir::SymbolTableCollection *a1, mlir::Operation *a2, uint64_t a3)
{
  SymbolTable = mlir::SymbolTableCollection::getSymbolTable(a1, a2);
  v5 = *(SymbolTable + 24);
  if (v5)
  {
    v6 = *(SymbolTable + 8);
    v7 = v5 - 1;
    v8 = (v5 - 1) & ((a3 >> 4) ^ (a3 >> 9));
    v9 = *(v6 + 16 * v8);
    if (v9 == a3)
    {
      return *(v6 + 16 * v8 + 8);
    }

    v11 = 1;
    while (v9 != -4096)
    {
      v12 = v8 + v11++;
      v8 = v12 & v7;
      v9 = *(v6 + 16 * v8);
      if (v9 == a3)
      {
        return *(v6 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}

uint64_t mlir::SymbolTableCollection::getSymbolTable(mlir::SymbolTableCollection *this, mlir::Operation *a2)
{
  v5 = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::try_emplace<decltype(nullptr)>(this, &v5, &v3);
  if (v4 == 1)
  {
    operator new();
  }

  return *(v3 + 8);
}

uint64_t mlir::SymbolTableCollection::lookupSymbolIn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v8;
  v7 = 0x400000000;
  if (lookupSymbolInImpl(a2, a3, &v6, llvm::function_ref<mlir::Operation * ()(mlir::Operation *,mlir::StringAttr)>::callback_fn<mlir::SymbolTableCollection::lookupSymbolIn(mlir::Operation *,mlir::SymbolRefAttr,llvm::SmallVectorImpl<mlir::Operation *> &)::$_0>, &v5))
  {
    v3 = *(v6 + v7 - 1);
    if (v6 == v8)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v6 != v8)
  {
LABEL_5:
    free(v6);
  }

  return v3;
}

mlir::Operation *mlir::SymbolTableCollection::lookupNearestSymbolFrom(mlir::SymbolTableCollection *a1, mlir::SymbolTable *a2, uint64_t a3)
{
  result = mlir::SymbolTable::getNearestSymbolTable(a2, a2);
  if (result)
  {
    SymbolTable = mlir::SymbolTableCollection::getSymbolTable(a1, result);
    v7 = *(SymbolTable + 24);
    if (v7)
    {
      v8 = *(SymbolTable + 8);
      v9 = v7 - 1;
      v10 = (v7 - 1) & ((a3 >> 4) ^ (a3 >> 9));
      v11 = *(v8 + 16 * v10);
      if (v11 == a3)
      {
        return *(v8 + 16 * v10 + 8);
      }

      v12 = 1;
      while (v11 != -4096)
      {
        v13 = v10 + v12++;
        v10 = v13 & v9;
        v11 = *(v8 + 16 * v10);
        if (v11 == a3)
        {
          return *(v8 + 16 * v10 + 8);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t mlir::SymbolTableCollection::lookupNearestSymbolFrom(uint64_t a1, mlir::SymbolTable *a2, uint64_t a3)
{
  v11[4] = *MEMORY[0x277D85DE8];
  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(a2, a2);
  if (!NearestSymbolTable)
  {
    return 0;
  }

  v8 = a1;
  v9 = v11;
  v10 = 0x400000000;
  if (lookupSymbolInImpl(NearestSymbolTable, a3, &v9, llvm::function_ref<mlir::Operation * ()(mlir::Operation *,mlir::StringAttr)>::callback_fn<mlir::SymbolTableCollection::lookupSymbolIn(mlir::Operation *,mlir::SymbolRefAttr,llvm::SmallVectorImpl<mlir::Operation *> &)::$_0>, &v8))
  {
    v6 = *(v9 + v10 - 1);
    if (v9 == v11)
    {
      return v6;
    }

    goto LABEL_7;
  }

  v6 = 0;
  if (v9 != v11)
  {
LABEL_7:
    free(v9);
  }

  return v6;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::try_emplace<decltype(nullptr)>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v16, a2, &v18);
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

uint64_t mlir::LockedSymbolTableCollection::lookupSymbolIn(pthread_rwlock_t **a1, mlir::Operation *a2, uint64_t a3)
{
  SymbolTable = mlir::LockedSymbolTableCollection::getSymbolTable(a1, a2);
  v5 = *(SymbolTable + 24);
  if (v5)
  {
    v6 = *(SymbolTable + 8);
    v7 = v5 - 1;
    v8 = (v5 - 1) & ((a3 >> 4) ^ (a3 >> 9));
    v9 = *(v6 + 16 * v8);
    if (v9 == a3)
    {
      return *(v6 + 16 * v8 + 8);
    }

    v11 = 1;
    while (v9 != -4096)
    {
      v12 = v8 + v11++;
      v8 = v12 & v7;
      v9 = *(v6 + 16 * v8);
      if (v9 == a3)
      {
        return *(v6 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}

{
  v15 = a3;
  RootReference = mlir::SymbolRefAttr::getRootReference(&v15);
  SymbolTable = mlir::LockedSymbolTableCollection::getSymbolTable(a1, a2);
  v7 = *(SymbolTable + 24);
  if (v7)
  {
    v8 = *(SymbolTable + 8);
    v9 = v7 - 1;
    v10 = (v7 - 1) & ((RootReference >> 4) ^ (RootReference >> 9));
    v11 = *(v8 + 16 * v10);
    if (v11 == RootReference)
    {
      return *(v8 + 16 * v10 + 8);
    }

    v13 = 1;
    while (v11 != -4096)
    {
      v14 = v10 + v13++;
      v10 = v14 & v9;
      v11 = *(v8 + 16 * v10);
      if (v11 == RootReference)
      {
        return *(v8 + 16 * v10 + 8);
      }
    }
  }

  return 0;
}

uint64_t mlir::LockedSymbolTableCollection::getSymbolTable(pthread_rwlock_t **this, mlir::Operation *a2)
{
  llvm::sys::RWMutexImpl::lock_shared(this + 4);
  v4 = this[3];
  v5 = *&v4->__opaque[8];
  if (!v5)
  {
    goto LABEL_4;
  }

  sig = v4->__sig;
  v7 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v8 = *(sig + 16 * v7);
  if (v8 != a2)
  {
    v11 = 1;
    while (v8 != -4096)
    {
      v12 = v7 + v11++;
      v7 = v12 & (v5 - 1);
      v8 = *(sig + 16 * v7);
      if (v8 == a2)
      {
        goto LABEL_3;
      }
    }

LABEL_4:
    llvm::sys::RWMutexImpl::unlock_shared(this + 4);
    operator new();
  }

LABEL_3:
  if (v7 == v5)
  {
    goto LABEL_4;
  }

  v9 = *(sig + 16 * v7 + 8);
  llvm::sys::RWMutexImpl::unlock_shared(this + 4);
  return v9;
}

uint64_t mlir::LockedSymbolTableCollection::lookupSymbolIn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v8;
  v7 = 0x600000000;
  if (lookupSymbolInImpl(a2, a3, &v6, llvm::function_ref<mlir::Operation * ()(mlir::Operation *,mlir::StringAttr)>::callback_fn<mlir::LockedSymbolTableCollection::lookupSymbolIn(mlir::Operation *,mlir::SymbolRefAttr,llvm::SmallVectorImpl<mlir::Operation *> &)::$_0>, &v5))
  {
    v3 = *(v6 + v7 - 1);
    if (v6 == v8)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v6 != v8)
  {
LABEL_5:
    free(v6);
  }

  return v3;
}

uint64_t mlir::SymbolUserMap::SymbolUserMap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[6] = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 24) = 0;
  v5[2] = a1;
  v6[0] = v7;
  v6[1] = 0x600000000;
  v5[0] = v6;
  v5[1] = a2;
  mlir::SymbolTable::walkSymbolTables(a3, 0, llvm::function_ref<void ()(mlir::Operation *,BOOL)>::callback_fn<mlir::SymbolUserMap::SymbolUserMap(mlir::SymbolTableCollection &,mlir::Operation *)::$_0>, v5);
  if (v6[0] != v7)
  {
    free(v6[0]);
  }

  return a1;
}

{
  v7[6] = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 24) = 0;
  v5[2] = a1;
  v6[0] = v7;
  v6[1] = 0x600000000;
  v5[0] = v6;
  v5[1] = a2;
  mlir::SymbolTable::walkSymbolTables(a3, 0, llvm::function_ref<void ()(mlir::Operation *,BOOL)>::callback_fn<mlir::SymbolUserMap::SymbolUserMap(mlir::SymbolTableCollection &,mlir::Operation *)::$_0>, v5);
  if (v6[0] != v7)
  {
    free(v6[0]);
  }

  return a1;
}

uint64_t mlir::SymbolUserMap::replaceAllUsesWith(uint64_t result, mlir::Operation *a2, uint64_t a3)
{
  v5 = result;
  v7 = (result + 8);
  v6 = *(result + 8);
  v8 = *(result + 24);
  if (v8)
  {
    v9 = (v8 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v10 = v6 + 48 * v9;
    v11 = *v10;
    if (*v10 == a2)
    {
      goto LABEL_8;
    }

    v12 = 1;
    while (v11 != -4096)
    {
      v13 = v9 + v12++;
      v9 = v13 & (v8 - 1);
      v10 = v6 + 48 * v9;
      v11 = *v10;
      if (*v10 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v10 = v6 + 48 * v8;
LABEL_8:
  if (v10 == v6 + 48 * v8)
  {
    return result;
  }

  v14 = *(v10 + 40);
  if (v14)
  {
    v15 = *(v10 + 32);
    v16 = 8 * v14;
    do
    {
      v17 = *v15++;
      mlir::SymbolTable::replaceAllSymbolUses(a2, a3, v17);
      v16 -= 8;
    }

    while (v16);
  }

  v18 = *v5;
  v19 = *(a2 + 2);
  if (v19)
  {
    ParentOp = mlir::Block::getParentOp(v19);
    result = mlir::SymbolTableCollection::getSymbolTable(v18, ParentOp);
    v21 = *(result + 24);
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
    result = mlir::SymbolTableCollection::getSymbolTable(*v5, 0);
    v21 = *(result + 24);
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  v22 = *(result + 8);
  v23 = v21 - 1;
  v24 = (v21 - 1) & ((a3 >> 4) ^ (a3 >> 9));
  v25 = *(v22 + 16 * v24);
  if (v25 == a3)
  {
LABEL_17:
    v26 = *(v22 + 16 * v24 + 8);
    v44 = v26;
    if (v26 != a2)
    {
      goto LABEL_24;
    }

    return result;
  }

  v27 = 1;
  while (v25 != -4096)
  {
    v28 = v24 + v27++;
    v24 = v28 & v23;
    v25 = *(v22 + 16 * v24);
    if (v25 == a3)
    {
      goto LABEL_17;
    }
  }

LABEL_23:
  v26 = 0;
  v44 = 0;
  if (a2)
  {
LABEL_24:
    *v40 = 0u;
    v41 = 0;
    v42 = &v44;
    v43 = 0;
    v29 = *(v5 + 24);
    if (v29)
    {
      v30 = *(v5 + 8);
      v31 = v29 - 1;
      v32 = v31 & ((v26 >> 4) ^ (v26 >> 9));
      v33 = (v30 + 48 * v32);
      v34 = *v33;
      if (v26 == *v33)
      {
        goto LABEL_30;
      }

      v36 = 0;
      v37 = 1;
      while (v34 != -4096)
      {
        if (v36)
        {
          v38 = 0;
        }

        else
        {
          v38 = v34 == -8192;
        }

        if (v38)
        {
          v36 = v33;
        }

        v39 = v32 + v37++;
        v32 = v39 & v31;
        v33 = (v30 + 48 * v32);
        v34 = *v33;
        if (v26 == *v33)
        {
          goto LABEL_30;
        }
      }

      if (v36)
      {
        v35 = v36;
      }

      else
      {
        v35 = v33;
      }
    }

    else
    {
      v35 = 0;
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::InsertIntoBucket<mlir::Operation * const&,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>(v7, v35, &v44, v40);
    if (v42 != &v44)
    {
      free(v42);
    }

LABEL_30:
    llvm::deallocate_buffer(v40[0], (8 * v41));
  }

  return result;
}

uint64_t mlir::impl::parseOptionalVisibilityKeyword(mlir::impl *this, mlir::OpAsmParser *a2, mlir::NamedAttrList *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0uLL;
  v13[0] = xmmword_27983B620;
  v13[1] = *&off_27983B630;
  v14 = xmmword_27983B640;
  if (((*(*this + 424))(this, &v12, v13, 3) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*this + 32))(this);
  LOWORD(v14) = 261;
  v13[0] = v12;
  StringAttr = mlir::Builder::getStringAttr(v5, v13, v6);
  v8 = (*(*this + 32))(this);
  NamedAttr = mlir::Builder::getNamedAttr(v8, "sym_visibility", 0xE, StringAttr);
  mlir::NamedAttrList::push_back(a2, NamedAttr, v10);
  return 1;
}

uint64_t llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<mlir::detail::verifySymbolTable(mlir::Operation *)::$_0>(void *a1, uint64_t a2)
{
  if (!mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor(a2) || !a2)
  {
    return 0x100000001;
  }

  InterfaceFor = mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  return (*InterfaceFor)(InterfaceFor, a2, *a1) & 1 | 0x100000000;
}

uint64_t walkSymbolUses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 44) & 0x7FFFFF) != 1)
  {
    goto LABEL_4;
  }

  v6 = *(a1 + 48);
  if (*(v6 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v8 = *(v6 + 8);
    if (!mlir::StringAttr::getReferencedDialect(&v8))
    {
      return 0;
    }

LABEL_4:
    walkSymbolRefs(a1, a2, a3);
  }

  if (*(v6 + 24))
  {
    goto LABEL_4;
  }

  return 0;
}

void walkSymbolRefs(mlir::Operation *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v8[0] = a2;
  v8[1] = a3;
  v7 = a1;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v11[0] = &unk_28689D388;
  v11[1] = v8;
  v11[2] = &v7;
  v12 = v11;
  *(&v9[0] + 1) = std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<mlir::WalkResult ()(mlir::Attribute)>>(v9, v11);
  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))();
  }

  mlir::AttrTypeWalker::walkImpl(v9, AttrDictionary, 0);
  mlir::AttrTypeWalker::~AttrTypeWalker(v9, v4, v5, v6);
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS2_9OperationEN4llvm12function_refIFNS2_10WalkResultENS2_11SymbolTable9SymbolUseEEEEE3__0NS2_13SymbolRefAttrENS2_9AttributeES9_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSG_E_NS_9allocatorISP_EEFS9_SG_EE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689D388;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS2_9OperationEN4llvm12function_refIFNS2_10WalkResultENS2_11SymbolTable9SymbolUseEEEEE3__0NS2_13SymbolRefAttrENS2_9AttributeES9_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSG_E_NS_9allocatorISP_EEFS9_SG_EEclEOSG_(uint64_t a1, uint64_t a2)
{
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 2 * ((**(a1 + 8))(*(*(a1 + 8) + 8), **(a1 + 16)) != 0);
  }

  else
  {
    return 1;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS2_9OperationEN4llvm12function_refIFNS2_10WalkResultENS2_11SymbolTable9SymbolUseEEEEE3__0NS2_13SymbolRefAttrENS2_9AttributeES9_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSG_E_NS_9allocatorISP_EEFS9_SG_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS_9OperationEN4llvm12function_refIFNS_10WalkResultENS_11SymbolTable9SymbolUseEEEEE3$_0NS_13SymbolRefAttrENS_9AttributeES6_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSD_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS_9OperationEN4llvm12function_refIFNS_10WalkResultENS_11SymbolTable9SymbolUseEEEEE3$_0NS_13SymbolRefAttrENS_9AttributeES6_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSD_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS_9OperationEN4llvm12function_refIFNS_10WalkResultENS_11SymbolTable9SymbolUseEEEEE3$_0NS_13SymbolRefAttrENS_9AttributeES6_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSD_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS_9OperationEN4llvm12function_refIFNS_10WalkResultENS_11SymbolTable9SymbolUseEEEEE3$_0NS_13SymbolRefAttrENS_9AttributeES6_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSD_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>(uint64_t **a1, uint64_t a2)
{
  if ((*(a2 + 44) & 0x7FFFFF) != 1)
  {
    goto LABEL_4;
  }

  v2 = *(a2 + 48);
  if (*(v2 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v8 = *(v2 + 8);
    v3 = a1;
    v4 = a2;
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v8);
    a2 = v4;
    v6 = ReferencedDialect;
    a1 = v3;
    if (!v6)
    {
      return 0;
    }

LABEL_4:
    walkSymbolRefs(a2, **a1, (*a1)[1]);
  }

  if (*(v2 + 24))
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<std::optional<mlir::SymbolTable::UseRange> getSymbolUsesImpl<mlir::Operation *>(mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  *&v5 = a2;
  *(&v5 + 1) = a3;
  std::vector<mlir::SymbolTable::SymbolUse>::push_back[abi:nn200100](v3, &v5);
  return 1;
}

void std::vector<mlir::SymbolTable::SymbolUse>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
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
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
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

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<std::optional<mlir::SymbolTable::UseRange> getSymbolUsesImpl<llvm::MutableArrayRef<mlir::Region>>(llvm::MutableArrayRef<mlir::Region>)::{lambda(mlir::SymbolTable::SymbolUse)#1}>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  *&v5 = a2;
  *(&v5 + 1) = a3;
  std::vector<mlir::SymbolTable::SymbolUse>::push_back[abi:nn200100](v3, &v5);
  return 1;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<std::optional<mlir::WalkResult> anonymous namespace::SymbolScope::walk<std::optional<mlir::SymbolTable::UseRange> getSymbolUsesImpl<mlir::StringAttr,mlir::Operation>(mlir::StringAttr,mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1},(void *)0>(mlir::StringAttr)::{lambda(mlir::SymbolTable::SymbolUse)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v5 = a2;
  *(&v5 + 1) = a3;
  if (isReferencePrefixOf(**a1, a3))
  {
    std::vector<mlir::SymbolTable::SymbolUse>::push_back[abi:nn200100](*(a1 + 8), &v5);
  }

  return 1;
}

BOOL isReferencePrefixOf(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  if (a2 == a1)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v19 = v4;
  if (v4)
  {
    mlir::SymbolRefAttr::getNestedReferences(&v19);
    if (!v5)
    {
      return 0;
    }
  }

  RootReference = mlir::SymbolRefAttr::getRootReference(&v17);
  if (RootReference != mlir::SymbolRefAttr::getRootReference(&v18))
  {
    return 0;
  }

  NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v17);
  v9 = v8;
  v10 = mlir::SymbolRefAttr::getNestedReferences(&v18);
  if (v11 >= v9)
  {
    return 0;
  }

  if (v11)
  {
    v12 = 8 * v11 - 8;
    do
    {
      v14 = *NestedReferences++;
      v13 = v14;
      v15 = *v10++;
      v16 = v15 == v13;
      v2 = v15 == v13;
      v16 = !v16 || v12 == 0;
      v12 -= 8;
    }

    while (!v16);
    return v2;
  }

  return 1;
}

void collectSymbolScopes(mlir::Operation *a1, mlir::Block **a2, unint64_t a3)
{
  v76[1] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "sym_name", 8), (v7 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get((a2 + 7), "sym_name", 8uLL);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v8 = InherentAttr;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v66 = v70;
  v67 = v70;
  v68 = 4;
  v69 = 0;
  v71 = v73;
  v72 = 0x400000000;
  ParentOp = a3;
  while (ParentOp != a2)
  {
    if (v67 != v66)
    {
      goto LABEL_12;
    }

    v13 = HIDWORD(v68);
    if (HIDWORD(v68))
    {
      v14 = 8 * HIDWORD(v68);
      v15 = v66;
      while (*v15 != ParentOp)
      {
        ++v15;
        v14 -= 8;
        if (!v14)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_15;
    }

LABEL_22:
    if (HIDWORD(v68) < v68)
    {
      ++HIDWORD(v68);
      v66[v13] = ParentOp;
      v11 = v72;
      if (v72 >= HIDWORD(v72))
      {
LABEL_24:
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }

    else
    {
LABEL_12:
      llvm::SmallPtrSetImplBase::insert_imp_big(&v66, ParentOp);
      if ((v10 & 1) == 0)
      {
        goto LABEL_15;
      }

      v11 = v72;
      if (v72 >= HIDWORD(v72))
      {
        goto LABEL_24;
      }
    }

    *(v71 + v11) = ParentOp;
    LODWORD(v72) = v72 + 1;
LABEL_15:
    v12 = ParentOp[2];
    if (v12)
    {
      ParentOp = mlir::Block::getParentOp(v12);
      if (ParentOp)
      {
        continue;
      }
    }

    v60 = a3;
    v16 = a2[2];
    if (v16)
    {
      v17 = mlir::Block::getParentOp(v16);
    }

    else
    {
      v17 = 0;
    }

    while (1)
    {
      v22 = v66;
      v23 = v67;
      if (v67 != v66)
      {
        break;
      }

      v26 = HIDWORD(v68);
      if (!HIDWORD(v68))
      {
LABEL_46:
        v24 = &v67[HIDWORD(v68)];
        v25 = v67;
LABEL_47:
        if (v25 == v23)
        {
          v30 = v26;
        }

        else
        {
          v30 = v68;
        }

        if (v24 != &v25[v30])
        {
          goto LABEL_57;
        }

        goto LABEL_51;
      }

      v29 = 8 * HIDWORD(v68);
      while (*v22 != v17)
      {
        v22 += 8;
        v29 -= 8;
        if (!v29)
        {
          goto LABEL_46;
        }
      }

      if (v22 != &v67[HIDWORD(v68)])
      {
        goto LABEL_57;
      }

LABEL_51:
      v31 = *(v17 + 16);
      if (!v31)
      {
        v17 = 0;
LABEL_57:
        v63 = v65;
        v64 = 0x200000001;
        Context = mlir::Attribute::getContext((a2 + 3));
        v34 = mlir::SymbolRefAttr::get(v8);
        v65[0] = v34;
        v35 = a2[2];
        if (v35)
        {
          v36 = mlir::Block::getParentOp(v35);
          if (v36 != v17)
          {
            goto LABEL_59;
          }

LABEL_90:
          v52 = a3;
          if (v17 != a3)
          {
            goto LABEL_91;
          }

          goto LABEL_92;
        }

        v36 = 0;
        if (!v17)
        {
          goto LABEL_90;
        }

LABEL_59:
        v74 = v76;
        v76[0] = v34;
        v75 = 0x100000001;
        v62 = 261;
        v61[0] = "sym_name";
        v61[1] = 8;
        v37 = mlir::StringAttr::get(Context, v61, v33);
        {
          goto LABEL_62;
        }

        while (2)
        {
          mlir::SymbolTable::getNearestSymbolTable();
LABEL_62:
          if (!(*(**(v36 + 48) + 32))(*(v36 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
          {
LABEL_84:
            v50 = 0;
            v51 = v74;
            if (v74 == v76)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          }

          v61[0] = v37;
          v38 = v37;
          if (*(v36 + 47))
          {
            Value = mlir::StringAttr::getValue(v61);
            v41 = mlir::Operation::getInherentAttr(v36, Value, v40);
            if ((v42 & 1) == 0)
            {
              v38 = v61[0];
              goto LABEL_66;
            }
          }

          else
          {
LABEL_66:
            v41 = mlir::DictionaryAttr::get(v36 + 56, v38);
          }

          v43 = v41;
          if (!v41 || *(*v41 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            goto LABEL_84;
          }

          v44 = mlir::SymbolRefAttr::get(v41, v74, v75);
          if (v64 >= HIDWORD(v64))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v63 + v64) = v44;
          LODWORD(v64) = v64 + 1;
          v45 = *(v36 + 16);
          if (v45)
          {
            v36 = mlir::Block::getParentOp(v45);
            if (v36 == v17)
            {
              goto LABEL_110;
            }
          }

          else
          {
            v36 = 0;
            if (!v17)
            {
LABEL_110:
              v50 = 1;
              v51 = v74;
              if (v74 == v76)
              {
LABEL_86:
                v52 = v60;
                if (v17 != v60)
                {
                  if ((v50 & 1) == 0)
                  {
                    *a1 = a1 + 16;
                    *(a1 + 1) = 0x200000000;
                    goto LABEL_101;
                  }

LABEL_91:
                  *(a1 + 2) = *(v63 + v64 - 1);
                  *a1 = a1 + 16;
                  *(a1 + 3) = v52 & 0xFFFFFFFFFFFFFFFBLL;
                  *(a1 + 1) = 0x200000001;
LABEL_101:
                  if (v63 != v65)
                  {
                    free(v63);
                  }

                  v21 = v71;
                  if (v71 != v73)
                  {
LABEL_104:
                    free(v21);
                  }

                  goto LABEL_105;
                }

LABEL_92:
                *a1 = a1 + 16;
                *(a1 + 1) = 0x200000000;
                v53 = a2[2];
                if (v53)
                {
                  v53 = mlir::Block::getParentOp(v53);
                }

                if (v64)
                {
                  v54 = 0;
                  v55 = 8 * v64;
                  do
                  {
                    v56 = *(v53 + 40);
                    v57 = *(v53 + 44);
                    v58 = *(a1 + 2);
                    if (v58 >= *(a1 + 3))
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v59 = (*a1 + 16 * v58);
                    *v59 = *(v63 + v54);
                    v59[1] = (((v53 + 16 * ((v57 >> 23) & 1) + ((v57 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v56) | 4;
                    ++*(a1 + 2);
                    v53 = *(v53 + 16);
                    if (v53)
                    {
                      v53 = mlir::Block::getParentOp(v53);
                    }

                    v54 += 8;
                  }

                  while (v55 != v54);
                }

                goto LABEL_101;
              }

LABEL_85:
              free(v51);
              goto LABEL_86;
            }
          }

          v46 = v74;
          v47 = mlir::SymbolRefAttr::get(v43);
          if (&v74[2 * v75] == v46)
          {
            if (v75 >= HIDWORD(v75))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *&v74[2 * v75] = v47;
            LODWORD(v75) = v75 + 1;
            {
              continue;
            }
          }

          else
          {
            if (v75 >= HIDWORD(v75))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *&v74[2 * v75] = *&v74[2 * v75 - 2];
            v48 = v75;
            v49 = &v74[2 * v75 - 2];
            if (v49 != v46)
            {
              memmove(v46 + 1, v46, v49 - v46);
              v48 = v75;
            }

            LODWORD(v75) = v48 + 1;
            *v46 = v47;
            {
              continue;
            }
          }

          goto LABEL_62;
        }
      }

      v17 = mlir::Block::getParentOp(v31);
      if (!v17)
      {
        goto LABEL_57;
      }
    }

    v24 = llvm::SmallPtrSetImplBase::doFind(&v66, v17);
    v23 = v66;
    v25 = v67;
    v26 = HIDWORD(v68);
    if (!v24)
    {
      v27 = v68;
      if (v67 == v66)
      {
        v27 = HIDWORD(v68);
        v28 = HIDWORD(v68);
      }

      else
      {
        v28 = v68;
      }

      if (&v67[v27] != &v67[v28])
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

    goto LABEL_47;
  }

  v18 = *(a3 + 16);
  if (v18)
  {
    v18 = mlir::Block::getParentOp(v18);
  }

  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(v18, v7);
  v20 = a2[2];
  if (v20)
  {
    v20 = mlir::Block::getParentOp(v20);
  }

  if (NearestSymbolTable == v20)
  {
    *(a1 + 2) = mlir::SymbolRefAttr::get(v8);
    *a1 = a1 + 16;
    *(a1 + 3) = a3 & 0xFFFFFFFFFFFFFFFBLL;
    *(a1 + 1) = 0x200000001;
    v21 = v71;
    if (v71 != v73)
    {
      goto LABEL_104;
    }
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 1) = 0x200000000;
    v21 = v71;
    if (v71 != v73)
    {
      goto LABEL_104;
    }
  }

LABEL_105:
  if (v67 != v66)
  {
    free(v67);
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<std::optional<mlir::WalkResult> anonymous namespace::SymbolScope::walk<std::optional<mlir::SymbolTable::UseRange> getSymbolUsesImpl<mlir::Operation *,mlir::Operation>(mlir::Operation *,mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1},(void *)0>(mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v5 = a2;
  *(&v5 + 1) = a3;
  if (isReferencePrefixOf(**a1, a3))
  {
    std::vector<mlir::SymbolTable::SymbolUse>::push_back[abi:nn200100](*(a1 + 8), &v5);
  }

  return 1;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<std::optional<mlir::WalkResult> anonymous namespace::SymbolScope::walk<std::optional<mlir::SymbolTable::UseRange> getSymbolUsesImpl<mlir::StringAttr,mlir::Region>(mlir::StringAttr,mlir::Region *)::{lambda(mlir::SymbolTable::SymbolUse)#1},(void *)0>(mlir::StringAttr)::{lambda(mlir::SymbolTable::SymbolUse)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v5 = a2;
  *(&v5 + 1) = a3;
  if (isReferencePrefixOf(**a1, a3))
  {
    std::vector<mlir::SymbolTable::SymbolUse>::push_back[abi:nn200100](*(a1 + 8), &v5);
  }

  return 1;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<std::optional<mlir::WalkResult> anonymous namespace::SymbolScope::walk<std::optional<mlir::SymbolTable::UseRange> getSymbolUsesImpl<mlir::Operation *,mlir::Region>(mlir::Operation *,mlir::Region *)::{lambda(mlir::SymbolTable::SymbolUse)#1},(void *)0>(mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v5 = a2;
  *(&v5 + 1) = a3;
  if (isReferencePrefixOf(**a1, a3))
  {
    std::vector<mlir::SymbolTable::SymbolUse>::push_back[abi:nn200100](*(a1 + 8), &v5);
  }

  return 1;
}

uint64_t generateNewRefAttr(void *a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v12 = a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  v13 = v3;
  if (!v3 || (mlir::SymbolRefAttr::getNestedReferences(&v13), v4))
  {
    NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v12);
    v7 = v5;
    v13 = v15;
    v14 = 0x200000000;
    if (v5 >= 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v5)
    {
      memcpy(v15, NestedReferences, 8 * v5);
      v8 = v14;
      v9 = v13;
    }

    else
    {
      v8 = 0;
      v9 = v15;
    }

    LODWORD(v14) = v8 + v7;
    v9[(v8 + v7) - 1] = a2;
    RootReference = mlir::SymbolRefAttr::getRootReference(&v12);
    a2 = mlir::SymbolRefAttr::get(RootReference, v13, v14);
    if (v13 != v15)
    {
      free(v13);
    }
  }

  return a2;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplINS2_10StringAttrENS2_9OperationEEN4llvm13LogicalResultET_S9_PT0_EUlNS2_13SymbolRefAttrEE_SG_NS2_9AttributeENS_4pairISI_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSJ_ISN_SK_EEEEEEvE4typeEOSD_EUlSI_E_NS_9allocatorISV_EEFNSP_ISL_EESI_EE7__cloneEPNS0_6__baseISZ_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689D408;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplINS2_10StringAttrENS2_9OperationEEN4llvm13LogicalResultET_S9_PT0_EUlNS2_13SymbolRefAttrEE_SG_NS2_9AttributeENS_4pairISI_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSJ_ISN_SK_EEEEEEvE4typeEOSD_EUlSI_E_NS_9allocatorISV_EEFNSP_ISL_EESI_EEclEOSI_(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v16 = *a2;
    if (*a1[1] == v3)
    {
      v3 = *a1[2];
    }

    else
    {
      v6 = a3;
      v7 = isReferencePrefixOf(*a1[1], v3);
      a3 = v6;
      if (v7)
      {
        mlir::SymbolRefAttr::getNestedReferences(a1[1]);
        v9 = v8;
        NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v16);
        v12 = v10;
        if (v9)
        {
          v17 = v19;
          v18 = 0x400000000;
          if (v10 >= 5)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v10)
          {
            memcpy(v19, NestedReferences, 8 * v10);
            v13 = v18;
            v14 = v17;
          }

          else
          {
            v13 = 0;
            v14 = v19;
          }

          LODWORD(v18) = v13 + v12;
          v14[v9 - 1] = *a1[4];
          RootReference = mlir::SymbolRefAttr::getRootReference(&v16);
          v3 = mlir::SymbolRefAttr::get(RootReference, v17, v18);
          if (v17 != v19)
          {
            free(v17);
          }
        }

        else
        {
          v3 = mlir::SymbolRefAttr::get(*a1[3], NestedReferences, v10);
        }

        a3 = v6;
      }
    }

    *a3 = v3;
    *(a3 + 8) = 2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v4;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplINS2_10StringAttrENS2_9OperationEEN4llvm13LogicalResultET_S9_PT0_EUlNS2_13SymbolRefAttrEE_SG_NS2_9AttributeENS_4pairISI_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSJ_ISN_SK_EEEEEEvE4typeEOSD_EUlSI_E_NS_9allocatorISV_EEFNSP_ISL_EESI_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplINS_10StringAttrENS_9OperationEEN4llvm13LogicalResultET_S6_PT0_EUlNS_13SymbolRefAttrEE_SD_NS_9AttributeENSt3__14pairISF_NS_10WalkResultEEEEENSG_9enable_ifIXoontsr3stdE9is_same_vISB_T1_Entsr3stdE16is_convertible_vIT2_NSG_8optionalINSH_ISL_SI_EEEEEEvE4typeEOSA_EUlSF_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplINS_10StringAttrENS_9OperationEEN4llvm13LogicalResultET_S6_PT0_EUlNS_13SymbolRefAttrEE_SD_NS_9AttributeENSt3__14pairISF_NS_10WalkResultEEEEENSG_9enable_ifIXoontsr3stdE9is_same_vISB_T1_Entsr3stdE16is_convertible_vIT2_NSG_8optionalINSH_ISL_SI_EEEEEEvE4typeEOSA_EUlSF_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplINS_10StringAttrENS_9OperationEEN4llvm13LogicalResultET_S6_PT0_EUlNS_13SymbolRefAttrEE_SD_NS_9AttributeENSt3__14pairISF_NS_10WalkResultEEEEENSG_9enable_ifIXoontsr3stdE9is_same_vISB_T1_Entsr3stdE16is_convertible_vIT2_NSG_8optionalINSH_ISL_SI_EEEEEEvE4typeEOSA_EUlSF_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplINS_10StringAttrENS_9OperationEEN4llvm13LogicalResultET_S6_PT0_EUlNS_13SymbolRefAttrEE_SD_NS_9AttributeENSt3__14pairISF_NS_10WalkResultEEEEENSG_9enable_ifIXoontsr3stdE9is_same_vISB_T1_Entsr3stdE16is_convertible_vIT2_NSG_8optionalINSH_ISL_SI_EEEEEEvE4typeEOSA_EUlSF_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t walkSymbolTable(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = a2(a3, a1);
  if ((v6 & 0x1FFFFFFFFLL) == 0x100000001)
  {
    {
      mlir::SymbolTable::walkSymbolTables();
    }

    if (((*(**(a1 + 48) + 32))(*(a1 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
    {
      v7 = *(a1 + 44);
      v8 = v7 & 0x7FFFFF;
      if ((v7 & 0x7FFFFF) != 0)
      {
        v9 = ((a1 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
      }

      else
      {
        v9 = 0;
        v8 = 0;
      }

      v6 = walkSymbolTable(v9, v8, a2, a3);
    }
  }

  return v6 & 0xFFFFFFFFFFLL;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS2_9OperationES9_EN4llvm13LogicalResultET_NS2_10StringAttrEPT0_EUlNS2_13SymbolRefAttrEE_SH_NS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISF_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSK_ISO_SL_EEEEEEvE4typeEOSD_EUlSJ_E_NS_9allocatorISW_EEFNSQ_ISM_EESJ_EE7__cloneEPNS0_6__baseIS10_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689D488;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS2_9OperationES9_EN4llvm13LogicalResultET_NS2_10StringAttrEPT0_EUlNS2_13SymbolRefAttrEE_SH_NS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISF_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSK_ISO_SL_EEEEEEvE4typeEOSD_EUlSJ_E_NS_9allocatorISW_EEFNSQ_ISM_EESJ_EEclEOSJ_(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v16 = *a2;
    if (*a1[1] == v3)
    {
      v3 = *a1[2];
    }

    else
    {
      v6 = a3;
      v7 = isReferencePrefixOf(*a1[1], v3);
      a3 = v6;
      if (v7)
      {
        mlir::SymbolRefAttr::getNestedReferences(a1[1]);
        v9 = v8;
        NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v16);
        v12 = v10;
        if (v9)
        {
          v17 = v19;
          v18 = 0x400000000;
          if (v10 >= 5)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v10)
          {
            memcpy(v19, NestedReferences, 8 * v10);
            v13 = v18;
            v14 = v17;
          }

          else
          {
            v13 = 0;
            v14 = v19;
          }

          LODWORD(v18) = v13 + v12;
          v14[v9 - 1] = *a1[4];
          RootReference = mlir::SymbolRefAttr::getRootReference(&v16);
          v3 = mlir::SymbolRefAttr::get(RootReference, v17, v18);
          if (v17 != v19)
          {
            free(v17);
          }
        }

        else
        {
          v3 = mlir::SymbolRefAttr::get(*a1[3], NestedReferences, v10);
        }

        a3 = v6;
      }
    }

    *a3 = v3;
    *(a3 + 8) = 2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v4;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS2_9OperationES9_EN4llvm13LogicalResultET_NS2_10StringAttrEPT0_EUlNS2_13SymbolRefAttrEE_SH_NS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISF_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSK_ISO_SL_EEEEEEvE4typeEOSD_EUlSJ_E_NS_9allocatorISW_EEFNSQ_ISM_EESJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS_9OperationES6_EN4llvm13LogicalResultET_NS_10StringAttrEPT0_EUlNS_13SymbolRefAttrEE_SE_NS_9AttributeENSt3__14pairISG_NS_10WalkResultEEEEENSH_9enable_ifIXoontsr3stdE9is_same_vISC_T1_Entsr3stdE16is_convertible_vIT2_NSH_8optionalINSI_ISM_SJ_EEEEEEvE4typeEOSA_EUlSG_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS_9OperationES6_EN4llvm13LogicalResultET_NS_10StringAttrEPT0_EUlNS_13SymbolRefAttrEE_SE_NS_9AttributeENSt3__14pairISG_NS_10WalkResultEEEEENSH_9enable_ifIXoontsr3stdE9is_same_vISC_T1_Entsr3stdE16is_convertible_vIT2_NSH_8optionalINSI_ISM_SJ_EEEEEEvE4typeEOSA_EUlSG_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS_9OperationES6_EN4llvm13LogicalResultET_NS_10StringAttrEPT0_EUlNS_13SymbolRefAttrEE_SE_NS_9AttributeENSt3__14pairISG_NS_10WalkResultEEEEENSH_9enable_ifIXoontsr3stdE9is_same_vISC_T1_Entsr3stdE16is_convertible_vIT2_NSH_8optionalINSI_ISM_SJ_EEEEEEvE4typeEOSA_EUlSG_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS_9OperationES6_EN4llvm13LogicalResultET_NS_10StringAttrEPT0_EUlNS_13SymbolRefAttrEE_SE_NS_9AttributeENSt3__14pairISG_NS_10WalkResultEEEEENSH_9enable_ifIXoontsr3stdE9is_same_vISC_T1_Entsr3stdE16is_convertible_vIT2_NSH_8optionalINSI_ISM_SJ_EEEEEEvE4typeEOSA_EUlSG_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplINS2_10StringAttrENS2_6RegionEEN4llvm13LogicalResultET_S9_PT0_EUlNS2_13SymbolRefAttrEE_SG_NS2_9AttributeENS_4pairISI_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSJ_ISN_SK_EEEEEEvE4typeEOSD_EUlSI_E_NS_9allocatorISV_EEFNSP_ISL_EESI_EE7__cloneEPNS0_6__baseISZ_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689D508;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplINS2_10StringAttrENS2_6RegionEEN4llvm13LogicalResultET_S9_PT0_EUlNS2_13SymbolRefAttrEE_SG_NS2_9AttributeENS_4pairISI_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSJ_ISN_SK_EEEEEEvE4typeEOSD_EUlSI_E_NS_9allocatorISV_EEFNSP_ISL_EESI_EEclEOSI_(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v16 = *a2;
    if (*a1[1] == v3)
    {
      v3 = *a1[2];
    }

    else
    {
      v6 = a3;
      v7 = isReferencePrefixOf(*a1[1], v3);
      a3 = v6;
      if (v7)
      {
        mlir::SymbolRefAttr::getNestedReferences(a1[1]);
        v9 = v8;
        NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v16);
        v12 = v10;
        if (v9)
        {
          v17 = v19;
          v18 = 0x400000000;
          if (v10 >= 5)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v10)
          {
            memcpy(v19, NestedReferences, 8 * v10);
            v13 = v18;
            v14 = v17;
          }

          else
          {
            v13 = 0;
            v14 = v19;
          }

          LODWORD(v18) = v13 + v12;
          v14[v9 - 1] = *a1[4];
          RootReference = mlir::SymbolRefAttr::getRootReference(&v16);
          v3 = mlir::SymbolRefAttr::get(RootReference, v17, v18);
          if (v17 != v19)
          {
            free(v17);
          }
        }

        else
        {
          v3 = mlir::SymbolRefAttr::get(*a1[3], NestedReferences, v10);
        }

        a3 = v6;
      }
    }

    *a3 = v3;
    *(a3 + 8) = 2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v4;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplINS2_10StringAttrENS2_6RegionEEN4llvm13LogicalResultET_S9_PT0_EUlNS2_13SymbolRefAttrEE_SG_NS2_9AttributeENS_4pairISI_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSJ_ISN_SK_EEEEEEvE4typeEOSD_EUlSI_E_NS_9allocatorISV_EEFNSP_ISL_EESI_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplINS_10StringAttrENS_6RegionEEN4llvm13LogicalResultET_S6_PT0_EUlNS_13SymbolRefAttrEE_SD_NS_9AttributeENSt3__14pairISF_NS_10WalkResultEEEEENSG_9enable_ifIXoontsr3stdE9is_same_vISB_T1_Entsr3stdE16is_convertible_vIT2_NSG_8optionalINSH_ISL_SI_EEEEEEvE4typeEOSA_EUlSF_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplINS_10StringAttrENS_6RegionEEN4llvm13LogicalResultET_S6_PT0_EUlNS_13SymbolRefAttrEE_SD_NS_9AttributeENSt3__14pairISF_NS_10WalkResultEEEEENSG_9enable_ifIXoontsr3stdE9is_same_vISB_T1_Entsr3stdE16is_convertible_vIT2_NSG_8optionalINSH_ISL_SI_EEEEEEvE4typeEOSA_EUlSF_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplINS_10StringAttrENS_6RegionEEN4llvm13LogicalResultET_S6_PT0_EUlNS_13SymbolRefAttrEE_SD_NS_9AttributeENSt3__14pairISF_NS_10WalkResultEEEEENSG_9enable_ifIXoontsr3stdE9is_same_vISB_T1_Entsr3stdE16is_convertible_vIT2_NSG_8optionalINSH_ISL_SI_EEEEEEvE4typeEOSA_EUlSF_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplINS_10StringAttrENS_6RegionEEN4llvm13LogicalResultET_S6_PT0_EUlNS_13SymbolRefAttrEE_SD_NS_9AttributeENSt3__14pairISF_NS_10WalkResultEEEEENSG_9enable_ifIXoontsr3stdE9is_same_vISB_T1_Entsr3stdE16is_convertible_vIT2_NSG_8optionalINSH_ISL_SI_EEEEEEvE4typeEOSA_EUlSF_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS2_9OperationENS2_6RegionEEN4llvm13LogicalResultET_NS2_10StringAttrEPT0_EUlNS2_13SymbolRefAttrEE_SI_NS2_9AttributeENS_4pairISK_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISG_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSL_ISP_SM_EEEEEEvE4typeEOSE_EUlSK_E_NS_9allocatorISX_EEFNSR_ISN_EESK_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689D588;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS2_9OperationENS2_6RegionEEN4llvm13LogicalResultET_NS2_10StringAttrEPT0_EUlNS2_13SymbolRefAttrEE_SI_NS2_9AttributeENS_4pairISK_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISG_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSL_ISP_SM_EEEEEEvE4typeEOSE_EUlSK_E_NS_9allocatorISX_EEFNSR_ISN_EESK_EEclEOSK_(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v16 = *a2;
    if (*a1[1] == v3)
    {
      v3 = *a1[2];
    }

    else
    {
      v6 = a3;
      v7 = isReferencePrefixOf(*a1[1], v3);
      a3 = v6;
      if (v7)
      {
        mlir::SymbolRefAttr::getNestedReferences(a1[1]);
        v9 = v8;
        NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v16);
        v12 = v10;
        if (v9)
        {
          v17 = v19;
          v18 = 0x400000000;
          if (v10 >= 5)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v10)
          {
            memcpy(v19, NestedReferences, 8 * v10);
            v13 = v18;
            v14 = v17;
          }

          else
          {
            v13 = 0;
            v14 = v19;
          }

          LODWORD(v18) = v13 + v12;
          v14[v9 - 1] = *a1[4];
          RootReference = mlir::SymbolRefAttr::getRootReference(&v16);
          v3 = mlir::SymbolRefAttr::get(RootReference, v17, v18);
          if (v17 != v19)
          {
            free(v17);
          }
        }

        else
        {
          v3 = mlir::SymbolRefAttr::get(*a1[3], NestedReferences, v10);
        }

        a3 = v6;
      }
    }

    *a3 = v3;
    *(a3 + 8) = 2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v4;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS2_9OperationENS2_6RegionEEN4llvm13LogicalResultET_NS2_10StringAttrEPT0_EUlNS2_13SymbolRefAttrEE_SI_NS2_9AttributeENS_4pairISK_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISG_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSL_ISP_SM_EEEEEEvE4typeEOSE_EUlSK_E_NS_9allocatorISX_EEFNSR_ISN_EESK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS_9OperationENS_6RegionEEN4llvm13LogicalResultET_NS_10StringAttrEPT0_EUlNS_13SymbolRefAttrEE_SF_NS_9AttributeENSt3__14pairISH_NS_10WalkResultEEEEENSI_9enable_ifIXoontsr3stdE9is_same_vISD_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSJ_ISN_SK_EEEEEEvE4typeEOSB_EUlSH_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS_9OperationENS_6RegionEEN4llvm13LogicalResultET_NS_10StringAttrEPT0_EUlNS_13SymbolRefAttrEE_SF_NS_9AttributeENSt3__14pairISH_NS_10WalkResultEEEEENSI_9enable_ifIXoontsr3stdE9is_same_vISD_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSJ_ISN_SK_EEEEEEvE4typeEOSB_EUlSH_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS_9OperationENS_6RegionEEN4llvm13LogicalResultET_NS_10StringAttrEPT0_EUlNS_13SymbolRefAttrEE_SF_NS_9AttributeENSt3__14pairISH_NS_10WalkResultEEEEENSI_9enable_ifIXoontsr3stdE9is_same_vISD_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSJ_ISN_SK_EEEEEEvE4typeEOSB_EUlSH_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS_9OperationENS_6RegionEEN4llvm13LogicalResultET_NS_10StringAttrEPT0_EUlNS_13SymbolRefAttrEE_SF_NS_9AttributeENSt3__14pairISH_NS_10WalkResultEEEEENSI_9enable_ifIXoontsr3stdE9is_same_vISD_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSJ_ISN_SK_EEEEEEvE4typeEOSB_EUlSH_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::function_ref<mlir::Operation * ()(mlir::Operation *,mlir::StringAttr)>::callback_fn<mlir::SymbolTableCollection::lookupSymbolIn(mlir::Operation *,mlir::SymbolRefAttr,llvm::SmallVectorImpl<mlir::Operation *> &)::$_0>(mlir::SymbolTableCollection **a1, mlir::Operation *a2, uint64_t a3)
{
  SymbolTable = mlir::SymbolTableCollection::getSymbolTable(*a1, a2);
  v5 = *(SymbolTable + 24);
  if (v5)
  {
    v6 = *(SymbolTable + 8);
    v7 = v5 - 1;
    v8 = (v5 - 1) & ((a3 >> 4) ^ (a3 >> 9));
    v9 = *(v6 + 16 * v8);
    if (v9 == a3)
    {
      return *(v6 + 16 * v8 + 8);
    }

    v11 = 1;
    while (v9 != -4096)
    {
      v12 = v8 + v11++;
      v8 = v12 & v7;
      v9 = *(v6 + 16 * v8);
      if (v9 == a3)
      {
        return *(v6 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::grow(uint64_t a1, int a2)
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
    v11 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::moveFromOldBuckets(a1, v4, &v11[v4], v10);

    llvm::deallocate_buffer(v4, v11);
  }

  *(a1 + 8) = 0;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (v12 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v13)
    {
      v14 = v13 + 1;
      v15 = (v13 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v16 = &result[2 * v15];
      v17 = result + 2;
      v18 = v15;
      do
      {
        *(v17 - 2) = -4096;
        *v17 = -4096;
        v17 += 4;
        v18 -= 2;
      }

      while (v18);
      if (v14 == v15)
      {
        return result;
      }
    }

    else
    {
      v16 = result;
    }

    v19 = &result[2 * v12];
    do
    {
      *v16 = -4096;
      v16 += 2;
    }

    while (v16 != v19);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2;
  *(result + 8) = 0;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = *result;
    v7 = (v5 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v7)
    {
      v8 = v7 + 1;
      v9 = (v7 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v10 = &v6[2 * v9];
      v11 = v6 + 2;
      v12 = v9;
      do
      {
        *(v11 - 2) = -4096;
        *v11 = -4096;
        v11 += 4;
        v12 -= 2;
      }

      while (v12);
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = *result;
    }

    v13 = &v6[2 * v5];
    do
    {
      *v10 = -4096;
      v10 += 2;
    }

    while (v10 != v13);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = *(result + 16) - 1;
        v16 = v15 & ((v14 >> 4) ^ (v14 >> 9));
        v17 = (*result + 16 * v16);
        v18 = *v17;
        if (v14 != *v17)
        {
          v21 = 0;
          v22 = 1;
          while (v18 != -4096)
          {
            if (v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v18 == -8192;
            }

            if (v23)
            {
              v21 = v17;
            }

            v24 = v16 + v22++;
            v16 = v24 & v15;
            v17 = (*result + 16 * (v24 & v15));
            v18 = *v17;
            if (v14 == *v17)
            {
              goto LABEL_15;
            }
          }

          if (v21)
          {
            v17 = v21;
          }
        }

LABEL_15:
        v19 = v4[1];
        v4[1] = 0;
        *v17 = v14;
        v17[1] = v19;
        ++*(result + 8);
        v20 = v4[1];
        v4[1] = 0;
        if (v20)
        {
          llvm::deallocate_buffer(*(v20 + 8), (16 * *(v20 + 24)));
        }
      }

      v4 += 2;
    }

    while (v4 != a3);
  }

  return result;
}